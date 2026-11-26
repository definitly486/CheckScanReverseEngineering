package com.google.android.gms.internal.mlkit_vision_barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqo {
    public Long a;
    public zzrb b;
    public Boolean c;
    public Boolean d;
    public Boolean e;

    public final zzqo zza(Boolean bool) {
        this.d = bool;
        return this;
    }

    public final zzqo zzb(Boolean bool) {
        this.e = bool;
        return this;
    }

    public final zzqo zzc(Long l) {
        this.a = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zzqo zzd(zzrb zzrbVar) {
        this.b = zzrbVar;
        return this;
    }

    public final zzqo zze(Boolean bool) {
        this.c = bool;
        return this;
    }

    public final zzqq zzf() {
        return new zzqq(this);
    }
}
