package com.google.android.gms.internal.play_billing;

import defpackage.gqb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkg extends zzgp implements zzhs {
    private static final zzkg zzb;
    private int zzd;
    private int zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private int zzs;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzo = "";
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";

    static {
        zzkg zzkgVar = new zzkg();
        zzb = zzkgVar;
        zzgp.c(zzkg.class, zzkgVar);
    }

    public static /* synthetic */ void l(zzkg zzkgVar) {
        zzkgVar.zzd |= 512;
        zzkgVar.zzn = 926300087L;
    }

    public static /* synthetic */ void m(zzkg zzkgVar, String str) {
        str.getClass();
        zzkgVar.zzd |= 4;
        zzkgVar.zzg = str;
    }

    public static /* synthetic */ void n(zzkg zzkgVar, String str) {
        str.getClass();
        zzkgVar.zzd |= 1024;
        zzkgVar.zzo = str;
    }

    public static /* synthetic */ void o(zzkg zzkgVar, String str) {
        str.getClass();
        zzkgVar.zzd |= 8192;
        zzkgVar.zzr = str;
    }

    public static /* synthetic */ void p(zzkg zzkgVar, String str) {
        str.getClass();
        zzkgVar.zzd |= 4096;
        zzkgVar.zzq = str;
    }

    public static /* synthetic */ void q(zzkg zzkgVar, String str) {
        str.getClass();
        zzkgVar.zzd |= 2048;
        zzkgVar.zzp = str;
    }

    public static /* synthetic */ void r(zzkg zzkgVar, int i) {
        zzkgVar.zzd |= 16384;
        zzkgVar.zzs = i;
    }

    public static /* synthetic */ void s(zzkg zzkgVar, boolean z) {
        zzkgVar.zzd |= 64;
        zzkgVar.zzk = z;
    }

    public static /* synthetic */ void t(zzkg zzkgVar, String str) {
        str.getClass();
        zzkgVar.zzd |= 1;
        zzkgVar.zze = str;
    }

    public static /* synthetic */ void u(zzkg zzkgVar, String str) {
        zzkgVar.zzd |= 2;
        zzkgVar.zzf = str;
    }

    public static /* synthetic */ void v(zzkg zzkgVar, int i) {
        zzkgVar.zzd |= 128;
        zzkgVar.zzl = i;
    }

    public static /* synthetic */ void w(zzkg zzkgVar, int i) {
        zzkgVar.zzd |= 256;
        zzkgVar.zzm = i;
    }

    public static /* synthetic */ void x(zzkg zzkgVar, int i) {
        zzkgVar.zzd |= 8;
        zzkgVar.zzh = i;
    }

    public static /* synthetic */ void y(zzkg zzkgVar, long j) {
        zzkgVar.zzd |= 16;
        zzkgVar.zzi = j;
    }

    public static /* synthetic */ void z(zzkg zzkgVar, long j) {
        zzkgVar.zzd |= 32;
        zzkgVar.zzj = j;
    }

    public static zzke zza() {
        return (zzke) zzb.h();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgp
    public final Object g(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new gqb(zzb, "\u0004\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0002\u0003င\u0003\u0004ဂ\u0004\u0005ဈ\u0001\u0006ဂ\u0005\u0007ဇ\u0006\bင\u0007\tင\b\nဂ\t\u000bဈ\n\fဈ\u000b\rဈ\f\u000eဈ\r\u000fင\u000e", new Object[]{"zzd", "zze", "zzg", "zzh", "zzi", "zzf", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs"});
        }
        if (i2 == 3) {
            return new zzkg();
        }
        if (i2 == 4) {
            return new zzke(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
