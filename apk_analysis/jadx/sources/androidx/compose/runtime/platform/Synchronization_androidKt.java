package androidx.compose.runtime.platform;

import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class Synchronization_androidKt {
    public static final Object makeSynchronizedObject(Object obj) {
        return obj == null ? new Object() : obj;
    }

    public static /* synthetic */ Object makeSynchronizedObject$default(Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return obj == null ? new Object() : obj;
    }

    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <R> R m5601synchronized(Object obj, ll3<? extends R> ll3Var) {
        R rInvoke;
        synchronized (obj) {
            rInvoke = ll3Var.invoke();
        }
        return rInvoke;
    }
}
