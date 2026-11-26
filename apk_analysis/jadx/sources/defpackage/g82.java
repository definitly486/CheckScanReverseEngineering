package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.interactor.DailyTaskInteractor$getReward$3", f = "DailyTaskInteractor.kt", l = {}, m = "invokeSuspend")
public final class g82 extends pg8 implements bm3<d82.a, e02<? super j59>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ d82 m;
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g82(d82 d82Var, int i, e02<? super g82> e02Var) {
        super(2, e02Var);
        this.m = d82Var;
        this.n = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        g82 g82Var = new g82(this.m, this.n, e02Var);
        g82Var.l = obj;
        return g82Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(d82.a aVar, e02<? super j59> e02Var) {
        return ((g82) create(aVar, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        if (!(((d82.a) this.l) instanceof d82.a.C0178a)) {
            int i = this.n;
            d82 d82Var = this.m;
            d82Var.a(i);
            d82Var.b.C(false);
            z68 z68Var = d82Var.f;
            Boolean bool = Boolean.FALSE;
            z68Var.getClass();
            z68Var.k(null, bool);
        }
        return j59.a;
    }
}
