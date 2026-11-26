package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.jk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1029jk extends C0989i5 {
    public C1029jk(Context context, C1341vm c1341vm, C0808b5 c0808b5, A4 a4, InterfaceC1156oh interfaceC1156oh, AbstractC0937g5 abstractC0937g5, C0782a5 c0782a5) {
        this(context, c0808b5, new C1113n0(), new TimePassedChecker(), new C1118n5(context, c0808b5, a4, abstractC0937g5, c1341vm, interfaceC1156oh, Fa.k().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), Fa.k().l(), c0782a5), a4);
    }

    @Override // io.appmetrica.analytics.impl.C0989i5, io.appmetrica.analytics.impl.Sa
    public final CounterConfigurationReporterType b() {
        return CounterConfigurationReporterType.SELF_SDK;
    }

    public C1029jk(Context context, C0808b5 c0808b5, C1113n0 c1113n0, TimePassedChecker timePassedChecker, C1118n5 c1118n5, A4 a4) {
        super(context, c0808b5, c1113n0, timePassedChecker, c1118n5, a4);
    }
}
