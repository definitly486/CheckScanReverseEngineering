package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.sse.SSEInteractor$startListening$2", f = "SSEInteractor.kt", l = {35, 36, 37, 38, 39}, m = "invokeSuspend")
public final class ba7 extends pg8 implements bm3<ka7.a, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ da7 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ba7(da7 da7Var, e02<? super ba7> e02Var) {
        super(2, e02Var);
        this.n = da7Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ba7 ba7Var = new ba7(this.n, e02Var);
        ba7Var.m = obj;
        return ba7Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(ka7.a aVar, e02<? super j59> e02Var) {
        return ((ba7) create(aVar, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0041, code lost:
    
        if (r8 == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (defpackage.b40.d(3, r9, r8) == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0061, code lost:
    
        if (r9.a(r5, r8) == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0070, code lost:
    
        if (r9.b(r8) == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007f, code lost:
    
        if (r9.a(r5, r8) == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        return r0;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
        /*
            r8 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r8.l
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L21
            if (r1 == r6) goto L1d
            if (r1 == r5) goto L1d
            if (r1 == r4) goto L1d
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L16
            goto L1d
        L16:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            r8 = 0
            return r8
        L1d:
            defpackage.r57.b(r9)
            goto L82
        L21:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.m
            ka7$a r9 = (ka7.a) r9
            y97 r9 = r9.a
            boolean r1 = r9 instanceof defpackage.pa7
            da7 r7 = r8.n
            if (r1 == 0) goto L44
            bo0 r9 = r7.b
            r8.l = r6
            zs7 r9 = r9.a
            bo0$a$a r1 = bo0.a.C0121a.a
            java.lang.Object r8 = r9.emit(r1, r8)
            if (r8 != r0) goto L3f
            goto L41
        L3f:
            j59 r8 = defpackage.j59.a
        L41:
            if (r8 != r0) goto L82
            goto L81
        L44:
            boolean r1 = r9 instanceof defpackage.oa7
            if (r1 == 0) goto L53
            b40 r9 = r7.c
            r8.l = r5
            java.lang.Object r8 = defpackage.b40.d(r4, r9, r8)
            if (r8 != r0) goto L82
            goto L81
        L53:
            boolean r1 = r9 instanceof defpackage.ra7
            zl2$a$h r5 = zl2.a.h.a
            if (r1 == 0) goto L64
            zl2 r9 = r7.d
            r8.l = r4
            java.lang.Object r8 = r9.a(r5, r8)
            if (r8 != r0) goto L82
            goto L81
        L64:
            boolean r1 = r9 instanceof defpackage.qa7
            if (r1 == 0) goto L73
            ic8 r9 = r7.e
            r8.l = r3
            java.lang.Object r8 = r9.b(r8)
            if (r8 != r0) goto L82
            goto L81
        L73:
            boolean r9 = r9 instanceof defpackage.sa7
            if (r9 == 0) goto L82
            zl2 r9 = r7.d
            r8.l = r2
            java.lang.Object r8 = r9.a(r5, r8)
            if (r8 != r0) goto L82
        L81:
            return r0
        L82:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ba7.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
