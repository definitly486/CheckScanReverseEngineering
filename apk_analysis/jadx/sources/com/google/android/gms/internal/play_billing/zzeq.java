package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzeq extends zzgp implements zzhs {
    private static final zzeq zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        zzeq zzeqVar = new zzeq();
        zzb = zzeqVar;
        zzgp.c(zzeq.class, zzeqVar);
    }

    public static zzeq zzc(byte[] bArr) {
        return (zzeq) zzgp.j(zzb, bArr);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzeq();
        }
        if (i2 == 4) {
            return new zzep(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int zza() {
        return this.zze;
    }

    public final String zze() {
        return this.zzf;
    }
}
