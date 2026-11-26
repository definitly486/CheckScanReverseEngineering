package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgn extends zzadu implements zzafd {
    private static final zzgn zze;
    private static volatile zzafj zzf;
    private zzaef zzb = lsa.f;

    static {
        zzgn zzgnVar = new zzgn();
        zze = zzgnVar;
        zzadu.i(zzgn.class, zzgnVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zze, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzb"});
        }
        if (i2 == 3) {
            return new zzgn();
        }
        if (i2 == 4) {
            return new zzgm(zze);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzf;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzgn.class) {
            try {
                zzadqVar = zzf;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zze);
                    zzf = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }
}
