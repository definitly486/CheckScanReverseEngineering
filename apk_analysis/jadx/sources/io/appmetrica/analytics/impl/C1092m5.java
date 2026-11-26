package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1092m5 {
    public final Context a;
    public final C0808b5 b;
    public final Ok c = Fa.k().B();

    public C1092m5(Context context, C0808b5 c0808b5) {
        this.a = context;
        this.b = c0808b5;
    }

    public final C1024jf a() {
        return new C1024jf(this.c.b(this.a, this.b));
    }
}
