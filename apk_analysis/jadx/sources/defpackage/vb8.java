package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vb8<T> implements ys7<T> {
    public final zs7 b;
    public final bm3<id3<? super T>, e02<? super j59>, Object> c;

    @bd2(c = "kotlinx.coroutines.flow.SubscribedSharedFlow", f = "Share.kt", l = {442}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public final /* synthetic */ vb8<T> m;
        public int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(vb8<T> vb8Var, e02<? super a> e02Var) {
            super(e02Var);
            this.m = vb8Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.n |= Integer.MIN_VALUE;
            return this.m.collect(null, this);
        }
    }

    public vb8(zs7 zs7Var, bm3 bm3Var) {
        this.b = zs7Var;
        this.c = bm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<?> e02Var) {
        a aVar;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.n = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(this, e02Var);
            }
        } else {
            aVar = new a(this, e02Var);
        }
        Object obj = aVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.n;
        if (i2 == 0) {
            r57.b(obj);
            ub8 ub8Var = new ub8(id3Var, this.c);
            aVar.n = 1;
            if (zs7.m(this.b, ub8Var, aVar) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }
}
