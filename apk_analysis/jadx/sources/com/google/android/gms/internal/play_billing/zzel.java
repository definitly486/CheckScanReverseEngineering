package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzel extends zzgp implements zzhs {
    private static final zzel zzb;
    private int zzd;
    private zzev zze;
    private zzev zzf;
    private int zzg;

    static {
        zzel zzelVar = new zzel();
        zzb = zzelVar;
        zzgp.c(zzel.class, zzelVar);
    }

    public static /* synthetic */ void l(zzel zzelVar, zzev zzevVar) {
        zzevVar.getClass();
        zzelVar.zze = zzevVar;
        zzelVar.zzd |= 1;
    }

    public static /* synthetic */ void m(zzel zzelVar, zzev zzevVar) {
        zzevVar.getClass();
        zzelVar.zzf = zzevVar;
        zzelVar.zzd |= 2;
    }

    public static /* synthetic */ void n(zzel zzelVar, int i) {
        zzelVar.zzg = i - 1;
        zzelVar.zzd |= 4;
    }

    public static zzek zza() {
        return (zzek) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", zzey.zza()});
        }
        if (i2 == 3) {
            return new zzel();
        }
        if (i2 == 4) {
            return new zzek(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
