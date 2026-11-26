package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzev extends zzgp implements zzhs {
    private static final zzev zzb;
    private int zzd;
    private String zze = "";

    static {
        zzev zzevVar = new zzev();
        zzb = zzevVar;
        zzgp.c(zzev.class, zzevVar);
    }

    public static /* synthetic */ void l(zzev zzevVar, String str) {
        zzevVar.zzd |= 1;
        zzevVar.zze = str;
    }

    public static zzeu zza() {
        return (zzeu) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzev();
        }
        if (i2 == 4) {
            return new zzeu(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
