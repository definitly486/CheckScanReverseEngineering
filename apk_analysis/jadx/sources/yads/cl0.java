package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cl0 {
    public final g1 a;
    public final defpackage.qm3 b;

    /* JADX WARN: Multi-variable type inference failed */
    public cl0(g1 g1Var, defpackage.bm3 bm3Var) {
        this.a = g1Var;
        this.b = (defpackage.qm3) bm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
    
        if (r10 == r1) goto L29;
     */
    /* JADX WARN: Type inference failed for: r10v2, types: [bm3, qm3] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(yads.n8 r7, long r8, defpackage.f02 r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof yads.bl0
            if (r0 == 0) goto L13
            r0 = r10
            yads.bl0 r0 = (yads.bl0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            yads.bl0 r0 = new yads.bl0
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.d
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L39
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2b
            defpackage.r57.b(r10)
            goto L84
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r5
        L31:
            long r8 = r0.c
            yads.n8 r7 = r0.b
            defpackage.r57.b(r10)
            goto L4b
        L39:
            defpackage.r57.b(r10)
            qm3 r10 = r6.b
            r0.b = r7
            r0.c = r8
            r0.f = r4
            java.lang.Object r10 = r10.invoke(r7, r0)
            if (r10 != r1) goto L4b
            goto L83
        L4b:
            if (r10 == 0) goto L4e
            return r10
        L4e:
            yads.g1 r10 = r6.a
            java.util.concurrent.ConcurrentHashMap r2 = r10.a
            yads.l13 r10 = r10.b
            java.lang.String r10 = r10.a(r7)
            boolean r10 = r2.containsKey(r10)
            if (r10 != 0) goto L5f
            return r5
        L5f:
            yads.g1 r6 = r6.a
            r0.b = r5
            r0.f = r3
            java.util.concurrent.ConcurrentHashMap r10 = r6.a
            yads.l13 r6 = r6.b
            java.lang.String r6 = r6.a(r7)
            java.lang.Object r6 = r10.get(r6)
            xp1 r6 = (defpackage.xp1) r6
            if (r6 != 0) goto L77
            r10 = r5
            goto L81
        L77:
            yads.f1 r7 = new yads.f1
            r7.<init>(r6, r5)
            java.lang.Object r6 = defpackage.yv8.c(r8, r7, r0)
            r10 = r6
        L81:
            if (r10 != r1) goto L84
        L83:
            return r1
        L84:
            if (r10 != 0) goto L87
            return r5
        L87:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.cl0.a(yads.n8, long, f02):java.lang.Object");
    }
}
