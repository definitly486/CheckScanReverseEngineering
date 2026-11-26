package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class is5 implements hd3<j59> {
    public final /* synthetic */ hs5 b;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;

        /* JADX INFO: renamed from: is5$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.domain.interactor.balance.ObserveTransferShowcaseUpdatesUseCase$invoke$$inlined$map$1$2", f = "ObserveTransferShowcaseUpdatesUseCase.kt", l = {217}, m = "emit")
        public static final class C0209a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0209a(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.m |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(id3 id3Var) {
            this.b = id3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // defpackage.id3
        public final Object emit(Object obj, e02 e02Var) {
            C0209a c0209a;
            if (e02Var instanceof C0209a) {
                c0209a = (C0209a) e02Var;
                int i = c0209a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0209a.m = i - Integer.MIN_VALUE;
                } else {
                    c0209a = new C0209a(e02Var);
                }
            } else {
                c0209a = new C0209a(e02Var);
            }
            Object obj2 = c0209a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0209a.m;
            if (i2 == 0) {
                r57.b(obj2);
                j59 j59Var = j59.a;
                c0209a.m = 1;
                if (this.b.emit(j59Var, c0209a) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj2);
            }
            return j59.a;
        }
    }

    public is5(hs5 hs5Var) {
        this.b = hs5Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super j59> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
