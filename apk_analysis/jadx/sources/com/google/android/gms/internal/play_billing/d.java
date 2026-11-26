package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public final class d<V> implements Runnable {
    public final zzcu<V> b;
    public final zzdk<? extends V> c;

    public d(zzcu zzcuVar, zzdk zzdkVar) {
        this.b = zzcuVar;
        this.c = zzdkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b.b != this) {
            return;
        }
        zzdk<? extends V> zzdkVar = this.c;
        if (m.h.f(this.b, this, zzcu.g(zzdkVar))) {
            zzcu.i(this.b);
        }
    }
}
