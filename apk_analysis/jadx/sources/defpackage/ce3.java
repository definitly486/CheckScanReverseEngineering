package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ce3 implements hd3<Object> {
    public final /* synthetic */ bm3 b;
    public final /* synthetic */ hd3 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {115, 119}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public id3 o;
        public pb7 p;
        public int q;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return ce3.this.collect(null, this);
        }
    }

    public ce3(hd3 hd3Var, bm3 bm3Var) {
        this.b = bm3Var;
        this.c = hd3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
    
        if (r7.c.collect(r8, r0) == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [f02] */
    /* JADX WARN: Type inference failed for: r2v3, types: [f02] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override // defpackage.hd3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(defpackage.id3<? super java.lang.Object> r8, defpackage.e02<? super defpackage.j59> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ce3.a
            if (r0 == 0) goto L13
            r0 = r9
            ce3$a r0 = (ce3.a) r0
            int r1 = r0.m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.m = r1
            goto L18
        L13:
            ce3$a r0 = new ce3$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.m
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2b
            defpackage.r57.b(r9)
            goto L71
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r5
        L31:
            int r8 = r0.q
            pb7 r2 = r0.p
            id3 r4 = r0.o
            defpackage.r57.b(r9)     // Catch: java.lang.Throwable -> L3d
            r6 = r8
            r8 = r4
            goto L5d
        L3d:
            r7 = move-exception
            goto L74
        L3f:
            defpackage.r57.b(r9)
            pb7 r2 = new pb7
            o22 r9 = r0.getContext()
            r2.<init>(r8, r9)
            bm3 r9 = r7.b     // Catch: java.lang.Throwable -> L3d
            r0.o = r8     // Catch: java.lang.Throwable -> L3d
            r0.p = r2     // Catch: java.lang.Throwable -> L3d
            r6 = 0
            r0.q = r6     // Catch: java.lang.Throwable -> L3d
            r0.m = r4     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r9 = r9.invoke(r2, r0)     // Catch: java.lang.Throwable -> L3d
            if (r9 != r1) goto L5d
            goto L70
        L5d:
            r2.releaseIntercepted()
            r0.o = r5
            r0.p = r5
            r0.q = r6
            r0.m = r3
            hd3 r7 = r7.c
            java.lang.Object r7 = r7.collect(r8, r0)
            if (r7 != r1) goto L71
        L70:
            return r1
        L71:
            j59 r7 = defpackage.j59.a
            return r7
        L74:
            r2.releaseIntercepted()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ce3.collect(id3, e02):java.lang.Object");
    }
}
