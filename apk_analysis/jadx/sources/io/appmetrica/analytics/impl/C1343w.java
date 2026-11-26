package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1343w implements InterfaceC1368x {
    public final Context a;

    public C1343w(Context context) {
        this.a = context;
    }

    public final String a() {
        C1169p4 c1169p4L = C1169p4.l();
        Context context = this.a;
        Z9 z9 = c1169p4L.u;
        if (z9 == null) {
            synchronized (c1169p4L) {
                try {
                    z9 = c1169p4L.u;
                    if (z9 == null) {
                        z9 = new Z9(context);
                        c1169p4L.u = z9;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Bundle applicationMetaData = z9.d.getApplicationMetaData(z9.a);
        if (applicationMetaData != null) {
            return applicationMetaData.getString("io.appmetrica.analytics.plugin_supported_ad_revenue_sources");
        }
        return null;
    }
}
