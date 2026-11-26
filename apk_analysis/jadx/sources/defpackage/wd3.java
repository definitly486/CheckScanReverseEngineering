package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", l = {WebmConstants.MkvEbmlElement.TRACK_NUMBER, 415}, m = "invokeSuspend", v = 1)
public final class wd3 extends pg8 implements dm3<y22, id3<Object>, e02<? super j59>, Object> {
    public qz6 l;
    public r07 m;
    public q07 n;
    public int o;
    public /* synthetic */ y22 p;
    public /* synthetic */ id3 q;
    public final /* synthetic */ vd3 r;
    public final /* synthetic */ hd3<Object> s;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", l = {226}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements nl3<e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ id3<Object> m;
        public final /* synthetic */ r07<Object> n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e02 e02Var, id3 id3Var, r07 r07Var) {
            super(1, e02Var);
            this.m = id3Var;
            this.n = r07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new a(e02Var, this.m, this.n);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((a) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            r07<Object> r07Var = this.n;
            if (i == 0) {
                r57.b(obj);
                bh8 bh8Var = aq5.b;
                Object obj2 = r07Var.b;
                if (obj2 == bh8Var) {
                    obj2 = null;
                }
                this.l = 1;
                if (this.m.emit(obj2, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            r07Var.b = null;
            return j59.a;
        }
    }

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", l = {WebmConstants.MkvEbmlElement.VOID}, m = "invokeSuspend", v = 1)
    public static final class b extends pg8 implements bm3<p91<? extends Object>, e02<? super j59>, Object> {
        public r07 l;
        public int m;
        public /* synthetic */ Object n;
        public final /* synthetic */ r07<Object> o;
        public final /* synthetic */ id3<Object> p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e02 e02Var, id3 id3Var, r07 r07Var) {
            super(2, e02Var);
            this.o = r07Var;
            this.p = id3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = new b(e02Var, this.p, this.o);
            bVar.n = ((p91) obj).a;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(p91<? extends Object> p91Var, e02<? super j59> e02Var) {
            Object obj = p91Var.a;
            b bVar = new b(e02Var, this.p, this.o);
            bVar.n = obj;
            return bVar.invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v4, types: [T, bh8] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            r07<Object> r07Var;
            r07<Object> r07Var2;
            ?? r0 = this.n;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.m;
            if (i == 0) {
                r57.b(obj);
                boolean z = r0 instanceof p91.b;
                r07Var = this.o;
                if (!z) {
                    r07Var.b = r0;
                }
                if (z) {
                    Throwable thA = p91.a(r0);
                    if (thA != null) {
                        throw thA;
                    }
                    Object obj2 = r07Var.b;
                    if (obj2 != null) {
                        if (obj2 == aq5.b) {
                            obj2 = null;
                        }
                        this.n = null;
                        this.l = r07Var;
                        this.m = 1;
                        if (this.p.emit(obj2, this) == a32Var) {
                            return a32Var;
                        }
                        r07Var2 = r07Var;
                    }
                    r07Var.b = aq5.d;
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var2 = this.l;
            r57.b(obj);
            r07Var = r07Var2;
            r07Var.b = aq5.d;
            return j59.a;
        }
    }

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", l = {204}, m = "invokeSuspend", v = 1)
    public static final class c extends pg8 implements bm3<ug6<? super Object>, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ hd3<Object> n;

        public static final class a<T> implements id3 {
            public final /* synthetic */ ug6<Object> b;

            /* JADX INFO: renamed from: wd3$c$a$a, reason: collision with other inner class name */
            @bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1", f = "Delay.kt", l = {204}, m = "emit", v = 1)
            public static final class C0349a extends f02 {
                public /* synthetic */ Object l;
                public final /* synthetic */ a<T> m;
                public int n;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C0349a(a<? super T> aVar, e02<? super C0349a> e02Var) {
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

            public a(ug6<Object> ug6Var) {
                this.b = ug6Var;
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
                C0349a c0349a;
                if (e02Var instanceof C0349a) {
                    c0349a = (C0349a) e02Var;
                    int i = c0349a.n;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0349a.n = i - Integer.MIN_VALUE;
                    } else {
                        c0349a = new C0349a(this, e02Var);
                    }
                } else {
                    c0349a = new C0349a(this, e02Var);
                }
                Object obj = c0349a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0349a.n;
                if (i2 == 0) {
                    r57.b(obj);
                    if (t == null) {
                        t = (T) aq5.b;
                    }
                    c0349a.n = 1;
                    if (this.b.send(t, c0349a) == a32Var) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(hd3<Object> hd3Var, e02<? super c> e02Var) {
            super(2, e02Var);
            this.n = hd3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = new c(this.n, e02Var);
            cVar.m = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super Object> ug6Var, e02<? super j59> e02Var) {
            return ((c) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            ug6 ug6Var = (ug6) this.m;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                a aVar = new a(ug6Var);
                this.m = null;
                this.l = 1;
                if (this.n.collect(aVar, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wd3(vd3 vd3Var, hd3 hd3Var, e02 e02Var) {
        super(3, e02Var);
        this.r = vd3Var;
        this.s = hd3Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(y22 y22Var, id3<Object> id3Var, e02<? super j59> e02Var) {
        wd3 wd3Var = new wd3(this.r, this.s, e02Var);
        wd3Var.p = y22Var;
        wd3Var.q = id3Var;
        return wd3Var.invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005c  */
    /* JADX WARN: Code duplicated, block: B:16:0x0065  */
    /* JADX WARN: Code duplicated, block: B:18:0x007b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0097 A[PHI: r1 r2 r4 r9
      0x0097: PHI (r1v3 q07) = (r1v5 q07), (r1v7 q07), (r1v7 q07) binds: [B:25:0x0095, B:15:0x0063, B:18:0x007b] A[DONT_GENERATE, DONT_INLINE]
      0x0097: PHI (r2v1 id3) = (r2v7 id3), (r2v8 id3), (r2v8 id3) binds: [B:25:0x0095, B:15:0x0063, B:18:0x007b] A[DONT_GENERATE, DONT_INLINE]
      0x0097: PHI (r4v3 r07) = (r4v5 r07), (r4v6 r07), (r4v6 r07) binds: [B:25:0x0095, B:15:0x0063, B:18:0x007b] A[DONT_GENERATE, DONT_INLINE]
      0x0097: PHI (r9v4 ??) = (r9v14 ??), (r9v15 ??), (r9v16 ??) binds: [B:25:0x0095, B:15:0x0063, B:18:0x007b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x009e  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f6  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [qz6] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [qz6] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f6 -> B:7:0x001c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wd3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
