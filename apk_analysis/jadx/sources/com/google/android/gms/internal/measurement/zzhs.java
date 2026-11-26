package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhs extends zzadu implements zzafd {
    private static final zzhs zzm;
    private static volatile zzafj zzn;
    private int zzb;
    private zzaef zze = lsa.f;
    private String zzf = "";
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private long zzk;
    private long zzl;

    static {
        zzhs zzhsVar = new zzhs();
        zzm = zzhsVar;
        zzadu.i(zzhs.class, zzhsVar);
    }

    public static zzhr zzp() {
        return (zzhr) zzm.f();
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzm, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003\u0006ဂ\u0004\u0007ဂ\u0005\bဂ\u0006", new Object[]{"zzb", "zze", zzhw.class, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new zzhs();
        }
        if (i2 == 4) {
            return new zzhr(zzm);
        }
        if (i2 == 5) {
            return zzm;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzn;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzhs.class) {
            try {
                zzadqVar = zzn;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzm);
                    zzn = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final /* synthetic */ void n(long j) {
        this.zzb |= 64;
        this.zzl = j;
    }

    public final void o() {
        zzaef zzaefVar = this.zze;
        if (zzaefVar.zza()) {
            return;
        }
        this.zze = xg.c(zzaefVar);
    }

    public final /* synthetic */ void p(int i, zzhw zzhwVar) {
        zzhwVar.getClass();
        o();
        this.zze.set(i, zzhwVar);
    }

    public final /* synthetic */ void q(zzhw zzhwVar) {
        zzhwVar.getClass();
        o();
        this.zze.add(zzhwVar);
    }

    public final void r(Iterable iterable) {
        o();
        zzaca.c(iterable, this.zze);
    }

    public final void s() {
        this.zze = lsa.f;
    }

    public final /* synthetic */ void t(int i) {
        o();
        this.zze.remove(i);
    }

    public final /* synthetic */ void u(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzf = str;
    }

    public final /* synthetic */ void v(long j) {
        this.zzb |= 2;
        this.zzg = j;
    }

    public final /* synthetic */ void w(long j) {
        this.zzb |= 4;
        this.zzh = j;
    }

    public final /* synthetic */ void x(long j) {
        this.zzb |= 16;
        this.zzj = j;
    }

    public final /* synthetic */ void y(long j) {
        this.zzb |= 32;
        this.zzk = j;
    }

    public final List zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zze.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzhw zzc(int i) {
        return (zzhw) this.zze.get(i);
    }

    public final String zzd() {
        return this.zzf;
    }

    public final boolean zze() {
        return (this.zzb & 2) != 0;
    }

    public final long zzf() {
        return this.zzg;
    }

    public final boolean zzh() {
        return (this.zzb & 4) != 0;
    }

    public final long zzi() {
        return this.zzh;
    }

    public final boolean zzj() {
        return (this.zzb & 8) != 0;
    }

    public final int zzk() {
        return this.zzi;
    }

    public final boolean zzl() {
        return (this.zzb & 32) != 0;
    }

    public final long zzm() {
        return this.zzk;
    }

    public final boolean zzn() {
        return (this.zzb & 64) != 0;
    }

    public final long zzo() {
        return this.zzl;
    }
}
