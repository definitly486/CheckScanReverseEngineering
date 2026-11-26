package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1388xj {
    public final String a;
    public final Context b;
    public final CounterConfigurationReporterType c;
    public final Aj d;

    public C1388xj(String str, Context context, CounterConfigurationReporterType counterConfigurationReporterType, Aj aj) {
        this.a = str;
        this.b = context;
        int i = AbstractC1363wj.a[counterConfigurationReporterType.ordinal()];
        if (i == 1) {
            this.c = CounterConfigurationReporterType.SELF_DIAGNOSTIC_MAIN;
        } else if (i != 2) {
            this.c = null;
        } else {
            this.c = CounterConfigurationReporterType.SELF_DIAGNOSTIC_MANUAL;
        }
        this.d = aj;
    }
}
