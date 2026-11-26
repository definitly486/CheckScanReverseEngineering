package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes5.dex */
public final class Bg implements H {
    public final String a;
    public final S b;

    public /* synthetic */ Bg(String str, S s, int i, jh2 jh2Var) {
        this(str, (i & 2) != 0 ? new S(new Cg()) : s);
    }

    @Override // io.appmetrica.analytics.impl.H
    public final AdTrackingInfoResult a(Context context, Pi pi) {
        String message;
        Throwable targetException;
        this.b.getClass();
        if (!ReflectionUtils.detectClassExists("io.appmetrica.analytics.identifiers.internal.AdvIdentifiersProvider")) {
            return new AdTrackingInfoResult(null, IdentifierStatus.IDENTIFIER_PROVIDER_UNAVAILABLE, "Module io.appmetrica.analytics:analytics-identifiers does not exist");
        }
        Xn xn = (Xn) pi;
        xn.c = 0;
        AdTrackingInfoResult adTrackingInfoResult = null;
        while (xn.b()) {
            try {
                AdTrackingInfoResult adTrackingInfoResultA = this.b.a(context, this.a);
                if (adTrackingInfoResultA != null) {
                    return adTrackingInfoResultA;
                }
                return new AdTrackingInfoResult(null, IdentifierStatus.IDENTIFIER_PROVIDER_UNAVAILABLE, "provider " + this.a + " is not available");
            } catch (Throwable th) {
                InvocationTargetException invocationTargetException = th instanceof InvocationTargetException ? th : null;
                if (invocationTargetException == null || (targetException = invocationTargetException.getTargetException()) == null || (message = targetException.getMessage()) == null) {
                    message = th.getMessage();
                }
                adTrackingInfoResult = new AdTrackingInfoResult(null, IdentifierStatus.UNKNOWN, defpackage.kh.c(new StringBuilder("exception while fetching "), this.a, " adv_id: ", message));
                try {
                    Thread.sleep(((Xn) pi).b);
                } catch (InterruptedException unused) {
                }
            }
        }
        return adTrackingInfoResult == null ? new AdTrackingInfoResult() : adTrackingInfoResult;
    }

    public Bg(String str, S s) {
        this.a = str;
        this.b = s;
    }

    @Override // io.appmetrica.analytics.impl.H
    public final AdTrackingInfoResult a(Context context) {
        return a(context, new C1049ke());
    }
}
