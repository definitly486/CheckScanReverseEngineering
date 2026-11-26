package com.google.android.gms.internal.measurement;

import defpackage.c8c;
import defpackage.msa;

/* JADX INFO: loaded from: classes4.dex */
public final class zznu extends zzadu implements zzafd {
    private static final zznu zze;
    private static volatile zzafj zzf;
    private zzaew zzb = zzaew.zza();

    static {
        zznu zznuVar = new zznu();
        zze = zznuVar;
        zzadu.i(zznu.class, zznuVar);
    }

    public static zznu zzb() {
        return zze;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zze, "\u0004\u0001\u0000\u0000\u0002\u0002\u0001\u0001\u0000\u0000\u00022", new Object[]{"zzb", c8c.a});
        }
        if (i2 == 3) {
            return new zznu();
        }
        if (i2 == 4) {
            return new zznt(zze);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzf;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zznu.class) {
            try {
                zzadqVar = zzf;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zze);
                    zzf = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final /* synthetic */ zzaew n() {
        if (!this.zzb.zze()) {
            this.zzb = this.zzb.zzc();
        }
        return this.zzb;
    }

    public final zznr zza(String str, zznr zznrVar) {
        str.getClass();
        zznr zznrVar2 = (zznr) this.zzb.get(str);
        return zznrVar2 != null ? zznrVar2 : zznrVar;
    }
}
