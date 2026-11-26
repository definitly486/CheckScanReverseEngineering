package androidx.paging.internal;

import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class SynchronizedLock {
    public final <T> T withLockImpl(ll3<? extends T> ll3Var) {
        T tInvoke;
        ll3Var.getClass();
        synchronized (this) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
