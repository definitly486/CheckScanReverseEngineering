package com.google.android.gms.internal.mlkit_vision_barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class g<V> implements Runnable {
    public final zzdz<V> b;
    public final zzet<? extends V> c;

    public g(zzdz zzdzVar, zzet zzetVar) {
        this.b = zzdzVar;
        this.c = zzetVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b.b != this) {
            return;
        }
        zzet<? extends V> zzetVar = this.c;
        if (zzdz.g.f(this.b, this, zzdz.d(zzetVar))) {
            zzdz.f(this.b);
        }
    }
}
