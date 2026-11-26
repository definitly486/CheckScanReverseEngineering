package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor$saveForm$1", f = "PersonalFormInteractor.kt", l = {322, 328, 329, 330, 341, 342}, m = "invokeSuspend")
public final class x66 extends pg8 implements bm3<id3<? super w66.a>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ w66 n;
    public final /* synthetic */ boolean o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x66(w66 w66Var, boolean z, e02<? super x66> e02Var) {
        super(2, e02Var);
        this.n = w66Var;
        this.o = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        x66 x66Var = new x66(this.n, this.o, e02Var);
        x66Var.m = obj;
        return x66Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super w66.a> id3Var, e02<? super j59> e02Var) {
        return ((x66) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0137  */
    /* JADX WARN: Code duplicated, block: B:78:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f2  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0164, code lost:
    
        if (r1.emit(w66.a.e.a, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0181, code lost:
    
        if (r1.emit(w66.a.d.a, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01d4, code lost:
    
        if (r1.emit(r2, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01ef, code lost:
    
        if (r1.emit(r2, r11) == r0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01fd, code lost:
    
        if (r1.emit(w66.a.C0347a.a, r11) == r0) goto L83;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instruction units count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.x66.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
