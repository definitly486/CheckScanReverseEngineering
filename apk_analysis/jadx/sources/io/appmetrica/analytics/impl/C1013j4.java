package io.appmetrica.analytics.impl;

import android.util.SparseArray;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1013j4 extends Wc {
    public final Cif a;

    public C1013j4(Cif cif) {
        this.a = cif;
    }

    @Override // io.appmetrica.analytics.impl.Wc
    public final void a(int i) {
        this.a.c(i);
    }

    @Override // io.appmetrica.analytics.impl.Wc
    public final int b() {
        return (int) this.a.a(-1L);
    }

    @Override // io.appmetrica.analytics.impl.Wc
    public final SparseArray<Vc> c() {
        return new SparseArray<>();
    }
}
