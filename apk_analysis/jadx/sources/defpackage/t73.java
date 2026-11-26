package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.FetchPromoTransferShowcaseUseCase$invoke$1", f = "FetchPromoTransferShowcaseUseCase.kt", l = {12, 11}, m = "invokeSuspend")
public final class t73 extends pg8 implements bm3<id3<? super pp6>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ u73 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ String p;
    public final /* synthetic */ Integer q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t73(u73 u73Var, int i, String str, Integer num, e02<? super t73> e02Var) {
        super(2, e02Var);
        this.n = u73Var;
        this.o = i;
        this.p = str;
        this.q = num;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        t73 t73Var = new t73(this.n, this.o, this.p, this.q, e02Var);
        t73Var.m = obj;
        return t73Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super pp6> id3Var, e02<? super j59> e02Var) {
        return ((t73) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
    
        if (r1.emit(r8, r7) == r0) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r8)
            goto L4d
        L11:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L17:
            java.lang.Object r1 = r7.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r8)
            goto L3c
        L1f:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.m
            r1 = r8
            id3 r1 = (defpackage.id3) r1
            u73 r8 = r7.n
            n60 r8 = r8.a
            r7.m = r1
            r7.l = r4
            int r4 = r7.o
            java.lang.String r5 = r7.p
            java.lang.Integer r6 = r7.q
            java.lang.Object r8 = r8.g(r4, r5, r6, r7)
            if (r8 != r0) goto L3c
            goto L4c
        L3c:
            wp6 r8 = (defpackage.wp6) r8
            pp6 r8 = r8.a()
            r7.m = r2
            r7.l = r3
            java.lang.Object r7 = r1.emit(r8, r7)
            if (r7 != r0) goto L4d
        L4c:
            return r0
        L4d:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t73.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
