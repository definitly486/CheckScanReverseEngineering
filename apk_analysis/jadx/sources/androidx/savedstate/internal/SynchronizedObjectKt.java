package androidx.savedstate.internal;

import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class SynchronizedObjectKt {
    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <T> T m9495synchronized(SynchronizedObject synchronizedObject, ll3<? extends T> ll3Var) {
        T tInvoke;
        synchronizedObject.getClass();
        ll3Var.getClass();
        synchronized (synchronizedObject) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
