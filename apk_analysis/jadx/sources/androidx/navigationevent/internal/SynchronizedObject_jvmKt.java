package androidx.navigationevent.internal;

import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class SynchronizedObject_jvmKt {
    public static final <T> T synchronizedImpl(SynchronizedObject synchronizedObject, ll3<? extends T> ll3Var) {
        T tInvoke;
        synchronizedObject.getClass();
        ll3Var.getClass();
        synchronized (synchronizedObject) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
