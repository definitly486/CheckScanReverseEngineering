package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.r1c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzld extends zzgp implements zzhs {
    private static final zzld zzb;
    private int zzd;
    private int zze;

    static {
        zzld zzldVar = new zzld();
        zzb = zzldVar;
        zzgp.c(zzld.class, zzldVar);
    }

    public static /* synthetic */ void l(zzld zzldVar, int i) {
        zzldVar.zze = i - 1;
        zzldVar.zzd |= 1;
    }

    public static zzla zza() {
        return (zzla) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", r1c.a});
        }
        if (i2 == 3) {
            return new zzld();
        }
        if (i2 == 4) {
            return new zzla(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
