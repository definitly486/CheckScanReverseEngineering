package androidx.core.os;

import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class HandlerKt$postAtTime$runnable$1 implements Runnable {
    final /* synthetic */ ll3<j59> $action;

    public HandlerKt$postAtTime$runnable$1(ll3<j59> ll3Var) {
        this.$action = ll3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke();
    }
}
