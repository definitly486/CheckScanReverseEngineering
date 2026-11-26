package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.offerLanding.domain.interactor.OfferLandingInteractor$subscribeOnLink$1", f = "OfferLandingInteractor.kt", l = {29, 28}, m = "invokeSuspend")
public final class bu5 extends pg8 implements bm3<id3<? super String>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ cu5 n;
    public final /* synthetic */ String o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bu5(cu5 cu5Var, String str, e02<? super bu5> e02Var) {
        super(2, e02Var);
        this.n = cu5Var;
        this.o = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        bu5 bu5Var = new bu5(this.n, this.o, e02Var);
        bu5Var.m = obj;
        return bu5Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super String> id3Var, e02<? super j59> e02Var) {
        return ((bu5) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
    
        if (r8 == r0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        if (r1.emit(r8, r7) == r0) goto L22;
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
            cu5 r5 = r7.n
            if (r1 == 0) goto L22
            if (r1 == r4) goto L19
            if (r1 != r3) goto L13
            defpackage.r57.b(r8)
            goto L65
        L13:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L19:
            java.lang.Object r1 = r7.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r8)
        L20:
            r4 = r1
            goto L43
        L22:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.m
            r1 = r8
            id3 r1 = (defpackage.id3) r1
            z68 r8 = r5.b
            java.lang.Object r8 = r8.getValue()
            java.lang.String r8 = (java.lang.String) r8
            if (r8 != 0) goto L5a
            fu5 r8 = r5.a
            r7.m = r1
            r7.l = r4
            java.lang.String r4 = r7.o
            java.lang.Object r8 = r8.a(r4, r7)
            if (r8 != r0) goto L20
            goto L64
        L43:
            du5 r8 = (defpackage.du5) r8
            java.lang.String r6 = r8.a()
            z68 r5 = r5.b
        L4b:
            java.lang.Object r8 = r5.getValue()
            r1 = r8
            java.lang.String r1 = (java.lang.String) r1
            boolean r8 = r5.a(r8, r6)
            if (r8 == 0) goto L4b
            r1 = r4
            r8 = r6
        L5a:
            r7.m = r2
            r7.l = r3
            java.lang.Object r7 = r1.emit(r8, r7)
            if (r7 != r0) goto L65
        L64:
            return r0
        L65:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bu5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
