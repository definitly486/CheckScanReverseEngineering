package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class Od implements Consumer {
    public final Vg a;
    public final K0 b;
    public final Xd c;

    public Od(Vg vg, K0 k0, Xd xd) {
        this.a = vg;
        this.b = k0;
        this.c = xd;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void consume(String str) {
        Vg vg = this.a;
        K0 k0 = this.b;
        String str2 = k0.a;
        String str3 = k0.b;
        Integer numValueOf = Integer.valueOf(k0.d);
        K0 k1 = this.b;
        C0859d4 c0859d4 = new C0859d4(str2, str3, numValueOf, k1.e, k1.c);
        Xd xd = this.c;
        EnumC1176pb enumC1176pb = xd.b;
        J0 j0 = xd.a;
        String str4 = j0.c;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(j0.f.a);
        long jA = ((B6) xd.c).a(xd.a);
        Set set = I9.a;
        Bundle bundle = new Bundle();
        bundle.putString("payload_crash_id", str4);
        C0781a4 c0781a4 = new C0781a4("", "", enumC1176pb.a, orCreatePublicLogger);
        c0781a4.b(jA);
        if (str != null) {
            c0781a4.f(str);
        }
        c0781a4.m = bundle;
        c0781a4.c = xd.a.f.f;
        vg.a(c0859d4, c0781a4, new B4(new C1187pm(), new A4(), null));
    }
}
