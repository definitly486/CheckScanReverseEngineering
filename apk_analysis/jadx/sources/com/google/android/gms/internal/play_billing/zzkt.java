package com.google.android.gms.internal.play_billing;

import defpackage.gqb;
import defpackage.ppb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkt extends zzgp implements zzhs {
    private static final zzkt zzb;
    private int zzd;
    private zzgu zze = ppb.f;
    private String zzf = "";
    private boolean zzg;

    static {
        zzkt zzktVar = new zzkt();
        zzb = zzktVar;
        zzgp.c(zzkt.class, zzktVar);
    }

    public static /* synthetic */ void l(zzkt zzktVar, boolean z) {
        zzktVar.zzd |= 2;
        zzktVar.zzg = z;
    }

    public static zzkt zzb() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဇ\u0001", new Object[]{"zzd", "zze", zzkr.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzkt();
        }
        if (i2 == 4) {
            return new zzko(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
