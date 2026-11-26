package io.appmetrica.analytics.impl;

import defpackage.fd7;

/* JADX INFO: loaded from: classes5.dex */
public final class Sb implements InterfaceC0828c {
    public final InterfaceC1009j0 a;
    public final Rn b = new Rn();

    public Sb(InterfaceC1009j0 interfaceC1009j0) {
        this.a = interfaceC1009j0;
    }

    public static final void a(Sb sb, Y y) {
        sb.a.a(y);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0828c
    public final void onAppNotResponding() {
        StackTraceElement[] stackTraceElementArrB;
        Rn rn = this.b;
        Thread threadA = rn.a.a();
        try {
            stackTraceElementArrB = rn.a.b();
            if (stackTraceElementArrB == null) {
                try {
                    stackTraceElementArrB = threadA.getStackTrace();
                } catch (SecurityException unused) {
                }
            }
        } catch (SecurityException unused2) {
            stackTraceElementArrB = null;
        }
        Y y = new Y((Kn) rn.b.apply(threadA, stackTraceElementArrB), rn.a(threadA, null), rn.c.a());
        ((M9) C1169p4.l().c.a()).b.post(new fd7(0, this, y));
    }
}
