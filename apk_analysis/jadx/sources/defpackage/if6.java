package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class if6 implements mo3 {
    public final jf6 a;
    public final c4 b;
    public final zl2 c;
    public final b d;

    public static final class a implements hd3<zl2.a> {
        public final /* synthetic */ hd3 b;

        /* JADX INFO: renamed from: if6$a$a, reason: collision with other inner class name */
        public static final class C0200a<T> implements id3 {
            public final /* synthetic */ id3 b;

            /* JADX INFO: renamed from: if6$a$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.games.PreferencesGamesUserSource$special$$inlined$filter$1$2", f = "PreferencesGamesUserSource.kt", l = {217}, m = "emit")
            public static final class C0201a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0201a(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.m |= Integer.MIN_VALUE;
                    return C0200a.this.emit(null, this);
                }
            }

            public C0200a(id3 id3Var) {
                this.b = id3Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                C0201a c0201a;
                if (e02Var instanceof C0201a) {
                    c0201a = (C0201a) e02Var;
                    int i = c0201a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0201a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0201a = new C0201a(e02Var);
                    }
                } else {
                    c0201a = new C0201a(e02Var);
                }
                Object obj2 = c0201a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0201a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    if (aa4.e((zl2.a) obj, zl2.a.e.a)) {
                        c0201a.m = 1;
                        if (this.b.emit(obj, c0201a) == a32Var) {
                            return a32Var;
                        }
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

        public a(zs7 zs7Var) {
            this.b = zs7Var;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super zl2.a> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new C0200a(id3Var), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    public static final class b implements hd3<j59> {
        public final /* synthetic */ a b;

        public static final class a<T> implements id3 {
            public final /* synthetic */ id3 b;

            /* JADX INFO: renamed from: if6$b$a$a, reason: collision with other inner class name */
            @bd2(c = "com.warefly.checkscan.presentation.games.PreferencesGamesUserSource$special$$inlined$map$1$2", f = "PreferencesGamesUserSource.kt", l = {217}, m = "emit")
            public static final class C0202a extends f02 {
                public /* synthetic */ Object l;
                public int m;

                public C0202a(e02 e02Var) {
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
                C0202a c0202a;
                if (e02Var instanceof C0202a) {
                    c0202a = (C0202a) e02Var;
                    int i = c0202a.m;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        c0202a.m = i - Integer.MIN_VALUE;
                    } else {
                        c0202a = new C0202a(e02Var);
                    }
                } else {
                    c0202a = new C0202a(e02Var);
                }
                Object obj2 = c0202a.l;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = c0202a.m;
                if (i2 == 0) {
                    r57.b(obj2);
                    j59 j59Var = j59.a;
                    c0202a.m = 1;
                    if (this.b.emit(j59Var, c0202a) == a32Var) {
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

        public b(a aVar) {
            this.b = aVar;
        }

        @Override // defpackage.hd3
        public final Object collect(id3<? super j59> id3Var, e02 e02Var) {
            Object objCollect = this.b.collect(new a(id3Var), e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
    }

    public if6(jf6 jf6Var, c4 c4Var, zl2 zl2Var) {
        this.a = jf6Var;
        this.b = c4Var;
        this.c = zl2Var;
        this.d = new b(new a(zl2Var.b));
    }

    @Override // defpackage.mo3
    public final b a() {
        return this.d;
    }

    @Override // defpackage.mo3
    public final boolean b() {
        return this.a.s0().length() > 0;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
    
        if (r6.c.a(zl2.a.f.a, r0) == r1) goto L21;
     */
    @Override // defpackage.mo3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(defpackage.f02 r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof defpackage.hf6
            if (r0 == 0) goto L13
            r0 = r7
            hf6 r0 = (defpackage.hf6) r0
            int r1 = r0.n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.n = r1
            goto L18
        L13:
            hf6 r0 = new hf6
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.n
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            defpackage.r57.b(r7)
            goto L6e
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L31:
            defpackage.r57.b(r7)
            goto L61
        L35:
            defpackage.r57.b(r7)
            c4 r7 = r6.b
            yz7 r7 = r7.a()
            he7 r2 = defpackage.ne7.c
            e18 r7 = r7.i(r2)
            r0.n = r4
            c31 r2 = new c31
            e02 r5 = defpackage.zya.b(r0)
            r2.<init>(r4, r5)
            r2.u()
            w87 r4 = new w87
            r4.<init>(r2)
            r7.d(r4)
            java.lang.Object r7 = r2.s()
            if (r7 != r1) goto L61
            goto L6d
        L61:
            r0.n = r3
            zl2 r7 = r6.c
            zl2$a$f r2 = zl2.a.f.a
            java.lang.Object r7 = r7.a(r2, r0)
            if (r7 != r1) goto L6e
        L6d:
            return r1
        L6e:
            boolean r6 = r6.b()
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.if6.c(f02):java.lang.Object");
    }

    @Override // defpackage.mo3
    public final boolean d() {
        return !this.a.G0();
    }

    @Override // defpackage.mo3
    public final int e() {
        return this.a.O0();
    }
}
