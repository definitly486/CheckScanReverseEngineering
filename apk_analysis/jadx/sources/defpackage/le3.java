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
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r10, defpackage.e02<? super defpackage.j59> r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof le3.a
            if (r0 == 0) goto L13
            r0 = r11
            le3$a r0 = (le3.a) r0
            int r1 = r0.o
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.o = r1
            goto L18
        L13:
            le3$a r0 = new le3$a
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.m
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.o
            r3 = 0
            id3<T> r4 = r9.c
            n07 r5 = r9.b
            r6 = 3
            r7 = 2
            r8 = 1
            if (r2 == 0) goto L42
            if (r2 == r8) goto L3e
            if (r2 == r7) goto L38
            if (r2 != r6) goto L32
            defpackage.r57.b(r11)
            goto L79
        L32:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r3
        L38:
            java.lang.Object r10 = r0.l
            defpackage.r57.b(r11)
            goto L64
        L3e:
            defpackage.r57.b(r11)
            goto L54
        L42:
            defpackage.r57.b(r11)
            boolean r11 = r5.b
            if (r11 == 0) goto L57
            r0.l = r3
            r0.o = r8
            java.lang.Object r9 = r4.emit(r10, r0)
            if (r9 != r1) goto L54
            goto L78
        L54:
            j59 r9 = defpackage.j59.a
            return r9
        L57:
            r0.l = r10
            r0.o = r7
            bm3<T, e02<? super java.lang.Boolean>, java.lang.Object> r9 = r9.d
            java.lang.Object r11 = r9.invoke(r10, r0)
            if (r11 != r1) goto L64
            goto L78
        L64:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r9 = r11.booleanValue()
            if (r9 != 0) goto L7c
            r5.b = r8
            r0.l = r3
            r0.o = r6
            java.lang.Object r9 = r4.emit(r10, r0)
            if (r9 != r1) goto L79
        L78:
            return r1
        L79:
            j59 r9 = defpackage.j59.a
            return r9
        L7c:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.le3.emit(java.lang.Object, e02):java.lang.Object");
    }
}
