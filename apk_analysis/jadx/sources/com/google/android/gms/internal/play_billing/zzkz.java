package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.ppb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkz extends zzgp implements zzhs {
    private static final zzkz zzb;
    private int zzd;
    private int zzf;
    private zzgu zze = ppb.f;
    private String zzg = "";

    static {
        zzkz zzkzVar = new zzkz();
        zzb = zzkzVar;
        zzgp.c(zzkz.class, zzkzVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002င\u0000\u0003ဈ\u0001", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzkz();
        }
        if (i2 == 4) {
            return new zzkx(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
