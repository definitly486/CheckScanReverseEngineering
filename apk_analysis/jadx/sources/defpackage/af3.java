package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", l = {210, 214, WebmConstants.MkvEbmlElement.TRACK_NUMBER, 221}, m = "invokeSuspend", v = 1)
public final class af3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ eu7 m;
    public final /* synthetic */ hd3<Object> n;
    public final /* synthetic */ vg5<Object> o;
    public final /* synthetic */ Object p;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<Integer, e02<? super Boolean>, Object> {
        public /* synthetic */ int l;

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = new a(2, e02Var);
            aVar.l = ((Number) obj).intValue();
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Integer num, e02<? super Boolean> e02Var) {
            return ((a) create(Integer.valueOf(num.intValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            int i = this.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            return Boolean.valueOf(i > 0);
        }
    }

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", l = {223}, m = "invokeSuspend", v = 1)
    public static final class b extends pg8 implements bm3<cu7, e02<? super j59>, Object> {
        public int l;
        public /* synthetic */ Object m;
        public final /* synthetic */ hd3<Object> n;
        public final /* synthetic */ vg5<Object> o;
        public final /* synthetic */ Object p;

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[cu7.values().length];
                try {
                    iArr[cu7.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[cu7.STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[cu7.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(hd3<Object> hd3Var, vg5<Object> vg5Var, Object obj, e02<? super b> e02Var) {
            super(2, e02Var);
            this.n = hd3Var;
            this.o = vg5Var;
            this.p = obj;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = new b(this.n, this.o, this.p, e02Var);
            bVar.m = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(cu7 cu7Var, e02<? super j59> e02Var) {
            return ((b) create(cu7Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            cu7 cu7Var = (cu7) this.m;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                int i2 = a.a[cu7Var.ordinal()];
                vg5<Object> vg5Var = this.o;
                if (i2 == 1) {
                    this.m = null;
                    this.l = 1;
                    if (this.n.collect(vg5Var, this) == a32Var) {
                        return a32Var;
                    }
                } else if (i2 != 2) {
                    if (i2 != 3) {
                        me0.e();
                        return null;
                    }
                    bh8 bh8Var = bt7.b;
                    Object obj2 = this.p;
                    if (obj2 == bh8Var) {
                        vg5Var.b();
                    } else {
                        vg5Var.e(obj2);
                    }
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
    public af3(eu7 eu7Var, hd3<Object> hd3Var, vg5<Object> vg5Var, Object obj, e02<? super af3> e02Var) {
        super(2, e02Var);
        this.m = eu7Var;
        this.n = hd3Var;
        this.o = vg5Var;
        this.p = obj;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new af3(this.m, this.n, this.o, this.p, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((af3) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to af3 for r9v6 'this'  e02
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r9.l
            r2 = 0
            r3 = 4
            r4 = 3
            r5 = 1
            hd3<java.lang.Object> r6 = r9.n
            r7 = 2
            vg5<java.lang.Object> r8 = r9.o
            if (r1 == 0) goto L26
            if (r1 == r5) goto L22
            if (r1 == r7) goto L1e
            if (r1 == r4) goto L22
            if (r1 != r3) goto L18
            goto L22
        L18:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r2
        L1e:
            defpackage.r57.b(r10)
            goto L4e
        L22:
            defpackage.r57.b(r10)
            goto L73
        L26:
            defpackage.r57.b(r10)
            sj0 r10 = eu7.a.a
            eu7 r1 = r9.m
            if (r1 != r10) goto L38
            r9.l = r5
            java.lang.Object r9 = r6.collect(r8, r9)
            if (r9 != r0) goto L73
            goto L72
        L38:
            v68 r10 = eu7.a.b
            if (r1 != r10) goto L57
            gc8 r10 = r8.f()
            af3$a r1 = new af3$a
            r1.<init>(r7, r2)
            r9.l = r7
            java.lang.Object r10 = defpackage.ue3.b(r10, r1, r9)
            if (r10 != r0) goto L4e
            goto L72
        L4e:
            r9.l = r4
            java.lang.Object r9 = r6.collect(r8, r9)
            if (r9 != r0) goto L73
            goto L72
        L57:
            gc8 r10 = r8.f()
            hd3 r10 = r1.b(r10)
            hd3 r10 = defpackage.zd3.c(r10)
            af3$b r1 = new af3$b
            java.lang.Object r4 = r9.p
            r1.<init>(r6, r8, r4, r2)
            r9.l = r3
            java.lang.Object r9 = defpackage.px.c(r10, r1, r9)
            if (r9 != r0) goto L73
        L72:
            return r0
        L73:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.af3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
