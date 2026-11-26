package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInUseCase$invoke$1", f = "SignInUseCase.kt", l = {29, 28}, m = "invokeSuspend")
public final class hx7 extends pg8 implements bm3<id3<? super ev>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ ix7 n;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;
    public final /* synthetic */ boolean q;
    public final /* synthetic */ dw1 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hx7(ix7 ix7Var, String str, String str2, boolean z, dw1 dw1Var, e02<? super hx7> e02Var) {
        super(2, e02Var);
        this.n = ix7Var;
        this.o = str;
        this.p = str2;
        this.q = z;
        this.r = dw1Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        hx7 hx7Var = new hx7(this.n, this.o, this.p, this.q, this.r, e02Var);
        hx7Var.m = obj;
        return hx7Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super ev> id3Var, e02<? super j59> e02Var) {
        return ((hx7) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005f, code lost:
    
        if (r10.emit(r0, r12) == r7) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            a32 r7 = defpackage.a32.COROUTINE_SUSPENDED
            int r0 = r12.l
            r8 = 0
            r9 = 2
            r1 = 1
            if (r0 == 0) goto L21
            if (r0 == r1) goto L17
            if (r0 != r9) goto L11
            defpackage.r57.b(r13)
            goto L62
        L11:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r0)
            return r8
        L17:
            java.lang.Object r0 = r12.m
            id3 r0 = (defpackage.id3) r0
            defpackage.r57.b(r13)
            r10 = r0
            r0 = r13
            goto L57
        L21:
            defpackage.r57.b(r13)
            java.lang.Object r0 = r12.m
            r10 = r0
            id3 r10 = (defpackage.id3) r10
            ix7 r0 = r12.n
            vw r2 = r0.a
            aq8 r3 = new aq8
            java.lang.String r4 = r12.p
            boolean r5 = r12.q
            java.lang.String r11 = r12.o
            r3.<init>(r11, r4, r5)
            r2.i(r3)
            vw r2 = r0.a
            mw5 r0 = r0.b
            java.lang.Boolean r5 = r0.c()
            r12.m = r10
            r12.l = r1
            r0 = r2
            boolean r2 = r12.q
            dw1 r3 = r12.r
            java.lang.String r4 = r12.p
            r6 = r12
            r1 = r11
            java.lang.Object r0 = r0.e(r1, r2, r3, r4, r5, r6)
            if (r0 != r7) goto L57
            goto L61
        L57:
            r12.m = r8
            r12.l = r9
            java.lang.Object r0 = r10.emit(r0, r12)
            if (r0 != r7) goto L62
        L61:
            return r7
        L62:
            j59 r0 = defpackage.j59.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hx7.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
