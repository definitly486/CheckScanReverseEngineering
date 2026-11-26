package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {736}, m = "receiveCatching-JP2dKIU$suspendImpl", v = 1)
public final class pu0<E> extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ mu0<E> m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pu0(mu0 mu0Var, f02 f02Var) {
        super(f02Var);
        this.m = mu0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        Object objC = mu0.C(this.m, this);
        return objC == a32.COROUTINE_SUSPENDED ? objC : new p91(objC);
    }
}
