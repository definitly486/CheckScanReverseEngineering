package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qe3 implements id3<Object> {
    public final /* synthetic */ bm3 b;
    public final /* synthetic */ id3 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1", f = "Limit.kt", l = {142, 143}, m = "emit", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public Object o;
        public int p;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return qe3.this.emit(null, this);
        }
    }

    public qe3(id3 id3Var, bm3 bm3Var) {
        this.b = bm3Var;
        this.c = id3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        if (r7.c.emit(r8, r0) == r1) goto L23;
     */
    @Override // defpackage.id3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r8, defpackage.e02<? super defpackage.j59> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof qe3.a
            if (r0 == 0) goto L13
            r0 = r9
            qe3$a r0 = (qe3.a) r0
            int r1 = r0.m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.m = r1
            goto L18
        L13:
            qe3$a r0 = new qe3$a
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
            goto L67
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r5
        L31:
            int r8 = r0.p
            java.lang.Object r2 = r0.o
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
            bm3 r2 = r7.b
            java.lang.Object r2 = r2.invoke(r8, r0)
            if (r2 != r1) goto L50
            goto L66
        L50:
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L6a
            r0.o = r5
            r0.p = r9
            r0.m = r3
            id3 r7 = r7.c
            java.lang.Object r7 = r7.emit(r8, r0)
            if (r7 != r1) goto L67
        L66:
            return r1
        L67:
            j59 r7 = defpackage.j59.a
            return r7
        L6a:
            kotlinx.coroutines.flow.internal.AbortFlowException r8 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qe3.emit(java.lang.Object, e02):java.lang.Object");
    }
}
