package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class le3<T> implements id3 {
    public final /* synthetic */ n07 b;
    public final /* synthetic */ id3<T> c;
    public final /* synthetic */ bm3<T, e02<? super Boolean>, Object> d;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", l = {34, 35, 37}, m = "emit", v = 1)
    public static final class a extends f02 {
        public Object l;
        public /* synthetic */ Object m;
        public final /* synthetic */ le3<T> n;
        public int o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(le3<? super T> le3Var, e02<? super a> e02Var) {
            super(e02Var);
            this.n = le3Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.m = obj;
            this.o |= Integer.MIN_VALUE;
            return this.n.emit(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public le3(n07 n07Var, id3<? super T> id3Var, bm3<? super T, ? super e02<? super Boolean>, ? extends Object> bm3Var) {
        this.b = n07Var;
        this.c = id3Var;
        this.d = bm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006c  */
    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
    
        if (r4.emit(r10, r0) == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
    
        if (r4.emit(r10, r0) == r1) goto L32;
     */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(T t, e02<? super j59> e02Var) {
        a aVar;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.o = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(this, e02Var);
            }
        } else {
            aVar = new a(this, e02Var);
        }
        Object objInvoke = aVar.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.o;
        id3<T> id3Var = this.c;
        n07 n07Var = this.b;
        if (i2 == 0) {
            r57.b(objInvoke);
            if (n07Var.b) {
                aVar.l = null;
                aVar.o = 1;
            } else {
                aVar.l = t;
                aVar.o = 2;
                objInvoke = this.d.invoke(t, aVar);
                if (objInvoke != a32Var) {
                    if (!((Boolean) objInvoke).booleanValue()) {
                        return j59.a;
                    }
                    n07Var.b = true;
                    aVar.l = null;
                    aVar.o = 3;
                }
            }
            return a32Var;
        }
        if (i2 == 1) {
            r57.b(objInvoke);
            return j59.a;
        }
        if (i2 == 2) {
            t = (T) aVar.l;
            r57.b(objInvoke);
            if (!((Boolean) objInvoke).booleanValue()) {
                return j59.a;
            }
            n07Var.b = true;
            aVar.l = null;
            aVar.o = 3;
        } else {
            if (i2 != 3) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objInvoke);
        }
        return j59.a;
    }
}
