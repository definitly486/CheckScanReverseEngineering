package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.networktasks.internal.NetworkResponseHandler;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.hm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0980hm implements NetworkResponseHandler {
    public final C1161om a;
    public final C0987i3 b;

    public C0980hm() {
        this(new C1161om(), new C0987i3());
    }

    @Override // io.appmetrica.analytics.networktasks.internal.NetworkResponseHandler
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1290tm handle(ResponseDataHolder responseDataHolder) {
        String strOptString;
        String strOptString2;
        if (200 == responseDataHolder.getResponseCode()) {
            byte[] responseData = responseDataHolder.getResponseData();
            Map<String, List<String>> responseHeaders = responseDataHolder.getResponseHeaders();
            List list = responseHeaders != null ? (List) CollectionUtils.getFromMapIgnoreCase(responseHeaders, "Content-Encoding") : null;
            if (!xo.a((Collection) list) && "encrypted".equals(list.get(0))) {
                responseData = this.b.a(responseDataHolder.getResponseData());
            }
            if (responseData != null) {
                C1161om c1161om = this.a;
                c1161om.getClass();
                C1290tm c1290tm = new C1290tm();
                try {
                    c1161om.h.getClass();
                    C1279tb c1279tb = new C1279tb(new String(responseData, "UTF-8"));
                    JSONObject jSONObjectOptJSONObject = c1279tb.optJSONObject("device_id");
                    if (jSONObjectOptJSONObject != null) {
                        strOptString = jSONObjectOptJSONObject.optString("hash");
                        strOptString2 = jSONObjectOptJSONObject.optString("value");
                    } else {
                        strOptString = "";
                        strOptString2 = "";
                    }
                    c1290tm.h = strOptString2;
                    c1290tm.i = strOptString;
                    c1161om.a(c1290tm, c1279tb);
                    c1290tm.a = TextUtils.isEmpty(c1290tm.i) ? 1 : 2;
                } catch (Throwable unused) {
                    c1290tm = new C1290tm();
                    c1290tm.a = 1;
                }
                if (2 == c1290tm.a) {
                    return c1290tm;
                }
            }
        }
        return null;
    }

    public C0980hm(C1161om c1161om, C0987i3 c0987i3) {
        this.a = c1161om;
        this.b = c0987i3;
    }
}
