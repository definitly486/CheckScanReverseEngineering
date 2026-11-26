package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cf3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;

        /* JADX INFO: renamed from: cf3$a$a, reason: collision with other inner class name */
        @bd2(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {217}, m = "emit", v = 1)
        public static final class C0123a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0123a(e02 e02Var) {
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
        public final Object emit(T t, e02<? super j59> e02Var) {
            C0123a c0123a;
            if (e02Var instanceof C0123a) {
                c0123a = (C0123a) e02Var;
                int i = c0123a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0123a.m = i - Integer.MIN_VALUE;
                } else {
                    c0123a = new C0123a(e02Var);
                }
            } else {
                c0123a = new C0123a(e02Var);
            }
            Object obj = c0123a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0123a.m;
            if (i2 == 0) {
                r57.b(obj);
                if (t != null) {
                    c0123a.m = 1;
                    if (this.b.emit(t, c0123a) == a32Var) {
                        return a32Var;
                    }
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public cf3(hd3 hd3Var) {
        this.b = hd3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
