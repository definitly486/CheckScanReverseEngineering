package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class h40 implements hd3<String> {
    public final /* synthetic */ hd3 b;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;

        /* JADX INFO: renamed from: h40$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$fetchControlLink$$inlined$map$1$2", f = "BalanceInteractor.kt", l = {217}, m = "emit")
        public static final class C0194a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0194a(e02 e02Var) {
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
            C0194a c0194a;
            if (e02Var instanceof C0194a) {
                c0194a = (C0194a) e02Var;
                int i = c0194a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0194a.m = i - Integer.MIN_VALUE;
                } else {
                    c0194a = new C0194a(e02Var);
                }
            } else {
                c0194a = new C0194a(e02Var);
            }
            Object obj2 = c0194a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0194a.m;
            if (i2 == 0) {
                r57.b(obj2);
                String strA = ((uc) obj).a();
                if (strA == null) {
                    strA = "";
                }
                c0194a.m = 1;
                if (this.b.emit(strA, c0194a) == a32Var) {
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

    public h40(hd3 hd3Var) {
        this.b = hd3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super String> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
