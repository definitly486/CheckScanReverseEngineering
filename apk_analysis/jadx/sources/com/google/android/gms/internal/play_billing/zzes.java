package com.google.android.gms.internal.play_billing;

import com.android.billingclient.BuildConfig;
import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzes extends zzgp implements zzhs {
    private static final zzes zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        zzes zzesVar = new zzes();
        zzb = zzesVar;
        zzgp.c(zzes.class, zzesVar);
    }

    public static /* synthetic */ void l(zzes zzesVar, String str) {
        zzesVar.zzd |= 4;
        zzesVar.zzg = str;
    }

    public static /* synthetic */ void m(zzes zzesVar, String str) {
        str.getClass();
        zzesVar.zzd |= 16;
        zzesVar.zzi = str;
    }

    public static /* synthetic */ void n(zzes zzesVar, String str) {
        str.getClass();
        zzesVar.zzd |= 32;
        zzesVar.zzj = str;
    }

    public static /* synthetic */ void o(zzes zzesVar) {
        zzesVar.zzd |= 8;
        zzesVar.zzh = BuildConfig.VERSION_NAME;
    }

    public static /* synthetic */ void p(zzes zzesVar) {
        zzesVar.zzd |= 1;
        zzesVar.zze = 24;
    }

    public static zzer zza() {
        return (zzer) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzes();
        }
        if (i2 == 4) {
            return new zzer(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
