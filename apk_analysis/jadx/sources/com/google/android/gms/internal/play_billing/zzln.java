package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzln extends zzgp implements zzhs {
    private static final zzln zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;

    static {
        zzln zzlnVar = new zzln();
        zzb = zzlnVar;
        zzgp.c(zzln.class, zzlnVar);
    }

    public static /* synthetic */ void l(zzln zzlnVar, boolean z) {
        zzlnVar.zzd |= 8;
        zzlnVar.zzh = z;
    }

    public static /* synthetic */ void m(zzln zzlnVar, int i) {
        zzlnVar.zzd |= 16;
        zzlnVar.zzi = i;
    }

    public static /* synthetic */ void n(zzln zzlnVar, long j) {
        zzlnVar.zzd |= 4;
        zzlnVar.zzg = j;
    }

    public static /* synthetic */ void o(zzln zzlnVar, int i) {
        zzlnVar.zzd |= 32;
        zzlnVar.zzj = i;
    }

    public static /* synthetic */ void p(zzln zzlnVar) {
        zzlnVar.zzd |= 2;
        zzlnVar.zzf = true;
    }

    public static zzll zza() {
        return (zzll) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004\u0006င\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzln();
        }
        if (i2 == 4) {
            return new zzll(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
