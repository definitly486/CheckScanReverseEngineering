package com.google.android.gms.internal.measurement;

import defpackage.j59;
import defpackage.r07;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwz implements Runnable {
    public final /* synthetic */ r07 b;
    public final /* synthetic */ zzws c;
    public final /* synthetic */ Runnable d;

    public zzwz(r07 r07Var, zzws zzwsVar, Runnable runnable) {
        this.b = r07Var;
        this.c = zzwsVar;
        this.d = runnable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        if (((zzxe) this.b.b) != null) {
            throw null;
        }
        zzws zzwsVar = this.c;
        zzwsVar.getClass();
        Runnable runnable = this.d;
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVarZzc = zzvy.zzc(zzwqVarZzd, zzwsVar);
        try {
            runnable.run();
            j59 j59Var = j59.a;
            zzvy.zzc(zzwqVarZzd, zzwsVarZzc);
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
        Runnable runnable = this.d;
        StringBuilder sb = new StringBuilder(runnable.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(runnable);
        sb.append("]");
        return sb.toString();
    }
}
