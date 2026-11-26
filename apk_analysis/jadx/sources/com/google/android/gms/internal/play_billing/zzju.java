package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.rwb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzju extends zzgp implements zzhs {
    private static final zzju zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private int zzi;
    private int zzj;
    private String zzf = "";
    private String zzh = "";

    static {
        zzju zzjuVar = new zzju();
        zzb = zzjuVar;
        zzgp.c(zzju.class, zzjuVar);
    }

    public static /* synthetic */ void l(zzju zzjuVar, int i) {
        zzjuVar.zzd |= 1;
        zzjuVar.zze = i;
    }

    public static /* synthetic */ void m(zzju zzjuVar, String str) {
        zzjuVar.zzd |= 8;
        zzjuVar.zzh = str;
    }

    public static /* synthetic */ void n(zzju zzjuVar, String str) {
        str.getClass();
        zzjuVar.zzd |= 2;
        zzjuVar.zzf = str;
    }

    public static /* synthetic */ void o(zzju zzjuVar, int i) {
        zzjuVar.zzd |= 32;
        zzjuVar.zzj = i;
    }

    public static /* synthetic */ void p(zzju zzjuVar, int i) {
        zzjuVar.zzd |= 16;
        zzjuVar.zzi = i;
    }

    public static /* synthetic */ void q(zzju zzjuVar, zzjs zzjsVar) {
        zzjuVar.zzg = zzjsVar.zza();
        zzjuVar.zzd |= 4;
    }

    public static zzjq zza() {
        return (zzjq) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0006\u0000\u0001\u0001\b\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003\u0007င\u0004\bင\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", rwb.a, "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzju();
        }
        if (i2 == 4) {
            return new zzjq(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
