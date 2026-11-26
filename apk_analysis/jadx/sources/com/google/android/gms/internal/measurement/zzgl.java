package com.google.android.gms.internal.measurement;

import defpackage.kra;
import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgl extends zzadu implements zzafd {
    private static final zzgl zzw;
    private static volatile zzafj zzx;
    private int zzb;
    private long zze;
    private String zzf = "";
    private int zzg;
    private zzaef zzh;
    private zzaef zzi;
    private zzaef zzj;
    private String zzk;
    private boolean zzl;
    private zzaef zzm;
    private zzaef zzn;
    private String zzo;
    private String zzp;
    private zzgf zzq;
    private zzgp zzr;
    private zzgv zzs;
    private zzgr zzt;
    private zzgn zzu;
    private zzaeb zzv;

    static {
        zzgl zzglVar = new zzgl();
        zzw = zzglVar;
        zzadu.i(zzgl.class, zzglVar);
    }

    public zzgl() {
        lsa lsaVar = lsa.f;
        this.zzh = lsaVar;
        this.zzi = lsaVar;
        this.zzj = lsaVar;
        this.zzk = "";
        this.zzm = lsaVar;
        this.zzn = lsaVar;
        this.zzo = "";
        this.zzp = "";
        this.zzv = kra.f;
    }

    public static zzgk zzs() {
        return (zzgk) zzw.f();
    }

    public static zzgl zzt() {
        return zzw;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzw, "\u0004\u0012\u0000\u0001\u0001\u0014\u0012\u0000\u0006\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b\u0014+", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", zzgt.class, "zzi", zzgj.class, "zzj", zzfd.class, "zzk", "zzl", "zzm", zzja.class, "zzn", zzgh.class, "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv"});
        }
        if (i2 == 3) {
            return new zzgl();
        }
        if (i2 == 4) {
            return new zzgk(zzw);
        }
        if (i2 == 5) {
            return zzw;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzx;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzgl.class) {
            try {
                zzadqVar = zzx;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzw);
                    zzx = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final void n(int i, zzgj zzgjVar) {
        zzgjVar.getClass();
        zzaef zzaefVar = this.zzi;
        if (!zzaefVar.zza()) {
            this.zzi = xg.c(zzaefVar);
        }
        this.zzi.set(i, zzgjVar);
    }

    public final void o() {
        this.zzj = lsa.f;
    }

    public final void p() {
        this.zzm = lsa.f;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final long zzb() {
        return this.zze;
    }

    public final boolean zzc() {
        return (this.zzb & 2) != 0;
    }

    public final String zzd() {
        return this.zzf;
    }

    public final List zze() {
        return this.zzh;
    }

    public final int zzf() {
        return this.zzi.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzgj zzh(int i) {
        return (zzgj) this.zzi.get(i);
    }

    public final List zzi() {
        return this.zzj;
    }

    public final List zzj() {
        return this.zzm;
    }

    public final int zzk() {
        return this.zzm.size();
    }

    public final List zzl() {
        return this.zzn;
    }

    public final String zzm() {
        return this.zzo;
    }

    public final boolean zzn() {
        return (this.zzb & 128) != 0;
    }

    public final zzgf zzo() {
        zzgf zzgfVar = this.zzq;
        return zzgfVar == null ? zzgf.zzh() : zzgfVar;
    }

    public final boolean zzp() {
        return (this.zzb & 512) != 0;
    }

    public final zzgv zzq() {
        zzgv zzgvVar = this.zzs;
        return zzgvVar == null ? zzgv.zze() : zzgvVar;
    }

    public final List zzr() {
        return this.zzv;
    }
}
