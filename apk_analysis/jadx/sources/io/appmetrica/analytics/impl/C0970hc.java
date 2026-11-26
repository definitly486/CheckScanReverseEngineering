package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.nl3;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.impl.C0970hc;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.hc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0970hc implements InterfaceC0892ec, ToggleObserver {
    public final ArrayList a = new ArrayList();
    public final IHandlerExecutor b = Fa.k().w().c();
    public Yn c;
    public boolean d;

    public static final void a(C0970hc c0970hc, boolean z) {
        if (c0970hc.d != z) {
            c0970hc.d = z;
            nl3 nl3Var = z ? C0918fc.a : C0944gc.a;
            Iterator it = c0970hc.a.iterator();
            while (it.hasNext()) {
                nl3Var.invoke((LocationControllerObserver) it.next());
            }
        }
    }

    public final void b(Object obj) {
        Yn yn = this.c;
        if (yn != null) {
            yn.b.b(obj);
        } else {
            aa4.j("togglesHolder");
            throw null;
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.ToggleObserver
    public final void onStateChanged(final boolean z) {
        this.b.execute(new Runnable() { // from class: yw9
            @Override // java.lang.Runnable
            public final void run() {
                C0970hc.a(this.b, z);
            }
        });
    }

    public final void a(final LocationControllerObserver locationControllerObserver, final boolean z) {
        this.b.execute(new Runnable() { // from class: zw9
            @Override // java.lang.Runnable
            public final void run() {
                C0970hc.a(this.b, locationControllerObserver, z);
            }
        });
    }

    public static final void a(C0970hc c0970hc, LocationControllerObserver locationControllerObserver, boolean z) {
        c0970hc.a.add(locationControllerObserver);
        if (z) {
            if (c0970hc.d) {
                locationControllerObserver.startLocationTracking();
            } else {
                locationControllerObserver.stopLocationTracking();
            }
        }
    }

    public final void a(Toggle toggle) {
        Yn yn = new Yn(toggle);
        this.c = yn;
        yn.c.registerObserver(this, true);
    }

    public final void a(Object obj) {
        Yn yn = this.c;
        if (yn != null) {
            yn.b.a(obj);
        } else {
            aa4.j("togglesHolder");
            throw null;
        }
    }

    public final void a(boolean z) {
        Yn yn = this.c;
        if (yn != null) {
            yn.a.a(z);
        } else {
            aa4.j("togglesHolder");
            throw null;
        }
    }
}
