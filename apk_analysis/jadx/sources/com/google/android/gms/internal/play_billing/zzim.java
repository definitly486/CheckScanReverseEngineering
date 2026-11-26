package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.vrb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzim extends zzgp implements zzhs {
    private static final zzim zzb;
    private zzhm zzd = zzhm.zza();

    static {
        zzim zzimVar = new zzim();
        zzb = zzimVar;
        zzgp.c(zzim.class, zzimVar);
    }

    public static /* synthetic */ zzhm l(zzim zzimVar) {
        if (!zzimVar.zzd.zze()) {
            zzimVar.zzd = zzimVar.zzd.zzb();
        }
        return zzimVar.zzd;
    }

    public static zzij zza() {
        return (zzij) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"zzd", vrb.a});
        }
        if (i2 == 3) {
            return new zzim();
        }
        if (i2 == 4) {
            return new zzij(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
