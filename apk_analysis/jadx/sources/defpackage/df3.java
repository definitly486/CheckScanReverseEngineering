package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class df3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ bm3 c;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;
        public final /* synthetic */ bm3 c;

        /* JADX INFO: renamed from: df3$a$a, reason: collision with other inner class name */
        @bd2(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {217, 218}, m = "emit", v = 1)
        public static final class C0179a extends f02 {
            public /* synthetic */ Object l;
            public int m;
            public Object o;
            public id3 p;
            public int q;

            public C0179a(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.m |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(id3 id3Var, bm3 bm3Var) {
            this.b = id3Var;
            this.c = bm3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
        
            if (r7.emit(r2, r0) == r1) goto L22;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.id3
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(T r7, defpackage.e02<? super defpackage.j59> r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof df3.a.C0179a
                if (r0 == 0) goto L13
                r0 = r8
                df3$a$a r0 = (df3.a.C0179a) r0
                int r1 = r0.m
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.m = r1
                goto L18
            L13:
                df3$a$a r0 = new df3$a$a
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.l
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.m
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L3b
                if (r2 == r4) goto L31
                if (r2 != r3) goto L2b
                defpackage.r57.b(r8)
                goto L64
            L2b:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r5
            L31:
                int r6 = r0.q
                id3 r7 = r0.p
                java.lang.Object r2 = r0.o
                defpackage.r57.b(r8)
                goto L55
            L3b:
                defpackage.r57.b(r8)
                r0.o = r7
                id3 r8 = r6.b
                r0.p = r8
                r2 = 0
                r0.q = r2
                r0.m = r4
                bm3 r6 = r6.c
                java.lang.Object r6 = r6.invoke(r7, r0)
                if (r6 != r1) goto L52
                goto L63
            L52:
                r6 = r2
                r2 = r7
                r7 = r8
            L55:
                r0.o = r5
                r0.p = r5
                r0.q = r6
                r0.m = r3
                java.lang.Object r6 = r7.emit(r2, r0)
                if (r6 != r1) goto L64
            L63:
                return r1
            L64:
                j59 r6 = defpackage.j59.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: df3.a.emit(java.lang.Object, e02):java.lang.Object");
        }
    }

    public df3(hd3 hd3Var, bm3 bm3Var) {
        this.b = hd3Var;
        this.c = bm3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var, this.c), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
