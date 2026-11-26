package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

/* JADX INFO: loaded from: classes5.dex */
public final class Dc extends C0989i5 {
    public final S6 w;

    public Dc(Context context, C1341vm c1341vm, C0808b5 c0808b5, A4 a4, S6 s6, AbstractC0937g5 abstractC0937g5) {
        this(context, c0808b5, a4, new C1113n0(), new TimePassedChecker(), new Fc(context, c0808b5, a4, abstractC0937g5, c1341vm, new C1431zc(s6), Fa.k().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), Fa.k().w(), Fa.k().l(), new C1280tc()), s6);
    }

    @Override // io.appmetrica.analytics.impl.C0989i5, io.appmetrica.analytics.impl.Za, io.appmetrica.analytics.impl.Sa
    public final synchronized void a(A4 a4) {
        super.a(a4);
        this.w.a(a4.i);
    }

    @Override // io.appmetrica.analytics.impl.C0989i5, io.appmetrica.analytics.impl.Sa
    public final CounterConfigurationReporterType b() {
        return CounterConfigurationReporterType.MAIN;
    }

    public Dc(Context context, C0808b5 c0808b5, A4 a4, C1113n0 c1113n0, TimePassedChecker timePassedChecker, Fc fc, S6 s6) {
        super(context, c0808b5, c1113n0, timePassedChecker, fc, a4);
        C1018j9 c1018j9K = k();
        c1018j9K.a(EnumC1176pb.EVENT_TYPE_REGULAR, new Kg(c1018j9K.a()));
        this.w = s6;
        Fa.k().x().onMainReporterCreated(new Lk(this, a4));
    }
}
