package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class De implements InterfaceC0889e9, Ee {
    public final Y6 a;
    public final AtomicLong b;

    public De(Y6 y6) {
        this.a = y6;
        this.b = new AtomicLong(y6.a());
        y6.a(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0889e9
    public final void a() {
        this.b.set(this.a.a());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0889e9
    public final void b(List<Integer> list) {
        this.b.addAndGet(-list.size());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0889e9
    public final void a(List<Integer> list) {
        this.b.addAndGet(list.size());
    }

    public final long b() {
        return this.b.get();
    }
}
