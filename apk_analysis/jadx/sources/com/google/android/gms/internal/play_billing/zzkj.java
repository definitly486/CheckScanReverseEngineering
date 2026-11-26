package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkj extends zzgp implements zzhs {
    private static final zzkj zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    static {
        zzkj zzkjVar = new zzkj();
        zzb = zzkjVar;
        zzgp.c(zzkj.class, zzkjVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzkj();
        }
        if (i2 == 4) {
            return new zzkh(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
