package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzed extends zzgp implements zzhs {
    private static final zzed zzb;
    private int zzd;
    private String zze = "";

    static {
        zzed zzedVar = new zzed();
        zzb = zzedVar;
        zzgp.c(zzed.class, zzedVar);
    }

    public static zzed zzb(byte[] bArr) {
        return (zzed) zzgp.j(zzb, bArr);
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
            return new zzed();
        }
        if (i2 == 4) {
            return new zzeb(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final String zzc() {
        return this.zze;
    }
}
