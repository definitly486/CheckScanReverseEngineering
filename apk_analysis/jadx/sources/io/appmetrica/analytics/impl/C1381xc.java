package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.impl.C1381xc;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1381xc {
    public int a = 5;
    public final C0879e b;

    public C1381xc(InterfaceC1009j0 interfaceC1009j0) {
        this.b = new C0879e(new Sb(interfaceC1009j0));
    }

    public static final void b(AnrListener anrListener) {
        anrListener.onAppNotResponding();
    }

    public final void a(final AnrListener anrListener) {
        C0879e c0879e = this.b;
        c0879e.a.add(new InterfaceC0828c() { // from class: lha
            @Override // io.appmetrica.analytics.impl.InterfaceC0828c
            public final void onAppNotResponding() {
                C1381xc.b(anrListener);
            }
        });
    }
}
