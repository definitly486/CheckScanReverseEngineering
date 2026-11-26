package com.google.android.gms.internal.mlkit_vision_common;

/* JADX INFO: loaded from: classes4.dex */
public final class zzky {
    public String a;
    public String b;
    public String c;
    public String d;
    public zzp e;
    public String f;
    public Boolean g;
    public Boolean h;
    public Boolean i;
    public Integer j;
    public Integer k;

    public final zzky zzb(String str) {
        this.a = str;
        return this;
    }

    public final zzky zzc(String str) {
        this.b = str;
        return this;
    }

    public final zzky zzd(Integer num) {
        this.j = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzky zze(Boolean bool) {
        this.g = bool;
        return this;
    }

    public final zzky zzf(Boolean bool) {
        this.i = bool;
        return this;
    }

    public final zzky zzg(Boolean bool) {
        this.h = bool;
        return this;
    }

    public final zzky zzh(zzp zzpVar) {
        this.e = zzpVar;
        return this;
    }

    public final zzky zzi(String str) {
        this.f = str;
        return this;
    }

    public final zzky zzj(String str) {
        this.c = str;
        return this;
    }

    public final zzky zzk(Integer num) {
        this.k = num;
        return this;
    }

    public final zzky zzl(String str) {
        this.d = str;
        return this;
    }

    public final zzla zzm() {
        return new zzla(this);
    }
}
