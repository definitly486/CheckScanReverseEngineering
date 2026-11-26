package androidx.datastore.core.okio;

import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class Synchronizer {
    public final <T> T withLock(ll3<? extends T> ll3Var) {
        T tInvoke;
        ll3Var.getClass();
        synchronized (this) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
