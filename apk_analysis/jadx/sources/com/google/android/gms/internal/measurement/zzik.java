package com.google.android.gms.internal.measurement;

import defpackage.msa;
import defpackage.tra;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzik extends zzadu implements zzafd {
    private static final zzik zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private int zze;
    private zzaee zzf = tra.f;

    static {
        zzik zzikVar = new zzik();
        zzg = zzikVar;
        zzadu.i(zzik.class, zzikVar);
    }

    public static zzij zzf() {
        return (zzij) zzg.f();
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzik();
        }
        if (i2 == 4) {
            return new zzij(zzg);
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
        synchronized (zzik.class) {
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

    public final /* synthetic */ void n(int i) {
        this.zzb |= 1;
        this.zze = i;
    }

    public final void o(Iterable iterable) {
        zzaee zzaeeVar = this.zzf;
        if (!zzaeeVar.zza()) {
            int size = zzaeeVar.size();
            this.zzf = zzaeeVar.zzg(size + size);
        }
        zzaca.c(iterable, this.zzf);
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final List zzc() {
        return this.zzf;
    }

    public final int zzd() {
        return this.zzf.size();
    }

    public final long zze(int i) {
        return this.zzf.zzc(i);
    }
}
