package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ef3<T> implements id3 {
    public final /* synthetic */ id3<j44<? extends T>> b;
    public final /* synthetic */ p07 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1", f = "Transform.kt", l = {67}, m = "emit", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public final /* synthetic */ ef3<T> m;
        public int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(ef3<? super T> ef3Var, e02<? super a> e02Var) {
            super(e02Var);
            this.m = ef3Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.n |= Integer.MIN_VALUE;
            return this.m.emit(null, this);
        }
    }

    public ef3(p07 p07Var, id3 id3Var) {
        this.b = id3Var;
        this.c = p07Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.id3
    public final Object emit(T t, e02<? super j59> e02Var) {
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
            p07 p07Var = this.c;
            int i3 = p07Var.b;
            p07Var.b = i3 + 1;
            if (i3 < 0) {
                throw new ArithmeticException("Index overflow has happened");
            }
            j44<? extends T> j44Var = new j44<>(i3, t);
            aVar.n = 1;
            if (this.b.emit(j44Var, aVar) == a32Var) {
                return a32Var;
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
