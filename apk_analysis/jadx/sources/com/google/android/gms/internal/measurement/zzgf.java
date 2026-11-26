package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgf extends zzadu implements zzafd {
    private static final zzgf zzj;
    private static volatile zzafj zzk;
    private int zzb;
    private zzaef zze;
    private zzaef zzf;
    private zzaef zzg;
    private boolean zzh;
    private zzaef zzi;

    static {
        zzgf zzgfVar = new zzgf();
        zzj = zzgfVar;
        zzadu.i(zzgf.class, zzgfVar);
    }

    public zzgf() {
        lsa lsaVar = lsa.f;
        this.zze = lsaVar;
        this.zzf = lsaVar;
        this.zzg = lsaVar;
        this.zzi = lsaVar;
    }

    public static zzgf zzh() {
        return zzj;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zzb", "zze", zzfu.class, "zzf", zzfw.class, "zzg", zzgc.class, "zzh", "zzi", zzfu.class});
        }
        if (i2 == 3) {
            return new zzgf();
        }
        if (i2 == 4) {
            return new zzfs(zzj);
        }
        if (i2 == 5) {
            return zzj;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzk;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzgf.class) {
            try {
                zzadqVar = zzk;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzj);
                    zzk = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final List zza() {
        return this.zze;
    }

    public final List zzb() {
        return this.zzf;
    }

    public final List zzc() {
        return this.zzg;
    }

    public final boolean zzd() {
        return (this.zzb & 1) != 0;
    }

    public final boolean zze() {
        return this.zzh;
    }

    public final List zzf() {
        return this.zzi;
    }
}
