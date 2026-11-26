package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class de3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ dm3 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {112, 113}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public id3 o;
        public int p;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return de3.this.collect(null, this);
        }
    }

    public de3(hd3 hd3Var, dm3 dm3Var) {
        this.b = hd3Var;
        this.c = dm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        if (r7.c.invoke(r8, r2, r0) == r1) goto L23;
     */
    @Override // defpackage.hd3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(defpackage.id3<? super java.lang.Object> r8, defpackage.e02<? super defpackage.j59> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof de3.a
            if (r0 == 0) goto L13
            r0 = r9
            de3$a r0 = (de3.a) r0
            int r1 = r0.m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.m = r1
            goto L18
        L13:
            de3$a r0 = new de3$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.m
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2b
            defpackage.r57.b(r9)
            goto L63
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r5
        L31:
            int r8 = r0.p
            id3 r2 = r0.o
            defpackage.r57.b(r9)
            r6 = r9
            r9 = r8
            r8 = r2
            r2 = r6
            goto L50
        L3d:
            defpackage.r57.b(r9)
            r0.o = r8
            r9 = 0
            r0.p = r9
            r0.m = r4
            hd3 r2 = r7.b
            java.io.Serializable r2 = defpackage.he3.a(r2, r8, r0)
            if (r2 != r1) goto L50
            goto L62
        L50:
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            if (r2 == 0) goto L63
            r0.o = r5
            r0.p = r9
            r0.m = r3
            dm3 r7 = r7.c
            java.lang.Object r7 = r7.invoke(r8, r2, r0)
            if (r7 != r1) goto L63
        L62:
            return r1
        L63:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.de3.collect(id3, e02):java.lang.Object");
    }
}
