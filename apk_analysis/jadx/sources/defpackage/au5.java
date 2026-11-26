package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.offerLanding.domain.interactor.OfferLandingInteractor$subscribeOnLanding$1", f = "OfferLandingInteractor.kt", l = {22, 22}, m = "invokeSuspend")
public final class au5 extends pg8 implements bm3<id3<? super hu5>, e02<? super j59>, Object> {
    public cu5 l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ cu5 o;
    public final /* synthetic */ String p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public au5(cu5 cu5Var, String str, e02<? super au5> e02Var) {
        super(2, e02Var);
        this.o = cu5Var;
        this.p = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        au5 au5Var = new au5(this.o, this.p, e02Var);
        au5Var.n = obj;
        return au5Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super hu5> id3Var, e02<? super j59> e02Var) {
        return ((au5) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0134, code lost:
    
        if (r3.emit(r5, r14) == r0) goto L66;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.au5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
