package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.chequeRequestQueue.ChequeRequestQueueInteractor$splashTimerFlow$1", f = "ChequeRequestQueueInteractor.kt", l = {208, 209}, m = "invokeSuspend")
public final class ug1 extends pg8 implements bm3<id3<? super Long>, e02<? super j59>, Object> {
    public long l;
    public int m;
    public /* synthetic */ Object n;

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ug1 ug1Var = new ug1(2, e02Var);
        ug1Var.n = obj;
        return ug1Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Long> id3Var, e02<? super j59> e02Var) {
        return ((ug1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0043  */
    /* JADX WARN: Code duplicated, block: B:19:0x005f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0061 A[DONT_INVERT] */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        if (defpackage.j59.a == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0015, code lost:
    
        if (r9 != r0) goto L7;
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
            int r1 = r8.m
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L28
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L17
            long r4 = r8.l
            java.lang.Object r1 = r8.n
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r9)
        L15:
            r9 = r1
            goto L64
        L17:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            r8 = 0
            return r8
        L1e:
            long r4 = r8.l
            java.lang.Object r1 = r8.n
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r9)
            goto L44
        L28:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.n
            id3 r9 = (defpackage.id3) r9
            r4 = 3
        L31:
            java.lang.Long r1 = new java.lang.Long
            r1.<init>(r4)
            r8.n = r9
            r8.l = r4
            r8.m = r3
            java.lang.Object r1 = r9.emit(r1, r8)
            if (r1 != r0) goto L43
            goto L63
        L43:
            r1 = r9
        L44:
            wt2$a r9 = defpackage.wt2.c
            au2 r9 = defpackage.au2.SECONDS
            long r6 = defpackage.yt2.e(r3, r9)
            r8.n = r1
            r8.l = r4
            r8.m = r2
            long r6 = defpackage.yk2.d(r6)
            java.lang.Object r9 = defpackage.yk2.b(r6, r8)
            a32 r6 = defpackage.a32.COROUTINE_SUSPENDED
            if (r9 != r6) goto L5f
            goto L61
        L5f:
            j59 r9 = defpackage.j59.a
        L61:
            if (r9 != r0) goto L15
        L63:
            return r0
        L64:
            r6 = 0
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 == 0) goto L6e
            r6 = -1
            long r4 = r4 + r6
            goto L31
        L6e:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ug1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
