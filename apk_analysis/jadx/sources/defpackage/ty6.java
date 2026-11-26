package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.RealImageLoader$enqueue$job$1", f = "RealImageLoader.kt", l = {68}, m = "invokeSuspend", v = 1)
public final class ty6 extends pg8 implements bm3<y22, e02<? super g24>, Object> {
    public int l;
    public final /* synthetic */ sy6 m;
    public final /* synthetic */ b24 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ty6(sy6 sy6Var, b24 b24Var, e02<? super ty6> e02Var) {
        super(2, e02Var);
        this.m = sy6Var;
        this.n = b24Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ty6(this.m, this.n, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super g24> e02Var) {
        return ((ty6) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.l = 1;
        int i2 = sy6.f;
        Object objB = this.m.b(this.n, 0, this);
        return objB == a32Var ? a32Var : objB;
    }
}
