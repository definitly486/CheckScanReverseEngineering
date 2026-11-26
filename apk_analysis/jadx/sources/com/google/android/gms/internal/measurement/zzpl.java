package com.google.android.gms.internal.measurement;

import defpackage.lsa;
import defpackage.msa;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpl extends zzadu implements zzafd {
    private static final zzpl zze;
    private static volatile zzafj zzf;
    private zzaef zzb = lsa.f;

    static {
        zzpl zzplVar = new zzpl();
        zze = zzplVar;
        zzadu.i(zzpl.class, zzplVar);
    }

    public static zzpl zzb(byte[] bArr, zzadf zzadfVar) {
        return (zzpl) zzadu.b(zze, bArr, zzadfVar);
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
            return new zzpl();
        }
        if (i2 == 4) {
            return new zzpk(zze);
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
        synchronized (zzpl.class) {
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

    public final List zza() {
        return this.zzb;
    }
}
