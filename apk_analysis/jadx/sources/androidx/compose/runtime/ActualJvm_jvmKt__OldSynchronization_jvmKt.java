package androidx.compose.runtime;

import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class ActualJvm_jvmKt__OldSynchronization_jvmKt {
    @ul2
    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <R> R m5312synchronized(Object obj, ll3<? extends R> ll3Var) {
        R rInvoke;
        synchronized (obj) {
            rInvoke = ll3Var.invoke();
        }
        return rInvoke;
    }
}
