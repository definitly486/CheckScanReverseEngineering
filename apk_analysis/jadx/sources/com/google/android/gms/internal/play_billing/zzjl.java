package com.google.android.gms.internal.play_billing;

import defpackage.fwb;
import defpackage.gqb;
import defpackage.nxb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjl extends zzgp implements zzhs {
    private static final zzjl zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private zzju zzh;
    private int zzi;

    static {
        zzjl zzjlVar = new zzjl();
        zzb = zzjlVar;
        zzgp.c(zzjl.class, zzjlVar);
    }

    public static /* synthetic */ void l(zzjl zzjlVar, zzkt zzktVar) {
        zzktVar.getClass();
        zzjlVar.zzf = zzktVar;
        zzjlVar.zze = 7;
    }

    public static /* synthetic */ void m(zzjl zzjlVar, zzln zzlnVar) {
        zzlnVar.getClass();
        zzjlVar.zzf = zzlnVar;
        zzjlVar.zze = 6;
    }

    public static /* synthetic */ void n(zzjl zzjlVar, int i) {
        zzjlVar.zzg = i - 1;
        zzjlVar.zzd |= 1;
    }

    public static /* synthetic */ void o(zzjl zzjlVar, zzjz zzjzVar) {
        zzjlVar.zzi = zzjzVar.zza();
        zzjlVar.zzd |= 4;
    }

    public static /* synthetic */ void p(zzjl zzjlVar, zzju zzjuVar) {
        zzjuVar.getClass();
        zzjlVar.zzh = zzjuVar;
        zzjlVar.zzd |= 2;
    }

    public static /* synthetic */ void q(zzjl zzjlVar, zzkn zzknVar) {
        zzknVar.getClass();
        zzjlVar.zzf = zzknVar;
        zzjlVar.zze = 4;
    }

    public static zzjj zza() {
        return (zzjj) zzb.h();
    }

    public static zzjl zzc(byte[] bArr) {
        return (zzjl) zzgp.j(zzb, bArr);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000\u0005᠌\u0002\u0006<\u0000\u0007<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", fwb.a, "zzh", zzkn.class, "zzi", nxb.a, zzln.class, zzkt.class});
        }
        if (i2 == 3) {
            return new zzjl();
        }
        if (i2 == 4) {
            return new zzjj(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final zzkt zze() {
        return this.zze == 7 ? (zzkt) this.zzf : zzkt.zzb();
    }
}
