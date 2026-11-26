package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzss implements zzrt {
    public final zzafj a;
    public final zzadf b = zzadf.zza();

    public zzss(zzafj zzafjVar) {
        this.a = zzafjVar;
    }

    public static zzss zzb(zzafc zzafcVar) {
        return new zzss(zzafcVar.zzcj());
    }

    @Override // com.google.android.gms.internal.measurement.zzrt
    public final /* bridge */ /* synthetic */ Object zza(zzrs zzrsVar) throws IOException {
        InputStream inputStreamZzc = zzst.zzc(zzrsVar);
        try {
            zzafc zzafcVar = (zzafc) this.a.zza(inputStreamZzc, this.b);
            if (inputStreamZzc != null) {
                inputStreamZzc.close();
            }
            return zzafcVar;
        } catch (Throwable th) {
            if (inputStreamZzc != null) {
                try {
                    inputStreamZzc.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
