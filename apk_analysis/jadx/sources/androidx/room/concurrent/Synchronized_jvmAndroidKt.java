package androidx.room.concurrent;

import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class Synchronized_jvmAndroidKt {
    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <T> T m9357synchronized(Object obj, ll3<? extends T> ll3Var) {
        T tInvoke;
        obj.getClass();
        ll3Var.getClass();
        synchronized (obj) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }
}
