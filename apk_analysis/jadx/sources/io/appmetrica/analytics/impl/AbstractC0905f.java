package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0905f implements InterfaceC1272t4 {
    public final Context a;
    public final Eg b;

    public AbstractC0905f(Context context, Eg eg) {
        this.a = context.getApplicationContext();
        this.b = eg;
        eg.a(this);
        Fa.k().n().b(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1272t4
    public final void a() {
        this.b.b(this);
        Fa.I.m().a(this);
    }

    public final Eg b() {
        return this.b;
    }

    public abstract void b(C0783a6 c0783a6, B4 b4);

    public final Context c() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1272t4
    public final void a(C0783a6 c0783a6, B4 b4) {
        b(c0783a6, b4);
    }
}
