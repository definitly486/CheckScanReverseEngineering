package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$hideHidableBanner$1", f = "BalanceInteractor.kt", l = {275}, m = "invokeSuspend")
public final class t40 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ b40 m;
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t40(int i, b40 b40Var, e02 e02Var) {
        super(2, e02Var);
        this.m = b40Var;
        this.n = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new t40(this.n, this.m, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((t40) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            n60 n60Var = this.m.a;
            this.l = 1;
            if (n60Var.t(this.n, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
