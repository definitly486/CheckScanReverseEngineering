package com.google.android.gms.internal.measurement;

import defpackage.ksa;
import defpackage.nsa;
import defpackage.pqa;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzadq extends zzacd {
    public final zzadu a;

    public zzadq(zzadu zzaduVar) {
        this.a = zzaduVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzafj
    public final Object zzb(zzacv zzacvVar, zzadf zzadfVar) throws zzaeh {
        int i = zzadu.zzd;
        zzadu zzaduVarE = this.a.e();
        try {
            nsa nsaVarA = ksa.c.a(zzaduVarE.getClass());
            pqa pqaVar = zzacvVar.c;
            if (pqaVar == null) {
                pqaVar = new pqa(zzacvVar);
            }
            nsaVarA.b(zzaduVarE, pqaVar, zzadfVar);
            nsaVarA.a(zzaduVarE);
            return zzaduVarE;
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
}
