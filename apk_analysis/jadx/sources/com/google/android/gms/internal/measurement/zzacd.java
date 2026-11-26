package com.google.android.gms.internal.measurement;

import defpackage.fqa;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzacd implements zzafj {
    static {
        zzadf zzadfVar = zzadf.b;
        int i = fqa.a;
    }

    @Override // com.google.android.gms.internal.measurement.zzafj
    public final /* synthetic */ Object zza(InputStream inputStream, zzadf zzadfVar) throws zzaeh {
        zzafy zzafyVar;
        zzacv zzacvVarZzM = zzacv.zzM(inputStream, 4096);
        zzafc zzafcVar = (zzafc) zzb(zzacvVarZzM, zzadfVar);
        zzacvVarZzM.zzb(0);
        if (zzafcVar == null || zzafcVar.zzcJ()) {
            return zzafcVar;
        }
        if (zzafcVar instanceof zzacb) {
            zzafyVar = new zzafy((zzacb) zzafcVar);
        } else {
            if (zzafcVar instanceof zzacc) {
                throw null;
            }
            zzafyVar = new zzafy(zzafcVar);
        }
        throw zzafyVar.zza();
    }
}
