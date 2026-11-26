package com.google.android.gms.internal.measurement;

import androidx.media3.muxer.MuxerUtil;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.jn2;
import defpackage.js;
import defpackage.ks;
import defpackage.l0;
import defpackage.lp7;
import defpackage.n39;
import defpackage.nd5;
import defpackage.nr7;
import defpackage.p;
import defpackage.u24;
import defpackage.ufc;
import defpackage.vub;
import defpackage.xfc;
import defpackage.yfc;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvm {
    public final ufc a;
    public final AtomicLong b = new AtomicLong(-9223372034707292160L);
    public final AtomicReference c = new AtomicReference(null);
    public final AtomicReference d = new AtomicReference(null);
    public final lp7 e;
    public final nr7 f;

    public zzvm(js jsVar, Executor executor) {
        jn2 jn2Var = jn2.INSTANCE;
        this.e = new lp7(jn2Var);
        nr7 nr7Var = new nr7();
        this.f = nr7Var;
        ufc ufcVar = new ufc();
        jsVar.getClass();
        ufcVar.b = jsVar;
        executor.getClass();
        ufcVar.c = executor;
        this.a = ufcVar;
        nr7Var.addListener(ufcVar, jn2Var);
    }

    public final l0 a(int i) {
        Executor executor;
        AtomicLong atomicLong = this.b;
        if (((int) (atomicLong.get() >>> 32)) > i) {
            u24.a<Object> aVar = u24.a.i;
            return aVar != null ? aVar : new u24.a();
        }
        yfc yfcVar = new yfc(i);
        while (true) {
            AtomicReference atomicReference = this.c;
            yfc yfcVar2 = (yfc) atomicReference.get();
            if (yfcVar2 != null && yfcVar2.i > i) {
                u24.a<Object> aVar2 = u24.a.i;
                return aVar2 != null ? aVar2 : new u24.a();
            }
            do {
                if (atomicReference.compareAndSet(yfcVar2, yfcVar)) {
                    if (((int) (atomicLong.get() >>> 32)) > i) {
                        yfcVar.cancel(true);
                        while (!atomicReference.compareAndSet(yfcVar, null) && atomicReference.get() == yfcVar) {
                        }
                        return yfcVar;
                    }
                    ufc ufcVar = this.a;
                    js jsVar = ufcVar.b;
                    if (jsVar == null || (executor = ufcVar.c) == null) {
                        yfcVar.n(this.f);
                        return yfcVar;
                    }
                    js jsVarZzb = zzxa.zzb(jsVar);
                    n39 n39Var = new n39();
                    n39Var.j = new n39.a(jsVarZzb);
                    executor.execute(n39Var);
                    yfcVar.n(n39Var);
                    return yfcVar;
                }
            } while (atomicReference.get() == yfcVar2);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final ListenableFuture zza() {
        AtomicLong atomicLong;
        long j;
        final int i;
        int i2;
        Object obj;
        nr7 nr7Var = this.f;
        if (nr7Var.isDone()) {
            return nr7Var;
        }
        do {
            atomicLong = this.b;
            j = atomicLong.get();
            i = (int) (j >>> 32);
            i2 = 1;
        } while (!atomicLong.compareAndSet(j, (((long) i) << 32) | (((long) (((int) j) + 1)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        AtomicReference atomicReference = this.d;
        nr7 nr7Var2 = new nr7();
        ListenableFuture listenableFuture = (ListenableFuture) atomicReference.getAndSet(nr7Var2);
        if (listenableFuture == null) {
            js jsVarZzb = zzxa.zzb(new js() { // from class: wfc
                @Override // defpackage.js
                public final /* synthetic */ ListenableFuture call() {
                    return this.b.a(i);
                }
            });
            jn2 jn2Var = jn2.INSTANCE;
            n39 n39Var = new n39();
            n39Var.j = new n39.a(jsVarZzb);
            jn2Var.execute(n39Var);
            obj = n39Var;
        } else {
            ks ksVarZzc = zzxa.zzc(new ks() { // from class: vfc
                @Override // defpackage.ks
                public final /* synthetic */ ListenableFuture apply(Object obj2) {
                    return this.a.a(i);
                }
            });
            lp7 lp7Var = this.e;
            int i3 = p.m;
            p.a aVar = new p.a(listenableFuture, Throwable.class, ksVarZzc);
            listenableFuture.addListener(aVar, nd5.a(lp7Var, aVar));
            obj = aVar;
        }
        nr7Var2.n(obj);
        xfc xfcVar = new xfc(this, i);
        nr7Var2.addListener(new vub(this, nr7Var2, xfcVar, i2), jn2.INSTANCE);
        return xfcVar;
    }
}
