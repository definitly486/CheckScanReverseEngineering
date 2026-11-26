package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class t26 implements hd3<Integer> {
    public final /* synthetic */ z68 b;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;

        /* JADX INFO: renamed from: t26$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.core.ui.paginator.Paginator$special$$inlined$filter$1$2", f = "Paginator.kt", l = {50}, m = "emit")
        public static final class C0334a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0334a(e02 e02Var) {
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
            C0334a c0334a;
            if (e02Var instanceof C0334a) {
                c0334a = (C0334a) e02Var;
                int i = c0334a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0334a.m = i - Integer.MIN_VALUE;
                } else {
                    c0334a = new C0334a(e02Var);
                }
            } else {
                c0334a = new C0334a(e02Var);
            }
            Object obj2 = c0334a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0334a.m;
            if (i2 == 0) {
                r57.b(obj2);
                if (((Number) obj).intValue() != -1) {
                    c0334a.m = 1;
                    if (this.b.emit(obj, c0334a) == a32Var) {
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

    public t26(z68 z68Var) {
        this.b = z68Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Integer> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
