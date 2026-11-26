package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlg extends zzgp implements zzhs {
    private static final zzlg zzb;
    private int zzd;
    private zzju zze;
    private long zzf;

    static {
        zzlg zzlgVar = new zzlg();
        zzb = zzlgVar;
        zzgp.c(zzlg.class, zzlgVar);
    }

    public static /* synthetic */ void l(zzlg zzlgVar, zzju zzjuVar) {
        zzjuVar.getClass();
        zzlgVar.zze = zzjuVar;
        zzlgVar.zzd |= 1;
    }

    public static /* synthetic */ void m(zzlg zzlgVar, long j) {
        zzlgVar.zzd |= 2;
        zzlgVar.zzf = j;
    }

    public static zzle zza() {
        return (zzle) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzlg();
        }
        if (i2 == 4) {
            return new zzle(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
