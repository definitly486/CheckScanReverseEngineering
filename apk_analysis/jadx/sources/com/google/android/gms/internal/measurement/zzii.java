package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;
import defpackage.tra;
import defpackage.xg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzii extends zzadu implements zzafd {
    private static final zzii zzh;
    private static volatile zzafj zzi;
    private zzaee zzb;
    private zzaee zze;
    private zzaef zzf;
    private zzaef zzg;

    static {
        zzii zziiVar = new zzii();
        zzh = zziiVar;
        zzadu.i(zzii.class, zziiVar);
    }

    public zzii() {
        tra traVar = tra.f;
        this.zzb = traVar;
        this.zze = traVar;
        lsa lsaVar = lsa.f;
        this.zzf = lsaVar;
        this.zzg = lsaVar;
    }

    public static zzih zzj() {
        return (zzih) zzh.f();
    }

    public static zzii zzk() {
        return zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzh, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzb", "zze", "zzf", zzhq.class, "zzg", zzik.class});
        }
        if (i2 == 3) {
            return new zzii();
        }
        if (i2 == 4) {
            return new zzih(zzh);
        }
        if (i2 == 5) {
            return zzh;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzi;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzii.class) {
            try {
                zzadqVar = zzi;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzh);
                    zzi = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final void n(Iterable iterable) {
        zzaee zzaeeVar = this.zzb;
        if (!zzaeeVar.zza()) {
            int size = zzaeeVar.size();
            this.zzb = zzaeeVar.zzg(size + size);
        }
        zzaca.c(iterable, this.zzb);
    }

    public final void o() {
        this.zzb = tra.f;
    }

    public final void p(Iterable iterable) {
        zzaee zzaeeVar = this.zze;
        if (!zzaeeVar.zza()) {
            int size = zzaeeVar.size();
            this.zze = zzaeeVar.zzg(size + size);
        }
        zzaca.c(iterable, this.zze);
    }

    public final void q() {
        this.zze = tra.f;
    }

    public final void r(Iterable iterable) {
        zzaef zzaefVar = this.zzf;
        if (!zzaefVar.zza()) {
            this.zzf = xg.c(zzaefVar);
        }
        zzaca.c(iterable, this.zzf);
    }

    public final void s() {
        this.zzf = lsa.f;
    }

    public final void t(Iterable iterable) {
        zzaef zzaefVar = this.zzg;
        if (!zzaefVar.zza()) {
            this.zzg = xg.c(zzaefVar);
        }
        zzaca.c(iterable, this.zzg);
    }

    public final void u() {
        this.zzg = lsa.f;
    }

    public final List zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzb.size();
    }

    public final List zzc() {
        return this.zze;
    }

    public final int zzd() {
        return this.zze.size();
    }

    public final List zze() {
        return this.zzf;
    }

    public final int zzf() {
        return this.zzf.size();
    }

    public final List zzh() {
        return this.zzg;
    }

    public final int zzi() {
        return this.zzg.size();
    }
}
