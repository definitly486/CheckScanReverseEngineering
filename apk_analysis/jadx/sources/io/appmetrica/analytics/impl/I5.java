package io.appmetrica.analytics.impl;

import defpackage.u96;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class I5 implements R8, InterfaceC0889e9 {
    public final Y6 a;
    public final AtomicLong b;

    public I5(Y6 y6) {
        this.a = y6;
        this.b = new AtomicLong(y6.a(AbstractC1137no.a()));
        y6.a(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0889e9
    public final void a(List<Integer> list) {
        int i = 0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (AbstractC1137no.a.contains(Integer.valueOf(((Number) it.next()).intValue())) && (i = i + 1) < 0) {
                    u96.n();
                    throw null;
                }
            }
        }
        this.b.addAndGet(i);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0889e9
    public final void b(List<Integer> list) {
        int i = 0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (AbstractC1137no.a.contains(Integer.valueOf(((Number) it.next()).intValue())) && (i = i + 1) < 0) {
                    u96.n();
                    throw null;
                }
            }
        }
        this.b.addAndGet(-i);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0889e9
    public final void a() {
        this.b.set(this.a.a(AbstractC1137no.a));
    }

    @Override // io.appmetrica.analytics.impl.R8
    public final boolean b() {
        return this.b.get() > 0;
    }
}
