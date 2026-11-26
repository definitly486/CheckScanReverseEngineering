package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import defpackage.j59;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.identifiers.internal.AdvIdentifiersProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class S {
    public final Cg a;

    public S(Cg cg) {
        this.a = cg;
    }

    public final AdTrackingInfoResult a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("io.appmetrica.analytics.identifiers.extra.PROVIDER", str);
        j59 j59Var = j59.a;
        int i = AdvIdentifiersProvider.a;
        Object[] objArr = {context, bundle};
        AdTrackingInfo adTrackingInfo = null;
        Bundle bundle2 = (Bundle) AdvIdentifiersProvider.class.getMethod("requestIdentifiers", Context.class, Bundle.class).invoke(null, objArr);
        if (bundle2 == null) {
            return null;
        }
        this.a.getClass();
        Bundle bundle3 = bundle2.getBundle("io.appmetrica.analytics.identifiers.extra.TRACKING_INFO");
        if (bundle3 != null) {
            Object obj = G5.a.get(bundle3.getString("io.appmetrica.analytics.identifiers.extra.PROVIDER"));
            if (obj == null) {
                defpackage.h8.f(bundle3.getString("io.appmetrica.analytics.identifiers.extra.PROVIDER"), "Provider ", " is invalid");
                return null;
            }
            adTrackingInfo = new AdTrackingInfo((AdTrackingInfo.Provider) obj, bundle3.getString("io.appmetrica.analytics.identifiers.extra.ID"), bundle3.containsKey("io.appmetrica.analytics.identifiers.extra.LIMITED") ? Boolean.valueOf(bundle3.getBoolean("io.appmetrica.analytics.identifiers.extra.LIMITED")) : null);
        }
        return new AdTrackingInfoResult(adTrackingInfo, IdentifierStatus.Companion.from(bundle2.getString("io.appmetrica.analytics.identifiers.extra.STATUS")), bundle2.getString("io.appmetrica.analytics.identifiers.extra.ERROR_MESSAGE"));
    }
}
