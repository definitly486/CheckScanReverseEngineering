package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.account.domain.interactors.UpdateUserInfoInteractor$invoke$2", f = "UpdateUserInfoInteractor.kt", l = {}, m = "invokeSuspend")
public final class d89 extends pg8 implements bm3<y22, e02<? super mb4>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ e89 m;

    @bd2(c = "com.warefly.checkscan.account.domain.interactors.UpdateUserInfoInteractor$invoke$2$1", f = "UpdateUserInfoInteractor.kt", l = {18}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ e89 m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e89 e89Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.m = e89Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new a(this.m, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                ro7 ro7Var = this.m.b;
                this.l = 1;
                if (ro7Var.a(this) == a32Var) {
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

    @bd2(c = "com.warefly.checkscan.account.domain.interactors.UpdateUserInfoInteractor$invoke$2$2", f = "UpdateUserInfoInteractor.kt", l = {19}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ e89 m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e89 e89Var, e02<? super b> e02Var) {
            super(2, e02Var);
            this.m = e89Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new b(this.m, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                q79 q79Var = this.m.a;
                this.l = 1;
                if (q79Var.a(this) == a32Var) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d89(e89 e89Var, e02<? super d89> e02Var) {
        super(2, e02Var);
        this.m = e89Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        d89 d89Var = new d89(this.m, e02Var);
        d89Var.l = obj;
        return d89Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super mb4> e02Var) {
        return ((d89) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        y22 y22Var = (y22) this.l;
        e89 e89Var = this.m;
        av0.c(y22Var, null, null, new a(e89Var, null), 3);
        return av0.c(y22Var, null, null, new b(e89Var, null), 3);
    }
}
