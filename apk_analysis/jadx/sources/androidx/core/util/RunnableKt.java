package androidx.core.util;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class RunnableKt {
    public static final Runnable asRunnable(e02<? super j59> e02Var) {
        return new ContinuationRunnable(e02Var);
    }
}
