package com.google.android.gms.internal.measurement;

import defpackage.crb;
import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;

/* JADX INFO: loaded from: classes4.dex */
public final class zzig extends zzadu implements zzafd {
    private static final zzig zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private int zze = 1;
    private zzaef zzf = lsa.f;

    static {
        zzig zzigVar = new zzig();
        zzg = zzigVar;
        zzadu.i(zzig.class, zzigVar);
    }

    public static zzie zza() {
        return (zzie) zzg.f();
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zzb", "zze", crb.a, "zzf", zzhu.class});
        }
        if (i2 == 3) {
            return new zzig();
        }
        if (i2 == 4) {
            return new zzie(zzg);
        }
        if (i2 == 5) {
            return zzg;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzh;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzig.class) {
            try {
                zzadqVar = zzh;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzg);
                    zzh = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final void n(zzhu zzhuVar) {
        zzhuVar.getClass();
        zzaef zzaefVar = this.zzf;
        if (!zzaefVar.zza()) {
            this.zzf = xg.c(zzaefVar);
        }
        this.zzf.add(zzhuVar);
    }
}
