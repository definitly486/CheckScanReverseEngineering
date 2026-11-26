package io.appmetrica.analytics.impl;

import defpackage.fg2;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class T5 implements Runnable {
    public final List a;
    public final IHandlerExecutor b = Fa.k().w().a();
    public final WaitForActivationDelayBarrier c = Fa.k().a();

    public T5(List list) {
        this.a = list;
    }

    public static final void a(T5 t5) {
        Iterator it = t5.a.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.subscribe(10000L, this.b, new fg2(this, 5));
    }
}
