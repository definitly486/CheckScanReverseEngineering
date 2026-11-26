package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.yg4;
import defpackage.zg4;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.impl.InterfaceC1410yg;
import io.appmetrica.analytics.impl.L9;

/* JADX INFO: loaded from: classes5.dex */
public final class L9 implements InterfaceC1310ug {
    public final InterfaceC1310ug a;
    public final ICommonExecutor b;

    public L9(InterfaceC1310ug interfaceC1310ug, ICommonExecutor iCommonExecutor) {
        this.a = interfaceC1310ug;
        this.b = iCommonExecutor;
    }

    public static final void a(Thread thread, InterfaceC1207qg interfaceC1207qg, L9 l9, InterfaceC1410yg interfaceC1410yg) {
        if (aa4.e(Thread.currentThread(), thread)) {
            interfaceC1207qg.a(interfaceC1410yg);
        } else {
            l9.b.execute(new zg4(0, interfaceC1207qg, interfaceC1410yg));
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final void a(InterfaceC1207qg interfaceC1207qg) {
        this.b.execute(new yg4(0, this, interfaceC1207qg));
    }

    public static final void a(final L9 l9, final InterfaceC1207qg interfaceC1207qg) {
        final Thread threadCurrentThread = Thread.currentThread();
        l9.a.a(new InterfaceC1207qg() { // from class: xg4
            @Override // io.appmetrica.analytics.impl.InterfaceC1207qg
            public final void a(InterfaceC1410yg interfaceC1410yg) {
                L9.a(threadCurrentThread, interfaceC1207qg, l9, interfaceC1410yg);
            }
        });
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final String a() {
        return this.a.a();
    }

    public static final void a(InterfaceC1207qg interfaceC1207qg, InterfaceC1410yg interfaceC1410yg) {
        interfaceC1207qg.a(interfaceC1410yg);
    }
}
