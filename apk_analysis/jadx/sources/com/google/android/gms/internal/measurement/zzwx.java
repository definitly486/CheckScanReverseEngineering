package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.js;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwx implements js {
    public final /* synthetic */ zzws b;
    public final /* synthetic */ js c;

    public zzwx(zzws zzwsVar, js jsVar) {
        this.b = zzwsVar;
        this.c = jsVar;
    }

    @Override // defpackage.js
    public final ListenableFuture call() {
        zzws zzwsVar = this.b;
        zzwsVar.getClass();
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVarZzc = zzvy.zzc(zzwqVarZzd, zzwsVar);
        try {
            ListenableFuture listenableFutureCall = this.c.call();
            zzvy.zzc(zzwqVarZzd, zzwsVarZzc);
            listenableFutureCall.getClass();
            return listenableFutureCall;
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
        js jsVar = this.c;
        StringBuilder sb = new StringBuilder(jsVar.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(jsVar);
        sb.append("]");
        return sb.toString();
    }
}
