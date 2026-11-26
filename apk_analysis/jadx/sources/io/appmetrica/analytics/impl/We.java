package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class We implements Ic, ActivationBarrierCallback {
    public final D9 a;
    public final Hc b;
    public final Hc c;

    public We(D9 d9, Tg tg, A4 a4, C1024jf c1024jf) {
        this.a = d9;
        Hc hc = new Hc(tg, a4, c1024jf);
        this.b = hc;
        this.c = hc;
        if (hc.b()) {
            return;
        }
        Fa.k().a().subscribe(TimeUnit.SECONDS.toMillis(U7.a.longValue()), Fa.k().w().f(), this);
    }

    @Override // io.appmetrica.analytics.impl.Ic
    public final R8 a() {
        return this.c;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback
    public final void onWaitFinished() {
        this.b.a();
        ((C1324v5) this.a.a()).e();
    }
}
