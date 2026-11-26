package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$setUpBonusesScreen$1", f = "BonusBlockInteractor.kt", l = {}, m = "invokeSuspend")
public final class jn0 extends pg8 implements bm3<bo0.a, e02<? super j59>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ wl0 m;
    public final /* synthetic */ y22 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jn0(wl0 wl0Var, y22 y22Var, e02<? super jn0> e02Var) {
        super(2, e02Var);
        this.m = wl0Var;
        this.n = y22Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        jn0 jn0Var = new jn0(this.m, this.n, e02Var);
        jn0Var.l = obj;
        return jn0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(bo0.a aVar, e02<? super j59> e02Var) {
        return ((jn0) create(aVar, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        if (aa4.e((bo0.a) this.l, bo0.a.C0121a.a)) {
            wl0 wl0Var = this.m;
            wl0Var.getClass();
            px.h(wl0Var.k(false), this.n);
        }
        return j59.a;
    }
}
