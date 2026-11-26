package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.RealImageLoader$execute$2", f = "RealImageLoader.kt", l = {88}, m = "invokeSuspend", v = 1)
public final class uy6 extends pg8 implements bm3<y22, e02<? super g24>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ sy6 n;
    public final /* synthetic */ b24 o;

    @bd2(c = "coil3.RealImageLoader$execute$2$job$1", f = "RealImageLoader.kt", l = {84}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<y22, e02<? super g24>, Object> {
        public int l;
        public final /* synthetic */ sy6 m;
        public final /* synthetic */ b24 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(sy6 sy6Var, b24 b24Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.m = sy6Var;
            this.n = b24Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new a(this.m, this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super g24> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
            Object objB = this.m.b(this.n, 1, this);
            return objB == a32Var ? a32Var : objB;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uy6(sy6 sy6Var, b24 b24Var, e02<? super uy6> e02Var) {
        super(2, e02Var);
        this.n = sy6Var;
        this.o = b24Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        uy6 uy6Var = new uy6(this.n, this.o, e02Var);
        uy6Var.m = obj;
        return uy6Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super g24> e02Var) {
        return ((uy6) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
        y22 y22Var = (y22) this.m;
        sy6 sy6Var = this.n;
        o22 o22Var = (o22) sy6Var.a.c.getValue();
        b24 b24Var = this.o;
        mk2<g24> mk2VarA = cz6.a(b24Var, av0.a(y22Var, o22Var, null, new a(sy6Var, b24Var, null), 2)).a();
        this.l = 1;
        Object objZ = mk2VarA.Z(this);
        return objZ == a32Var ? a32Var : objZ;
    }
}
