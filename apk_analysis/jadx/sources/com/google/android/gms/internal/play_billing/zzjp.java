package com.google.android.gms.internal.play_billing;

import defpackage.fwb;
import defpackage.gqb;
import defpackage.nxb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjp extends zzgp implements zzhs {
    private static final zzjp zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private int zzh;

    static {
        zzjp zzjpVar = new zzjp();
        zzb = zzjpVar;
        zzgp.c(zzjp.class, zzjpVar);
    }

    public static /* synthetic */ void l(zzjp zzjpVar, int i) {
        zzjpVar.zzg = i - 1;
        zzjpVar.zzd |= 1;
    }

    public static /* synthetic */ void m(zzjp zzjpVar, zzjz zzjzVar) {
        zzjpVar.zzh = zzjzVar.zza();
        zzjpVar.zzd |= 2;
    }

    public static /* synthetic */ void n(zzjp zzjpVar, zzkn zzknVar) {
        zzknVar.getClass();
        zzjpVar.zzf = zzknVar;
        zzjpVar.zze = 2;
    }

    public static /* synthetic */ void o(zzjp zzjpVar, zzkt zzktVar) {
        zzktVar.getClass();
        zzjpVar.zzf = zzktVar;
        zzjpVar.zze = 4;
    }

    public static /* synthetic */ void p(zzjp zzjpVar, zzln zzlnVar) {
        zzlnVar.getClass();
        zzjpVar.zzf = zzlnVar;
        zzjpVar.zze = 3;
    }

    public static zzjn zza() {
        return (zzjn) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005᠌\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", fwb.a, zzkn.class, zzln.class, zzkt.class, "zzh", nxb.a});
        }
        if (i2 == 3) {
            return new zzjp();
        }
        if (i2 == 4) {
            return new zzjn(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final zzkt zzc() {
        return this.zze == 4 ? (zzkt) this.zzf : zzkt.zzb();
    }
}
