package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgs {
    public final int a;
    public final boolean b;
    public final boolean c;
    public final /* synthetic */ zzgu d;

    public zzgs(zzgu zzguVar, int i, boolean z, boolean z2) {
        this.d = zzguVar;
        this.a = i;
        this.b = z;
        this.c = z2;
    }

    public final void zza(String str) {
        this.d.e(this.a, this.b, this.c, str, null, null, null);
    }

    public final void zzb(String str, Object obj) {
        this.d.e(this.a, this.b, this.c, str, obj, null, null);
    }

    public final void zzc(String str, Object obj, Object obj2) {
        this.d.e(this.a, this.b, this.c, str, obj, obj2, null);
    }

    public final void zzd(String str, Object obj, Object obj2, Object obj3) {
        this.d.e(this.a, this.b, this.c, str, obj, obj2, obj3);
    }
}
