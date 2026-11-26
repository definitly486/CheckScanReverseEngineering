package com.google.android.gms.internal.mlkit_vision_barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfq {
    public zzft a;
    public Integer b;
    public zzqd c;

    public final zzfq zza(Integer num) {
        this.b = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzfq zzb(zzqd zzqdVar) {
        this.c = zzqdVar;
        return this;
    }

    public final zzfq zzc(zzft zzftVar) {
        this.a = zzftVar;
        return this;
    }

    public final zzfv zze() {
        return new zzfv(this);
    }
}
