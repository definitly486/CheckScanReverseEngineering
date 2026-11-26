package com.google.android.gms.internal.measurement;

import defpackage.iqb;
import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzib extends zzadu implements zzafd {
    private static final zzib zzi;
    private static volatile zzafj zzj;
    private int zzb;
    private zzaef zze = lsa.f;
    private String zzf = "";
    private String zzg = "";
    private int zzh;

    static {
        zzib zzibVar = new zzib();
        zzi = zzibVar;
        zzadu.i(zzib.class, zzibVar);
    }

    public static zzhz zzi() {
        return (zzhz) zzi.f();
    }

    public static zzhz zzj(zzib zzibVar) {
        zzadp zzadpVarF = zzi.f();
        zzadpVarF.zzbe(zzibVar);
        return (zzhz) zzadpVarF;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzi, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zzb", "zze", zzid.class, "zzf", "zzg", "zzh", iqb.a});
        }
        if (i2 == 3) {
            return new zzib();
        }
        if (i2 == 4) {
            return new zzhz(zzi);
        }
        if (i2 == 5) {
            return zzi;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzj;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzib.class) {
            try {
                zzadqVar = zzj;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzi);
                    zzj = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final /* synthetic */ void n(int i, zzid zzidVar) {
        zzidVar.getClass();
        t();
        this.zze.set(i, zzidVar);
    }

    public final /* synthetic */ void o(zzid zzidVar) {
        zzidVar.getClass();
        t();
        this.zze.add(zzidVar);
    }

    public final void p(Iterable iterable) {
        t();
        zzaca.c(iterable, this.zze);
    }

    public final void q() {
        this.zze = lsa.f;
    }

    public final /* synthetic */ void r(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzf = str;
    }

    public final /* synthetic */ void s(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzg = str;
    }

    public final void t() {
        zzaef zzaefVar = this.zze;
        if (zzaefVar.zza()) {
            return;
        }
        this.zze = xg.c(zzaefVar);
    }

    public final List zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zze.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzid zzc(int i) {
        return (zzid) this.zze.get(i);
    }

    public final boolean zzd() {
        return (this.zzb & 1) != 0;
    }

    public final String zze() {
        return this.zzf;
    }

    public final boolean zzf() {
        return (this.zzb & 2) != 0;
    }

    public final String zzh() {
        return this.zzg;
    }
}
