package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.cheque.ChequeInteractor$getChequesBanner$1", f = "ChequeInteractor.kt", l = {196, 196}, m = "invokeSuspend")
public final class ee1 extends pg8 implements bm3<id3<? super ci1>, e02<? super j59>, Object> {
    public xd1 l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ xd1 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ee1(xd1 xd1Var, e02<? super ee1> e02Var) {
        super(2, e02Var);
        this.o = xd1Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ee1 ee1Var = new ee1(this.o, e02Var);
        ee1Var.n = obj;
        return ee1Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super ci1> id3Var, e02<? super j59> e02Var) {
        return ((ee1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006e, code lost:
    
        if (r3.emit(r1, r9) == r0) goto L20;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r9.m
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L21
            if (r1 == r3) goto L17
            if (r1 != r2) goto L11
            defpackage.r57.b(r10)
            goto L71
        L11:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r4
        L17:
            xd1 r1 = r9.l
            java.lang.Object r3 = r9.n
            id3 r3 = (defpackage.id3) r3
            defpackage.r57.b(r10)
            goto L3c
        L21:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.n
            id3 r10 = (defpackage.id3) r10
            xd1 r1 = r9.o
            cf1 r5 = r1.a
            r9.n = r10
            r9.l = r1
            r9.m = r3
            java.lang.Object r3 = r5.q(r9)
            if (r3 != r0) goto L39
            goto L70
        L39:
            r8 = r3
            r3 = r10
            r10 = r8
        L3c:
            java.util.List r10 = (java.util.List) r10
            java.lang.Object r10 = defpackage.qn1.T(r10)
            ke1 r10 = (defpackage.ke1) r10
            r1.getClass()
            ci1 r1 = new ci1
            int r5 = r10.a()
            c06 r6 = r10.c()
            if (r6 == 0) goto L58
            b06 r6 = r6.f()
            goto L59
        L58:
            r6 = r4
        L59:
            java.lang.String r7 = r10.b()
            java.lang.String r10 = r10.d()
            r1.<init>(r5, r6, r7, r10)
            r9.n = r4
            r9.l = r4
            r9.m = r2
            java.lang.Object r9 = r3.emit(r1, r9)
            if (r9 != r0) goto L71
        L70:
            return r0
        L71:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ee1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
