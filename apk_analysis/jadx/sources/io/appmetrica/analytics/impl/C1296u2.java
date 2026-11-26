package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.u2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1296u2 {
    public final Ta a(Context context, AppMetricaConfig appMetricaConfig, InterfaceC0866db interfaceC0866db) {
        return new Ih(new C1306uc(interfaceC0866db, appMetricaConfig), new defpackage.n7(9), appMetricaConfig.crashTransformer, new Z9(context));
    }

    public static final boolean a(Throwable th) {
        return true;
    }
}
