package com.google.android.gms.internal.mlkit_vision_barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqb {
    public Long a;
    public Long b;
    public Long c;
    public Long d;
    public Long e;
    public Long f;

    public final zzqb zza(Long l) {
        this.c = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzqb zzb(Long l) {
        this.d = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzqb zzc(Long l) {
        this.a = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzqb zzd(Long l) {
        this.e = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzqb zze(Long l) {
        this.b = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzqb zzf(Long l) {
        this.f = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzqd zzg() {
        return new zzqd(this);
    }
}
