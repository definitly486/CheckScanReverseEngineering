package com.google.android.gms.internal.measurement;

import defpackage.j5c;
import defpackage.ksa;
import defpackage.msa;
import defpackage.nsa;
import defpackage.pqa;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmq extends zzadu implements zzafd {
    private static final zzmq zzj;
    private static volatile zzafj zzk;
    private int zzb;
    private long zzh;
    private zzaew zzi = zzaew.zza();
    private String zze = "";
    private zzacr zzf = zzacr.zza;
    private String zzg = "";

    static {
        zzmq zzmqVar = new zzmq();
        zzj = zzmqVar;
        zzadu.i(zzmq.class, zzmqVar);
    }

    public static zzmq zzh(zzacv zzacvVar, zzadf zzadfVar) throws zzaeh {
        zzadu zzaduVarE = zzj.e();
        try {
            nsa nsaVarA = ksa.c.a(zzaduVarE.getClass());
            pqa pqaVar = zzacvVar.c;
            if (pqaVar == null) {
                pqaVar = new pqa(zzacvVar);
            }
            nsaVarA.b(zzaduVarE, pqaVar, zzadfVar);
            nsaVarA.a(zzaduVarE);
            zzadu.l(zzaduVarE);
            return (zzmq) zzaduVarE;
        } catch (zzaeh e) {
            if (e.b) {
                throw new zzaeh(e);
            }
            throw e;
        } catch (zzafy e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzaeh) {
                throw ((zzaeh) e3.getCause());
            }
            throw new zzaeh(e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzaeh) {
                throw ((zzaeh) e4.getCause());
            }
            throw e4;
        }
    }

    public static zzmq zzi() {
        return zzj;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzj, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u00052", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", j5c.a});
        }
        if (i2 == 3) {
            return new zzmq();
        }
        if (i2 == 4) {
            return new zzmo(zzj);
        }
        if (i2 == 5) {
            return zzj;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzk;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzmq.class) {
            try {
                zzadqVar = zzk;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzj);
                    zzk = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final String zza() {
        return this.zze;
    }

    public final zzacr zzb() {
        return this.zzf;
    }

    public final String zzc() {
        return this.zzg;
    }

    public final long zzd() {
        return this.zzh;
    }

    public final int zze() {
        return this.zzi.size();
    }

    public final Map zzf() {
        return Collections.unmodifiableMap(this.zzi);
    }
}
