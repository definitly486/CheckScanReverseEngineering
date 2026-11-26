package io.appmetrica.analytics.impl;

import android.location.Location;

/* JADX INFO: loaded from: classes5.dex */
public final class S0 implements Runnable {
    public final /* synthetic */ Location a;
    public final /* synthetic */ C1370x1 b;

    public S0(C1370x1 c1370x1, Location location) {
        this.b = c1370x1;
        this.a = location;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0 c0 = this.b.a;
        Location location = this.a;
        c0.getClass();
        B0.c().a(location);
    }
}
