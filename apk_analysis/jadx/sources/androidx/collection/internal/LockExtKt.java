package androidx.collection.internal;

import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class LockExtKt {
    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <T> T m1039synchronized(Lock lock, ll3<? extends T> ll3Var) {
        T tInvoke;
        lock.getClass();
        ll3Var.getClass();
        synchronized (lock) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
