package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzafc;
import com.google.android.gms.internal.measurement.zztj;
import com.google.android.gms.internal.measurement.zzto;
import com.google.android.gms.internal.measurement.zzxa;
import com.google.common.collect.j;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.jn2;
import defpackage.ks;
import defpackage.x1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public final class zzto implements ks {
    public static final /* synthetic */ int zza = 0;
    public final List a;
    public final Executor b;

    public zzto(List list, Executor executor) {
        this.a = list;
        this.b = executor;
    }

    public static zzto zza(List list, Executor executor) {
        return new zzto(list, executor);
    }

    @Override // defpackage.ks
    public final ListenableFuture apply(Object obj) {
        zzth zzthVar = (zzth) obj;
        List list = this.a;
        final int size = list.size();
        final ArrayList arrayList = new ArrayList(size);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((zztj) it.next()).zza());
        }
        ks ksVarZzc = zzxa.zzc(new ks() { // from class: lec
            @Override // defpackage.ks
            public final ListenableFuture apply(Object obj2) {
                final zzafc zzafcVar = (zzafc) obj2;
                final ArrayList arrayList2 = arrayList;
                j jVarN = j.n(arrayList2);
                final zzto zztoVar = this;
                final int i = size;
                js jsVarZzb = zzxa.zzb(new js() { // from class: jec
                    @Override // defpackage.js
                    public final ListenableFuture call() {
                        ListenableFuture listenableFutureX = en3.X(zzafcVar);
                        for (int i2 = 0; i2 < i; i2++) {
                            if (((Boolean) en3.V((Future) arrayList2.get(i2))).booleanValue()) {
                                final zztj zztjVar = (zztj) zztoVar.a.get(i2);
                                listenableFutureX = x1.p(listenableFutureX, zzxa.zzc(new ks() { // from class: kec
                                    @Override // defpackage.ks
                                    public final /* synthetic */ ListenableFuture apply(Object obj3) {
                                        return zztjVar.zzc();
                                    }
                                }), jn2.INSTANCE);
                            }
                        }
                        return listenableFutureX;
                    }
                });
                Executor executor = zztoVar.b;
                go1 go1Var = new go1(jVarN, false);
                go1Var.p = new go1.a(jsVarZzb, executor);
                go1Var.s();
                return go1Var;
            }
        });
        jn2 jn2Var = jn2.INSTANCE;
        return x1.p(zzthVar.zza(ksVarZzc, jn2Var), zzxa.zzc(new ks() { // from class: iec
            @Override // defpackage.ks
            public final ListenableFuture apply(Object obj2) {
                int i = size;
                ArrayList arrayList2 = new ArrayList(i);
                for (int i2 = 0; i2 < i; i2++) {
                    if (((Boolean) en3.V((Future) arrayList.get(i2))).booleanValue()) {
                        arrayList2.add(((zztj) this.a.get(i2)).zzb());
                    }
                }
                j jVarN = j.n(arrayList2);
                ry0 ry0Var = new ry0();
                jn2 jn2Var2 = jn2.INSTANCE;
                go1 go1Var = new go1(jVarN, true);
                go1Var.p = new go1.b(ry0Var, jn2Var2);
                go1Var.s();
                return go1Var;
            }
        }), jn2Var);
    }
}
