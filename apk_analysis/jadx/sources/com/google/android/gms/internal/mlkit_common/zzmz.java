package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmz {
    public zznl a;
    public Long b;
    public zzmu c;
    public Long d;
    public zzna e;
    public Long f;

    public final zzmz zzb(Long l) {
        this.f = l;
        return this;
    }

    public final zzmz zzc(zzna zznaVar) {
        this.e = zznaVar;
        return this;
    }

    public final zzmz zzd(zzmu zzmuVar) {
        this.c = zzmuVar;
        return this;
    }

    public final zzmz zze(Long l) {
        this.d = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzmz zzf(zznl zznlVar) {
        this.a = zznlVar;
        return this;
    }

    public final zzmz zzg(Long l) {
        this.b = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zznc zzi() {
        return new zznc(this);
    }
}
