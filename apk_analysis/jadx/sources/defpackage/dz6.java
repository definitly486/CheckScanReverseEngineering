package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.intercept.RealInterceptorChain", f = "RealInterceptorChain.kt", l = {31}, m = "proceed", v = 1)
public final class dz6 extends f02 {
    public e94 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ fz6 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dz6(fz6 fz6Var, f02 f02Var) {
        super(f02Var);
        this.n = fz6Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(this);
    }
}
