package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zznr extends zzadu implements zzafd {
    private static final zznr zzg;
    private static volatile zzafj zzh;
    private int zzb;
    private zzaef zze = lsa.f;
    private String zzf = "";

    static {
        zznr zznrVar = new zznr();
        zzg = zznrVar;
        zzadu.i(zznr.class, zznrVar);
    }

    public static zznr zzb() {
        return zzg;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzg, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001a\u0002ဈ\u0000", new Object[]{"zzb", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zznr();
        }
        if (i2 == 4) {
            return new zznq(zzg);
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
        synchronized (zznr.class) {
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

    public final void n(String str) {
        zzaef zzaefVar = this.zze;
        if (!zzaefVar.zza()) {
            this.zze = xg.c(zzaefVar);
        }
        this.zze.add("");
    }

    public final /* synthetic */ void o(String str) {
        this.zzb |= 1;
        this.zzf = "";
    }

    public final List zza() {
        return this.zze;
    }
}
