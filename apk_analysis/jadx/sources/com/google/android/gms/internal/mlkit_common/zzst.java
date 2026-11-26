package com.google.android.gms.internal.mlkit_common;

import android.os.SystemClock;
import com.google.android.gms.common.internal.GmsLogger;
import defpackage.sc5;
import defpackage.xt7;
import defpackage.z17;

/* JADX INFO: loaded from: classes4.dex */
public final class zzst {
    public static final GmsLogger a = new GmsLogger("RemoteModelUtils", "");

    public static zznc zza(z17 z17Var, xt7 xt7Var, zzsj zzsjVar) {
        zzne zzneVar;
        long jElapsedRealtime;
        sc5 sc5VarZzb = zzsjVar.zzb();
        z17Var.getClass();
        zzni zzniVar = new zzni();
        zznd zzndVar = new zznd();
        zzndVar.zzc((String) z17.a.get(null));
        zzndVar.zzd(zznf.CLOUD);
        zzndVar.zza(zzu.zzb(null));
        int iOrdinal = sc5VarZzb.ordinal();
        if (iOrdinal == 2) {
            zzneVar = zzne.BASE_TRANSLATE;
        } else if (iOrdinal != 4) {
            zzneVar = iOrdinal != 5 ? zzne.TYPE_UNKNOWN : zzne.BASE_DIGITAL_INK;
        } else {
            zzneVar = zzne.CUSTOM;
        }
        zzndVar.zzb(zzneVar);
        zzniVar.zzb(zzndVar.zzg());
        zznl zznlVarZzc = zzniVar.zzc();
        zzmz zzmzVar = new zzmz();
        zzmzVar.zzd(zzsjVar.zzc());
        zzmzVar.zzc(zzsjVar.zzd());
        zzmzVar.zzb(Long.valueOf(zzsjVar.zza()));
        zzmzVar.zzf(zznlVarZzc);
        if (zzsjVar.zzg()) {
            long jB = xt7Var.b();
            if (jB == 0) {
                a.w("RemoteModelUtils", "Model downloaded without its beginning time recorded.");
            } else {
                synchronized (xt7Var) {
                    jElapsedRealtime = xt7Var.a.getSharedPreferences("com.google.mlkit.internal", 0).getLong("model_first_use_time_".concat(z17.a()), 0L);
                }
                if (jElapsedRealtime == 0) {
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    synchronized (xt7Var) {
                        xt7Var.a.getSharedPreferences("com.google.mlkit.internal", 0).edit().putLong("model_first_use_time_".concat(z17.a()), jElapsedRealtime).apply();
                    }
                }
                zzmzVar.zzg(Long.valueOf(jElapsedRealtime - jB));
            }
        }
        if (zzsjVar.zzf()) {
            long jB2 = xt7Var.b();
            if (jB2 == 0) {
                a.w("RemoteModelUtils", "Model downloaded without its beginning time recorded.");
            } else {
                zzmzVar.zze(Long.valueOf(SystemClock.elapsedRealtime() - jB2));
            }
        }
        return zzmzVar.zzi();
    }
}
