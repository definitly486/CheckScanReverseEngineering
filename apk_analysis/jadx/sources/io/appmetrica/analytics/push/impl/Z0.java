package io.appmetrica.analytics.push.impl;

import android.content.Context;
import defpackage.u96;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRule;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRuleProvider;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.model.LazyPushRequestInfo;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class Z0 extends B2 {
    public static final long[] b = {1, 1, 1};
    public final Context a;

    public Z0(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.impl.B2
    public final C2 a(PushMessage pushMessage) {
        LazyPushRequestInfo lazyPushRequestInfo = pushMessage.getLazyPushRequestInfo();
        String url = lazyPushRequestInfo == null ? null : lazyPushRequestInfo.getUrl();
        if (CoreUtils.isEmpty(url)) {
            return new C2(pushMessage, PushFilter.FilterResult.show());
        }
        PushFilter.FilterResult filterResultFilter = r.a(this.a).c().a.filter(pushMessage);
        if (filterResultFilter.isSilence()) {
            throw new A2(filterResultFilter.category, filterResultFilter.details);
        }
        Context context = this.a;
        List listI = u96.i(new B0(context), new T1(), new I2(context), new C1461e1(context), new J());
        p2 p2Var = new p2();
        ArrayList<LazyPushTransformRule> arrayList = new ArrayList();
        Iterator it = listI.iterator();
        while (it.hasNext()) {
            LazyPushTransformRule rule = ((LazyPushTransformRuleProvider) it.next()).getRule(pushMessage);
            if (rule != null) {
                arrayList.add(rule);
            }
        }
        for (LazyPushTransformRule lazyPushTransformRule : arrayList) {
            Iterator<String> it2 = lazyPushTransformRule.getPatternList().iterator();
            while (it2.hasNext()) {
                p2Var.a.put(it2.next(), lazyPushTransformRule);
            }
        }
        String strA = p2Var.a(url);
        Map<String, String> headers = lazyPushRequestInfo.getHeaders();
        HashMap map = new HashMap();
        if (headers != null) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                map.put(entry.getKey(), p2Var.a(entry.getValue()));
            }
        }
        try {
            long[] retryStrategySeconds = lazyPushRequestInfo.getRetryStrategySeconds();
            if (retryStrategySeconds == null) {
                retryStrategySeconds = b;
            }
            Y0 y0A = a(strA, map, retryStrategySeconds);
            String str = y0A.a;
            if (str != null) {
                return B2.a(pushMessage, "Unknown response by backend", str);
            }
            String str2 = y0A.b;
            if (str2 != null) {
                return B2.a(pushMessage, "Filtered by backend", str2);
            }
            try {
                return new C2(pushMessage.append(y0A.c), PushFilter.FilterResult.show());
            } catch (Throwable th) {
                return B2.a(pushMessage, "Failed merge push messages", th.getMessage());
            }
        } catch (Throwable th2) {
            return Boolean.TRUE.equals(lazyPushRequestInfo.getUseCurPushAsFallback()) ? new C2(pushMessage, PushFilter.FilterResult.show()) : B2.a(pushMessage, "Backend not available", th2.getMessage());
        }
    }

    public static Y0 a(String str, HashMap map, long[] jArr) throws Throwable {
        PublicLogger.INSTANCE.info("Request lazy push from %s with retry policy %s", str, Arrays.toString(jArr));
        int i = 0;
        while (true) {
            try {
                PublicLogger.INSTANCE.info("Request #%d for %s", Integer.valueOf(i), str);
                N0 n0 = new N0(str);
                for (Map.Entry entry : map.entrySet()) {
                    n0.a.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                byte[] bArrA = n0.a();
                PublicLogger.INSTANCE.info("Response for %s: '%s'", str, new String(bArrA, Charset.forName("UTF-8")));
                return new Y0(bArrA);
            } catch (IOException e) {
                if (i < jArr.length) {
                    int i2 = i + 1;
                    try {
                        long j = jArr[i];
                        PublicLogger.INSTANCE.info("Wait %d seconds before next request for %s", Long.valueOf(j), str);
                        Thread.sleep(TimeUnit.SECONDS.toMillis(j));
                    } catch (InterruptedException e2) {
                        PublicLogger.INSTANCE.error(e2, e2.getMessage(), new Object[0]);
                        Thread.currentThread().interrupt();
                    }
                    i = i2;
                } else {
                    throw e;
                }
            }
        }
    }
}
