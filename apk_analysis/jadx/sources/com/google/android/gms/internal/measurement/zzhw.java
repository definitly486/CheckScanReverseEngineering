package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhw extends zzadu implements zzafd {
    private static final zzhw zzk;
    private static volatile zzafj zzl;
    private int zzb;
    private long zzg;
    private float zzh;
    private double zzi;
    private String zze = "";
    private String zzf = "";
    private zzaef zzj = lsa.f;

    static {
        zzhw zzhwVar = new zzhw();
        zzk = zzhwVar;
        zzadu.i(zzhw.class, zzhwVar);
    }

    public static zzhv zzn() {
        return (zzhv) zzk.f();
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzk, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzhw.class});
        }
        if (i2 == 3) {
            return new zzhw();
        }
        if (i2 == 4) {
            return new zzhv(zzk);
        }
        if (i2 == 5) {
            return zzk;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzl;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzhw.class) {
            try {
                zzadqVar = zzl;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzk);
                    zzl = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final /* synthetic */ void n(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void o(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }

    public final /* synthetic */ void p() {
        this.zzb &= -3;
        this.zzf = zzk.zzf;
    }

    public final /* synthetic */ void q(long j) {
        this.zzb |= 4;
        this.zzg = j;
    }

    public final /* synthetic */ void r() {
        this.zzb &= -5;
        this.zzg = 0L;
    }

    public final /* synthetic */ void s(double d) {
        this.zzb |= 16;
        this.zzi = d;
    }

    public final /* synthetic */ void t() {
        this.zzb &= -17;
        this.zzi = 0.0d;
    }

    public final void u(zzhw zzhwVar) {
        zzhwVar.getClass();
        zzaef zzaefVar = this.zzj;
        if (!zzaefVar.zza()) {
            this.zzj = xg.c(zzaefVar);
        }
        this.zzj.add(zzhwVar);
    }

    public final void v(Iterable iterable) {
        zzaef zzaefVar = this.zzj;
        if (!zzaefVar.zza()) {
            this.zzj = xg.c(zzaefVar);
        }
        zzaca.c(iterable, this.zzj);
    }

    public final void w() {
        this.zzj = lsa.f;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final String zzb() {
        return this.zze;
    }

    public final boolean zzc() {
        return (this.zzb & 2) != 0;
    }

    public final String zzd() {
        return this.zzf;
    }

    public final boolean zze() {
        return (this.zzb & 4) != 0;
    }

    public final long zzf() {
        return this.zzg;
    }

    public final boolean zzh() {
        return (this.zzb & 8) != 0;
    }

    public final float zzi() {
        return this.zzh;
    }

    public final boolean zzj() {
        return (this.zzb & 16) != 0;
    }

    public final double zzk() {
        return this.zzi;
    }

    public final List zzl() {
        return this.zzj;
    }

    public final int zzm() {
        return this.zzj.size();
    }
}
