package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.ppb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhi extends zzgp implements zzhs {
    private static final zzhi zzb;
    private zzgu zzd = ppb.f;

    static {
        zzhi zzhiVar = new zzhi();
        zzb = zzhiVar;
        zzgp.c(zzhi.class, zzhiVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzjf.class});
        }
        if (i2 == 3) {
            return new zzhi();
        }
        if (i2 == 4) {
            return new zzhg(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
