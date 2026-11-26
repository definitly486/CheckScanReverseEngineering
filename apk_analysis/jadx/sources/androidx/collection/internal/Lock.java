package androidx.collection.internal;

import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class Lock {
    public final <T> T synchronizedImpl(ll3<? extends T> ll3Var) {
        T tInvoke;
        ll3Var.getClass();
        synchronized (this) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
