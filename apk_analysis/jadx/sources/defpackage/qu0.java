package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {3093}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", v = 1)
public final class qu0 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ mu0<Object> m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qu0(mu0 mu0Var, f02 f02Var) {
        super(f02Var);
        this.m = mu0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        AtomicLongFieldUpdater atomicLongFieldUpdater = mu0.e;
        Object objD = this.m.D(null, 0, 0L, this);
        return objD == a32.COROUTINE_SUSPENDED ? objD : new p91(objD);
    }
}
