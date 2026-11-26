package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class np2<T> implements hd3<T> {
    public final hd3<T> b;
    public final nl3<T, Object> c;
    public final bm3<Object, Object, Boolean> d;

    public static final class a<T> implements id3 {
        public final /* synthetic */ np2<T> b;
        public final /* synthetic */ r07<Object> c;
        public final /* synthetic */ id3<T> d;

        /* JADX INFO: renamed from: np2$a$a, reason: collision with other inner class name */
        @bd2(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2", f = "Distinct.kt", l = {73}, m = "emit", v = 1)
        public static final class C0305a extends f02 {
            public /* synthetic */ Object l;
            public final /* synthetic */ a<T> m;
            public int n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0305a(a<? super T> aVar, e02<? super C0305a> e02Var) {
                super(e02Var);
                this.m = aVar;
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.n |= Integer.MIN_VALUE;
                return this.m.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(np2<T> np2Var, r07<Object> r07Var, id3<? super T> id3Var) {
            this.b = np2Var;
            this.c = r07Var;
            this.d = id3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // defpackage.id3
        public final Object emit(T t, e02<? super j59> e02Var) {
            C0305a c0305a;
            if (e02Var instanceof C0305a) {
                c0305a = (C0305a) e02Var;
                int i = c0305a.n;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0305a.n = i - Integer.MIN_VALUE;
                } else {
                    c0305a = new C0305a(this, e02Var);
                }
            } else {
                c0305a = new C0305a(this, e02Var);
            }
            Object obj = c0305a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0305a.n;
            if (i2 == 0) {
                r57.b(obj);
                np2<T> np2Var = this.b;
                T t2 = (T) np2Var.c.invoke(t);
                r07<Object> r07Var = this.c;
                Object obj2 = r07Var.b;
                if (obj2 != aq5.b && np2Var.d.invoke(obj2, t2).booleanValue()) {
                    return j59.a;
                }
                r07Var.b = t2;
                c0305a.n = 1;
                if (this.d.emit(t, c0305a) == a32Var) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public np2(hd3<? extends T> hd3Var, nl3<? super T, ? extends Object> nl3Var, bm3<Object, Object, Boolean> bm3Var) {
        this.b = hd3Var;
        this.c = nl3Var;
        this.d = bm3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<? super j59> e02Var) {
        r07 r07Var = new r07();
        r07Var.b = (T) aq5.b;
        Object objCollect = this.b.collect(new a(this, r07Var, id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
