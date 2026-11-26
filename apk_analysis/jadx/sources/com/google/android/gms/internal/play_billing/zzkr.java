package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.h0c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkr extends zzgp implements zzhs {
    private static final zzkr zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        zzkr zzkrVar = new zzkr();
        zzb = zzkrVar;
        zzgp.c(zzkr.class, zzkrVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", h0c.a, "zzf"});
        }
        if (i2 == 3) {
            return new zzkr();
        }
        if (i2 == 4) {
            return new zzkp(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
