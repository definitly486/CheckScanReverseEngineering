package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;

/* JADX INFO: loaded from: classes5.dex */
public final class Kh extends C0989i5 {
    public final String w;
    public final S6 x;

    public Kh(Context context, C0808b5 c0808b5, A4 a4, S6 s6, C1341vm c1341vm, AbstractC0937g5 abstractC0937g5, E9 e9) {
        this(context, c0808b5, new C1113n0(), new TimePassedChecker(), new C1118n5(context, c0808b5, a4, abstractC0937g5, c1341vm, new Fh(s6), Fa.k().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), Fa.k().l(), e9), s6, a4);
    }

    @Override // io.appmetrica.analytics.impl.C0989i5, io.appmetrica.analytics.impl.Za, io.appmetrica.analytics.impl.Sa
    public final synchronized void a(A4 a4) {
        super.a(a4);
        this.x.a(this.w, a4.i);
    }

    public Kh(Context context, C0808b5 c0808b5, C1113n0 c1113n0, TimePassedChecker timePassedChecker, C1118n5 c1118n5, S6 s6, A4 a4) {
        super(context, c0808b5, c1113n0, timePassedChecker, c1118n5, a4);
        this.w = c0808b5.b();
        this.x = s6;
    }
}
