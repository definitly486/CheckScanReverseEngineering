package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ds5 implements hd3<ka7.a> {
    public final /* synthetic */ ce3 b;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;

        /* JADX INFO: renamed from: ds5$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.auth.domain.useCases.ObserveCallVerifiedUseCase$invoke$$inlined$filter$1$2", f = "ObserveCallVerifiedUseCase.kt", l = {217}, m = "emit")
        public static final class C0180a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0180a(e02 e02Var) {
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
            C0180a c0180a;
            if (e02Var instanceof C0180a) {
                c0180a = (C0180a) e02Var;
                int i = c0180a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0180a.m = i - Integer.MIN_VALUE;
                } else {
                    c0180a = new C0180a(e02Var);
                }
            } else {
                c0180a = new C0180a(e02Var);
            }
            Object obj2 = c0180a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0180a.m;
            if (i2 == 0) {
                r57.b(obj2);
                if (((ka7.a) obj).a instanceof w97) {
                    c0180a.m = 1;
                    if (this.b.emit(obj, c0180a) == a32Var) {
                        return a32Var;
                    }
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

    public ds5(ce3 ce3Var) {
        this.b = ce3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super ka7.a> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
