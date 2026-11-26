package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzqe;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.jcc;
import defpackage.kcc;
import defpackage.kd8;
import defpackage.ks;
import defpackage.u24;
import defpackage.uxb;
import defpackage.vbc;
import defpackage.x1;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqe {
    public final Context a;
    public final kd8 b;
    public final kd8 c;
    public final kd8 d;
    public volatile int e = 0;
    public final CopyOnWriteArrayList f = new CopyOnWriteArrayList();
    public final Object g = new Object();
    public volatile ListenableFuture h = null;

    public zzqe(Context context, kd8 kd8Var, kd8 kd8Var2, kd8 kd8Var3) {
        this.a = context;
        this.b = kd8Var;
        this.c = kd8Var2;
        this.d = kd8Var3;
    }

    public final ListenableFuture zza(zzabz zzabzVar, boolean z, zzqc zzqcVar) {
        ListenableFuture listenableFutureZze;
        final zzqm zzqmVar = (zzqm) this.c.get2();
        if (zzqmVar == null && !z) {
            return u24.c;
        }
        int iZza = 1 << zzabzVar.zza();
        if ((this.e & iZza) == 0) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f;
            synchronized (copyOnWriteArrayList) {
                try {
                    int i = this.e;
                    if ((i & iZza) == 0) {
                        copyOnWriteArrayList.add(zzqcVar);
                        this.e = iZza | i;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ListenableFuture listenableFuture = this.h;
        if (listenableFuture != null) {
            return listenableFuture;
        }
        synchronized (this.g) {
            try {
                listenableFutureZze = this.h;
                if (listenableFutureZze == null) {
                    if (zzqmVar == null) {
                        zzqmVar = jcc.a;
                    }
                    Context context = this.a;
                    if (zzky.zzb(context)) {
                        vbc vbcVar = vbc.b;
                        kd8 kd8Var = this.b;
                        listenableFutureZze = x1.p(zzky.zzd(context, Executors.callable(vbcVar, null), (Executor) kd8Var.get2()), new ks() { // from class: icc
                            @Override // defpackage.ks
                            public final ListenableFuture apply(Object obj) {
                                zzqe zzqeVar = this.a;
                                ListenableFuture listenableFutureZze2 = ((zzmj) zzqeVar.d.get2()).zze(new kcc(zzqeVar, zzqmVar));
                                listenableFutureZze2.getClass();
                                return listenableFutureZze2;
                            }
                        }, (Executor) kd8Var.get2());
                        this.h = listenableFutureZze;
                    } else {
                        listenableFutureZze = ((zzmj) this.d.get2()).zze(new kcc(this, zzqmVar));
                        listenableFutureZze.getClass();
                        this.h = listenableFutureZze;
                    }
                    listenableFutureZze.addListener(new uxb(listenableFutureZze, 1), (Executor) this.b.get2());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return listenableFutureZze;
    }
}
