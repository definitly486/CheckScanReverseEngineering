package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.uzb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkn extends zzgp implements zzhs {
    private static final zzkn zzb;
    private int zzd;
    private int zze;

    static {
        zzkn zzknVar = new zzkn();
        zzb = zzknVar;
        zzgp.c(zzkn.class, zzknVar);
    }

    public static /* synthetic */ void l(zzkn zzknVar, int i) {
        zzknVar.zze = i - 1;
        zzknVar.zzd |= 1;
    }

    public static zzkk zza() {
        return (zzkk) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", uzb.a});
        }
        if (i2 == 3) {
            return new zzkn();
        }
        if (i2 == 4) {
            return new zzkk(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
