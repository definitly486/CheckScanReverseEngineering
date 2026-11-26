package androidx.paging.internal;

import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class SynchronizedLockKt {
    public static final <T> T withLock(SynchronizedLock synchronizedLock, ll3<? extends T> ll3Var) {
        T tInvoke;
        synchronizedLock.getClass();
        ll3Var.getClass();
        synchronized (synchronizedLock) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
