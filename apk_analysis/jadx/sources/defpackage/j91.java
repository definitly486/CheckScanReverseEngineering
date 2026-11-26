package defpackage;

import kotlinx.coroutines.flow.internal.ChildCancelledException;

/* JADX INFO: loaded from: classes5.dex */
public final class j91<T, R> extends h91<T, R> {
    public final dm3<id3<? super R>, T, e02<? super j59>, Object> f;

    @bd2(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {23}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ j91<T, R> n;
        public final /* synthetic */ id3<R> o;

        /* JADX INFO: renamed from: j91$a$a, reason: collision with other inner class name */
        public static final class C0211a<T> implements id3 {
            public final /* synthetic */ r07<mb4> b;
            public final /* synthetic */ y22 c;
            public final /* synthetic */ j91<T, R> d;
            public final /* synthetic */ id3<R> e;

            /* JADX INFO: renamed from: j91$a$a$a, reason: collision with other inner class name */
            @bd2(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {30}, m = "invokeSuspend", v = 1)
            public static final class C0212a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                public int l;
                public final /* synthetic */ j91<T, R> m;
                public final /* synthetic */ id3<R> n;
                public final /* synthetic */ T o;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C0212a(j91<T, R> j91Var, id3<? super R> id3Var, T t, e02<? super C0212a> e02Var) {
                    super(2, e02Var);
                    this.m = j91Var;
                    this.n = id3Var;
                    this.o = t;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C0212a(this.m, this.n, this.o, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C0212a) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Type inference incomplete: some casts might be missing */
                /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                    jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to j91$a$a$a for r3v3 'this'  java.lang.Object
                    	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                    	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                    	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                    	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                    	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                    */
                @Override // defpackage.cd0
                public final java.lang.Object invokeSuspend(java.lang.Object r4) {
                    /*
                        r3 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r3.l
                        r2 = 1
                        if (r1 == 0) goto L14
                        if (r1 != r2) goto Ld
                        defpackage.r57.b(r4)
                        goto L28
                    Ld:
                        java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r3)
                        r3 = 0
                        return r3
                    L14:
                        defpackage.r57.b(r4)
                        j91<T, R> r4 = r3.m
                        dm3<id3<? super R>, T, e02<? super j59>, java.lang.Object> r4 = r4.f
                        r3.l = r2
                        id3<R> r1 = r3.n
                        T r2 = r3.o
                        java.lang.Object r3 = r4.invoke(r1, r2, r3)
                        if (r3 != r0) goto L28
                        return r0
                    L28:
                        j59 r3 = defpackage.j59.a
                        return r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: j91.a.C0211a.C0212a.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX INFO: renamed from: j91$a$a$b */
            @bd2(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1", f = "Merge.kt", l = {26}, m = "emit", v = 1)
            public static final class b extends f02 {
                public Object l;
                public mb4 m;
                public /* synthetic */ Object n;
                public final /* synthetic */ C0211a<T> o;
                public int p;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public b(C0211a<? super T> c0211a, e02<? super b> e02Var) {
                    super(e02Var);
                    this.o = c0211a;
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.n = obj;
                    this.p |= Integer.MIN_VALUE;
                    return this.o.emit(null, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public C0211a(r07<mb4> r07Var, y22 y22Var, j91<T, R> j91Var, id3<? super R> id3Var) {
                this.b = r07Var;
                this.c = y22Var;
                this.d = j91Var;
                this.e = id3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(T t, e02<? super j59> e02Var) {
                b bVar;
                if (e02Var instanceof b) {
                    bVar = (b) e02Var;
                    int i = bVar.p;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        bVar.p = i - Integer.MIN_VALUE;
                    } else {
                        bVar = new b(this, e02Var);
                    }
                } else {
                    bVar = new b(this, e02Var);
                }
                Object obj = bVar.n;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = bVar.p;
                r07<mb4> r07Var = this.b;
                if (i2 == 0) {
                    r57.b(obj);
                    mb4 mb4Var = r07Var.b;
                    if (mb4Var != null) {
                        mb4Var.cancel(new ChildCancelledException());
                        bVar.l = t;
                        bVar.m = mb4Var;
                        bVar.p = 1;
                        if (mb4Var.e0(bVar) == a32Var) {
                            return a32Var;
                        }
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    t = (T) bVar.l;
                    r57.b(obj);
                }
                r07Var.b = (T) av0.c(this.c, null, c32.UNDISPATCHED, new C0212a(this.d, this.e, t, null), 1);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(j91<T, R> j91Var, id3<? super R> id3Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.n = j91Var;
            this.o = id3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = new a(this.n, this.o, e02Var);
            aVar.m = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to j91$a for r8v3 'this'  e02
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = r8.m
                y22 r0 = (defpackage.y22) r0
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r8.l
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L18
                if (r2 != r4) goto L12
                defpackage.r57.b(r9)
                goto L36
            L12:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r8)
                return r3
            L18:
                defpackage.r57.b(r9)
                r07 r9 = new r07
                r9.<init>()
                j91<T, R> r2 = r8.n
                hd3<S> r5 = r2.e
                j91$a$a r6 = new j91$a$a
                id3<R> r7 = r8.o
                r6.<init>(r9, r0, r2, r7)
                r8.m = r3
                r8.l = r4
                java.lang.Object r8 = r5.collect(r6, r8)
                if (r8 != r1) goto L36
                return r1
            L36:
                j59 r8 = defpackage.j59.a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: j91.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j91(dm3<? super id3<? super R>, ? super T, ? super e02<? super j59>, ? extends Object> dm3Var, hd3<? extends T> hd3Var, o22 o22Var, int i, cu0 cu0Var) {
        super(i, cu0Var, o22Var, hd3Var);
        this.f = dm3Var;
    }

    @Override // defpackage.d91
    public final d91<R> i(o22 o22Var, int i, cu0 cu0Var) {
        return new j91(this.f, this.e, o22Var, i, cu0Var);
    }

    @Override // defpackage.h91
    public final Object l(id3<? super R> id3Var, e02<? super j59> e02Var) {
        Object objC = z22.c(new a(this, id3Var, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }
}
