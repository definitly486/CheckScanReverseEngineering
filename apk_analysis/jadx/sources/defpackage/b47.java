package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.usecase.ResolveTaskOpenTargetUseCase$invoke$1", f = "ResolveTaskOpenTargetUseCase.kt", l = {10, 13, 19}, m = "invokeSuspend")
public final class b47 extends pg8 implements bm3<id3<? super xn8>, e02<? super j59>, Object> {
    public um8 l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ c47 o;
    public final /* synthetic */ int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b47(c47 c47Var, int i, e02<? super b47> e02Var) {
        super(2, e02Var);
        this.o = c47Var;
        this.p = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        b47 b47Var = new b47(this.o, this.p, e02Var);
        b47Var.n = obj;
        return b47Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super xn8> id3Var, e02<? super j59> e02Var) {
        return ((b47) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
    
        if (r2.emit(r4, r9) == r1) goto L26;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            c47 r0 = r9.o
            ap8 r0 = r0.a
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r9.m
            r3 = 0
            int r4 = r9.p
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L32
            if (r2 == r7) goto L2a
            if (r2 == r6) goto L20
            if (r2 != r5) goto L1a
            defpackage.r57.b(r10)
            goto L78
        L1a:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r3
        L20:
            um8 r0 = r9.l
            java.lang.Object r2 = r9.n
            id3 r2 = (defpackage.id3) r2
            defpackage.r57.b(r10)
            goto L5d
        L2a:
            java.lang.Object r2 = r9.n
            id3 r2 = (defpackage.id3) r2
            defpackage.r57.b(r10)
            goto L47
        L32:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.n
            id3 r10 = (defpackage.id3) r10
            r9.n = r10
            r9.m = r7
            java.lang.Object r2 = r0.d(r4, r9)
            if (r2 != r1) goto L44
            goto L77
        L44:
            r8 = r2
            r2 = r10
            r10 = r8
        L47:
            um8 r10 = (defpackage.um8) r10
            boolean r7 = r10.j
            if (r7 == 0) goto L69
            r9.n = r2
            r9.l = r10
            r9.m = r6
            java.lang.Object r0 = r0.t(r4, r9)
            if (r0 != r1) goto L5a
            goto L77
        L5a:
            r8 = r0
            r0 = r10
            r10 = r8
        L5d:
            java.lang.String r10 = (java.lang.String) r10
            um8$a r0 = r0.f
            boolean r0 = r0.c
            xn8$a r4 = new xn8$a
            r4.<init>(r10, r0)
            goto L6b
        L69:
            xn8$b r4 = xn8.b.a
        L6b:
            r9.n = r3
            r9.l = r3
            r9.m = r5
            java.lang.Object r9 = r2.emit(r4, r9)
            if (r9 != r1) goto L78
        L77:
            return r1
        L78:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b47.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
