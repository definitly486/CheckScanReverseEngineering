package androidx.compose.ui.text.platform;

import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class Synchronization_jvmKt {
    public static final SynchronizedObject makeSynchronizedObject(Object obj) {
        return new SynchronizedObject();
    }

    public static /* synthetic */ SynchronizedObject makeSynchronizedObject$default(Object obj, int i, Object obj2) {
        return new SynchronizedObject();
    }

    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <R> R m8761synchronized(SynchronizedObject synchronizedObject, ll3<? extends R> ll3Var) {
        R rInvoke;
        synchronized (synchronizedObject) {
            rInvoke = ll3Var.invoke();
        }
        return rInvoke;
    }
}
