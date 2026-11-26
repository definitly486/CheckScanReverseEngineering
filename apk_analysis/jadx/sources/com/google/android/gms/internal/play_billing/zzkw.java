package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkw extends zzgp implements zzhs {
    private static final zzkw zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private zzkg zzg;
    private zzkj zzh;

    static {
        zzkw zzkwVar = new zzkw();
        zzb = zzkwVar;
        zzgp.c(zzkw.class, zzkwVar);
    }

    public static /* synthetic */ void l(zzkw zzkwVar, zzlg zzlgVar) {
        zzlgVar.getClass();
        zzkwVar.zzf = zzlgVar;
        zzkwVar.zze = 8;
    }

    public static /* synthetic */ void m(zzkw zzkwVar, zzlk zzlkVar) {
        zzkwVar.zzf = zzlkVar;
        zzkwVar.zze = 4;
    }

    public static /* synthetic */ void n(zzkw zzkwVar, zzjl zzjlVar) {
        zzkwVar.zzf = zzjlVar;
        zzkwVar.zze = 2;
    }

    public static /* synthetic */ void o(zzkw zzkwVar, zzjp zzjpVar) {
        zzkwVar.zzf = zzjpVar;
        zzkwVar.zze = 3;
    }

    public static /* synthetic */ void p(zzkw zzkwVar, zzjx zzjxVar) {
        zzjxVar.getClass();
        zzkwVar.zzf = zzjxVar;
        zzkwVar.zze = 7;
    }

    public static /* synthetic */ void q(zzkw zzkwVar, zzkd zzkdVar) {
        zzkdVar.getClass();
        zzkwVar.zzf = zzkdVar;
        zzkwVar.zze = 5;
    }

    public static /* synthetic */ void r(zzkw zzkwVar, zzkg zzkgVar) {
        zzkgVar.getClass();
        zzkwVar.zzg = zzkgVar;
        zzkwVar.zzd |= 1;
    }

    public static zzku zza() {
        return (zzku) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\b\u0001\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001\u0007<\u0000\b<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", zzjl.class, zzjp.class, zzlk.class, zzkd.class, "zzh", zzjx.class, zzlg.class});
        }
        if (i2 == 3) {
            return new zzkw();
        }
        if (i2 == 4) {
            return new zzku(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
