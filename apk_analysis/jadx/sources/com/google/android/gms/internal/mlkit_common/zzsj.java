package com.google.android.gms.internal.mlkit_common;

import defpackage.kdc;
import defpackage.sc5;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzsj {
    public static zzsi zzh() {
        kdc kdcVar = new kdc();
        kdcVar.b = "NA";
        kdcVar.zzf(false);
        kdcVar.zze(false);
        kdcVar.zzd(sc5.UNKNOWN);
        kdcVar.zzb(zzmu.NO_ERROR);
        kdcVar.zza(zzna.UNKNOWN_STATUS);
        kdcVar.zzc(0);
        return kdcVar;
    }

    public abstract int zza();

    public abstract sc5 zzb();

    public abstract zzmu zzc();

    public abstract zzna zzd();

    public abstract String zze();

    public abstract boolean zzf();

    public abstract boolean zzg();
}
