package com.google.android.gms.internal.measurement;

import defpackage.msa;
import defpackage.nlb;
import defpackage.olb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzha extends zzadu implements zzafd {
    private static final zzha zzp;
    private static volatile zzafj zzq;
    private int zzb;
    private long zzh;
    private long zzl;
    private zzaew zzm = zzaew.zza();
    private zzaew zzn = zzaew.zza();
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzi = "";
    private String zzj = "";
    private String zzk = "";
    private String zzo = "";

    static {
        zzha zzhaVar = new zzha();
        zzp = zzhaVar;
        zzadu.i(zzha.class, zzhaVar);
    }

    public static zzgx zzt() {
        return (zzgx) zzp.f();
    }

    public static zzha zzu() {
        return zzp;
    }

    public final /* synthetic */ void A(String str) {
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void B() {
        this.zzb &= -2;
        this.zze = zzp.zze;
    }

    public final /* synthetic */ void C(String str) {
        this.zzb |= 2;
        this.zzf = str;
    }

    public final /* synthetic */ void D() {
        this.zzb &= -3;
        this.zzf = zzp.zzf;
    }

    public final /* synthetic */ void E(String str) {
        this.zzb |= 4;
        this.zzg = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzp, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0002\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဂ\u0007\t2\n2\u000bဈ\b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", nlb.a, "zzn", olb.a, "zzo"});
        }
        if (i2 == 3) {
            return new zzha();
        }
        if (i2 == 4) {
            return new zzgx(zzp);
        }
        if (i2 == 5) {
            return zzp;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzq;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzha.class) {
            try {
                zzadqVar = zzq;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzp);
                    zzq = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final /* synthetic */ void n() {
        this.zzb &= -5;
        this.zzg = zzp.zzg;
    }

    public final /* synthetic */ void o(long j) {
        this.zzb |= 8;
        this.zzh = j;
    }

    public final /* synthetic */ void p(String str) {
        this.zzb |= 16;
        this.zzi = str;
    }

    public final /* synthetic */ void q() {
        this.zzb &= -17;
        this.zzi = zzp.zzi;
    }

    public final /* synthetic */ void r(String str) {
        this.zzb |= 32;
        this.zzj = str;
    }

    public final /* synthetic */ void s() {
        this.zzb &= -33;
        this.zzj = zzp.zzj;
    }

    public final /* synthetic */ void t(String str) {
        this.zzb |= 64;
        this.zzk = str;
    }

    public final /* synthetic */ void u() {
        this.zzb &= -65;
        this.zzk = zzp.zzk;
    }

    public final /* synthetic */ void v(long j) {
        this.zzb |= 128;
        this.zzl = j;
    }

    public final /* synthetic */ zzaew w() {
        if (!this.zzm.zze()) {
            this.zzm = this.zzm.zzc();
        }
        return this.zzm;
    }

    public final /* synthetic */ zzaew x() {
        if (!this.zzn.zze()) {
            this.zzn = this.zzn.zzc();
        }
        return this.zzn;
    }

    public final /* synthetic */ void y(String str) {
        this.zzb |= 256;
        this.zzo = str;
    }

    public final /* synthetic */ void z() {
        this.zzb &= -257;
        this.zzo = zzp.zzo;
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

    public final String zzf() {
        return this.zzg;
    }

    public final boolean zzh() {
        return (this.zzb & 8) != 0;
    }

    public final long zzi() {
        return this.zzh;
    }

    public final boolean zzj() {
        return (this.zzb & 16) != 0;
    }

    public final String zzk() {
        return this.zzi;
    }

    public final boolean zzl() {
        return (this.zzb & 32) != 0;
    }

    public final String zzm() {
        return this.zzj;
    }

    public final boolean zzn() {
        return (this.zzb & 64) != 0;
    }

    public final String zzo() {
        return this.zzk;
    }

    public final boolean zzp() {
        return (this.zzb & 128) != 0;
    }

    public final long zzq() {
        return this.zzl;
    }

    public final boolean zzr() {
        return (this.zzb & 256) != 0;
    }

    public final String zzs() {
        return this.zzo;
    }
}
