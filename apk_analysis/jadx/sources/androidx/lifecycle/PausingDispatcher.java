package androidx.lifecycle;

import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.r22;
import defpackage.uy4;

/* JADX INFO: loaded from: classes3.dex */
public final class PausingDispatcher extends r22 {
    public final DispatchQueue dispatchQueue = new DispatchQueue();

    @Override // defpackage.r22
    public void dispatch(o22 o22Var, Runnable runnable) {
        o22Var.getClass();
        runnable.getClass();
        this.dispatchQueue.dispatchAndEnqueue(o22Var, runnable);
    }

    @Override // defpackage.r22
    public boolean isDispatchNeeded(o22 o22Var) {
        o22Var.getClass();
        oi2 oi2Var = qo2.a;
        if (uy4.a.k0().isDispatchNeeded(o22Var)) {
            return true;
        }
        return !this.dispatchQueue.canRun();
    }
}
