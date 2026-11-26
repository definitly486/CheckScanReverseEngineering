package com.google.android.gms.internal.measurement;

import defpackage.msa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzno extends zzadu implements zzafd {
    private static final zzno zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private zzni zze;
    private zznk zzf;

    static {
        zzno zznoVar = new zzno();
        zzg = zznoVar;
        zzadu.i(zzno.class, zznoVar);
    }

    public static zzno zzc(byte[] bArr, zzadf zzadfVar) {
        return (zzno) zzadu.b(zzg, bArr, zzadfVar);
    }

    public static zznn zzd() {
        return (zznn) zzg.f();
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzno();
        }
        if (i2 == 4) {
            return new zznn(zzg);
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
        synchronized (zzno.class) {
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

    public final /* synthetic */ void n(zzni zzniVar) {
        zzniVar.getClass();
        this.zze = zzniVar;
        this.zzb |= 1;
    }

    public final zzni zza() {
        zzni zzniVar = this.zze;
        return zzniVar == null ? zzni.zzp() : zzniVar;
    }

    public final zznk zzb() {
        zznk zznkVar = this.zzf;
        return zznkVar == null ? zznk.zza() : zznkVar;
    }
}
