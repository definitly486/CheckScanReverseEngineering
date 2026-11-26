package com.google.android.gms.internal.measurement;

import defpackage.ksa;
import defpackage.lsa;
import defpackage.msa;
import defpackage.nsa;
import defpackage.pqa;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpr extends zzadu implements zzafd {
    private static final zzpr zzl;
    private static volatile zzafj zzm;
    private int zzb;
    private boolean zzf;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private String zze = "";
    private zzaef zzg = lsa.f;

    static {
        zzpr zzprVar = new zzpr();
        zzl = zzprVar;
        zzadu.i(zzpr.class, zzprVar);
    }

    public static zzpr zzh(InputStream inputStream, zzadf zzadfVar) throws zzaeh {
        zzpr zzprVar = zzl;
        zzacv zzacvVarZzM = zzacv.zzM(inputStream, 4096);
        zzadu zzaduVarE = zzprVar.e();
        try {
            nsa nsaVarA = ksa.c.a(zzaduVarE.getClass());
            pqa pqaVar = zzacvVarZzM.c;
            if (pqaVar == null) {
                pqaVar = new pqa(zzacvVarZzM);
            }
            nsaVarA.b(zzaduVarE, pqaVar, zzadfVar);
            nsaVarA.a(zzaduVarE);
            zzadu.l(zzaduVarE);
            return (zzpr) zzaduVarE;
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

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzl, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003\u001a\u0004᠌\u0002\u0005ဇ\u0003\u0006ဇ\u0005\u0007ဇ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", zzabz.zzc(), "zzi", "zzk", "zzj"});
        }
        if (i2 == 3) {
            return new zzpr();
        }
        if (i2 == 4) {
            return new zzpq(zzl);
        }
        if (i2 == 5) {
            return zzl;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzm;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzpr.class) {
            try {
                zzadqVar = zzm;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzl);
                    zzm = zzadqVar;
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

    public final boolean zzb() {
        return this.zzf;
    }

    public final zzabz zzc() {
        zzabz zzabzVarZzb = zzabz.zzb(this.zzh);
        return zzabzVarZzb == null ? zzabz.UNKNOWN : zzabzVarZzb;
    }

    public final boolean zzd() {
        return this.zzi;
    }

    public final boolean zze() {
        return this.zzj;
    }

    public final boolean zzf() {
        return this.zzk;
    }
}
