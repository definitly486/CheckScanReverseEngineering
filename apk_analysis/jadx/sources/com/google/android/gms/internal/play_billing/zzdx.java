package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdx extends zzgp implements zzhs {
    private static final zzdx zzb;
    private int zzd = 0;
    private Object zze;

    static {
        zzdx zzdxVar = new zzdx();
        zzb = zzdxVar;
        zzgp.c(zzdx.class, zzdxVar);
    }

    public static zzdx zzb(byte[] bArr) {
        return (zzdx) zzgp.j(zzb, bArr);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001;\u0000\u0002<\u0000", new Object[]{"zze", "zzd", zzeg.class});
        }
        if (i2 == 3) {
            return new zzdx();
        }
        if (i2 == 4) {
            return new zzdv(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final zzeg zzc() {
        return this.zzd == 2 ? (zzeg) this.zze : zzeg.zzb();
    }
}
