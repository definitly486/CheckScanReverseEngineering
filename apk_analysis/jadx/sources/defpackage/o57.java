package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class o57 implements hd3<i57<Object>> {
    public final /* synthetic */ hd3 b;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;

        /* JADX INFO: renamed from: o57$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.component.coroutines.ResultKt$asResult$$inlined$map$1$2", f = "Result.kt", l = {217}, m = "emit")
        public static final class C0307a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0307a(e02 e02Var) {
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
            C0307a c0307a;
            if (e02Var instanceof C0307a) {
                c0307a = (C0307a) e02Var;
                int i = c0307a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0307a.m = i - Integer.MIN_VALUE;
                } else {
                    c0307a = new C0307a(e02Var);
                }
            } else {
                c0307a = new C0307a(e02Var);
            }
            Object obj2 = c0307a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0307a.m;
            if (i2 == 0) {
                r57.b(obj2);
                i57.c cVar = new i57.c(obj);
                c0307a.m = 1;
                if (this.b.emit(cVar, c0307a) == a32Var) {
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

    public o57(hd3 hd3Var) {
        this.b = hd3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super i57<Object>> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
