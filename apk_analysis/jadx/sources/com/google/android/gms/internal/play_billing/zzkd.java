package com.google.android.gms.internal.play_billing;

import defpackage.gkb;
import defpackage.gqb;
import defpackage.myb;
import defpackage.nxb;
import defpackage.ppb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkd extends zzgp implements zzhs {
    private static final zzkd zzb;
    private int zzd;
    private int zzf;
    private zzju zzi;
    private boolean zzj;
    private boolean zzk;
    private zzld zzl;
    private String zze = "";
    private zzgt zzg = gkb.f;
    private zzgu zzh = ppb.f;

    static {
        zzkd zzkdVar = new zzkd();
        zzb = zzkdVar;
        zzgp.c(zzkd.class, zzkdVar);
    }

    public static /* synthetic */ void l(zzkd zzkdVar, zzjz zzjzVar) {
        zzjzVar.getClass();
        zzgt zzgtVar = zzkdVar.zzg;
        if (!zzgtVar.zzc()) {
            int size = zzgtVar.size();
            zzkdVar.zzg = zzgtVar.zzd(size + size);
        }
        zzkdVar.zzg.zzh(zzjzVar.zza());
    }

    public static /* synthetic */ void m(zzkd zzkdVar, zzju zzjuVar) {
        zzjuVar.getClass();
        zzkdVar.zzi = zzjuVar;
        zzkdVar.zzd |= 4;
    }

    public static /* synthetic */ void n(zzkd zzkdVar) {
        zzkdVar.zzd |= 1;
        zzkdVar.zze = "ProxyBillingBroadcastReceiver";
    }

    public static /* synthetic */ void o(zzkd zzkdVar, zzld zzldVar) {
        zzldVar.getClass();
        zzkdVar.zzl = zzldVar;
        zzkdVar.zzd |= 32;
    }

    public static /* synthetic */ void p(zzkd zzkdVar, int i) {
        zzkdVar.zzf = i - 1;
        zzkdVar.zzd |= 2;
    }

    public static zzka zza() {
        return (zzka) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ࠬ\u0004\u001b\u0005ဉ\u0002\u0006ဇ\u0003\u0007ဇ\u0004\bဉ\u0005", new Object[]{"zzd", "zze", "zzf", myb.a, "zzg", nxb.a, "zzh", zzkz.class, "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new zzkd();
        }
        if (i2 == 4) {
            return new zzka(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
