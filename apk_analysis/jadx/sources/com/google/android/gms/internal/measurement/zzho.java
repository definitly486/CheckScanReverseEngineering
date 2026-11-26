package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzho extends zzadu implements zzafd {
    private static final zzho zze;
    private static volatile zzafj zzf;
    private zzaef zzb = lsa.f;

    static {
        zzho zzhoVar = new zzho();
        zze = zzhoVar;
        zzadu.i(zzho.class, zzhoVar);
    }

    public static zzhh zzb() {
        return (zzhh) zze.f();
    }

    public static zzho zzc() {
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
            return new msa(zze, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zzhl.class});
        }
        if (i2 == 3) {
            return new zzho();
        }
        if (i2 == 4) {
            return new zzhh(zze);
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
        synchronized (zzho.class) {
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

    public final void n(Iterable iterable) {
        zzaef zzaefVar = this.zzb;
        if (!zzaefVar.zza()) {
            this.zzb = xg.c(zzaefVar);
        }
        zzaca.c(iterable, this.zzb);
    }

    public final List zza() {
        return this.zzb;
    }
}
