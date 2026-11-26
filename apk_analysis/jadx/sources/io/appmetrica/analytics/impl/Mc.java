package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.internal.CounterConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public final class Mc extends W2 {
    public Mc(Context context, Pf pf, ReporterConfig reporterConfig, Ei ei, Z9 z9) {
        this(context, ei, new Mh(pf, new CounterConfiguration(reporterConfig), new O8(new Kl(LoggerStorage.getOrCreatePublicLogger(reporterConfig.apiKey), "Crash Environment")), reporterConfig.userProfileID), z9, C1169p4.l().n(), new Cdo(), new Hg(), new I6(), new C0932g0(), new Ve(z9));
    }

    @Override // io.appmetrica.analytics.impl.W2
    public final String j() {
        return "[ManualReporter]";
    }

    public Mc(Context context, Ei ei, Mh mh, Z9 z9, E6 e6, Cdo cdo, Hg hg, I6 i6, C0932g0 c0932g0, Ve ve) {
        super(context, ei, mh, z9, e6, cdo, hg, i6, c0932g0, ve);
        C1169p4.l().getClass();
    }
}
