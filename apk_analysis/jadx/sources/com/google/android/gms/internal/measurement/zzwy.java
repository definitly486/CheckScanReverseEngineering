package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ks;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwy implements ks {
    public final /* synthetic */ zzws a;
    public final /* synthetic */ ks b;

    public zzwy(zzws zzwsVar, ks ksVar) {
        this.a = zzwsVar;
        this.b = ksVar;
    }

    @Override // defpackage.ks
    public final ListenableFuture apply(Object obj) {
        zzws zzwsVar = this.a;
        zzwsVar.getClass();
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVarZzc = zzvy.zzc(zzwqVarZzd, zzwsVar);
        try {
            ListenableFuture listenableFutureApply = this.b.apply(obj);
            if (listenableFutureApply == null) {
                throw new IllegalStateException("AsyncFunction should return a ListenableFuture instead of null.");
            }
            zzvy.zzc(zzwqVarZzd, zzwsVarZzc);
            return listenableFutureApply;
        } catch (Throwable th) {
            try {
                zzvu.zza(th);
                throw th;
            } catch (Throwable th2) {
                zzvy.zzc(zzwqVarZzd, zzwsVarZzc);
                throw th2;
            }
        }
    }

    public final String toString() {
        ks ksVar = this.b;
        StringBuilder sb = new StringBuilder(ksVar.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(ksVar);
        sb.append("]");
        return sb.toString();
    }
}
