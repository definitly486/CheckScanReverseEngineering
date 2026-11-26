package com.google.android.gms.internal.mlkit_vision_barcode;

import defpackage.fhc;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzxm {
    public static final zzxm zza;

    static {
        zzm().zzm();
        zzxl zzxlVarZzm = zzm();
        zzxlVarZzm.zzi(false);
        zza = zzxlVarZzm.zzm();
    }

    public static zzxl zzm() {
        fhc fhcVar = new fhc();
        fhcVar.a = 10;
        fhcVar.m = (short) (fhcVar.m | 1);
        fhcVar.zze(5);
        fhcVar.zzf(0.25f);
        fhcVar.zzd(0.8f);
        fhcVar.zzi(true);
        fhcVar.zzc(0.5f);
        fhcVar.zzb(0.8f);
        fhcVar.zzk(1500L);
        fhcVar.zzh(3000L);
        fhcVar.zza(true);
        fhcVar.zzj(0.1f);
        fhcVar.zzl(0.05f);
        return fhcVar;
    }

    public abstract float a();

    public abstract float b();

    public abstract float c();

    public abstract float d();

    public abstract float e();

    public abstract float f();

    public abstract int g();

    public abstract int h();

    public abstract long i();

    public abstract long j();

    public abstract boolean k();

    public abstract boolean l();
}
