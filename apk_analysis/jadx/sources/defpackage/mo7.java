package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class mo7 {
    public final hc1 a;
    public final y22 b;

    @bd2(c = "com.warefly.checkscan.core.analytics.domain.useCases.SendBannerWatchUseCase$invoke$1", f = "SendBannerWatchUseCase.kt", l = {13}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, e02<? super a> e02Var) {
            super(2, e02Var);
            this.n = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return mo7.this.new a(this.n, e02Var);
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
                hc1 hc1Var = mo7.this.a;
                this.l = 1;
                if (hc1Var.a(this.n, this) == a32Var) {
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

    public mo7(hc1 hc1Var, y22 y22Var) {
        this.a = hc1Var;
        this.b = y22Var;
    }

    public final void a(int i) {
        av0.c(this.b, null, null, new a(i, null), 3);
    }
}
