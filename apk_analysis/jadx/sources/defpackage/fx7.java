package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInRetryUseCase$invoke$1", f = "SignInRetryUseCase.kt", l = {19, 22, 21}, m = "invokeSuspend")
public final class fx7 extends pg8 implements bm3<id3<? super Object>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ gx7 n;
    public final /* synthetic */ dw1 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fx7(gx7 gx7Var, dw1 dw1Var, e02<? super fx7> e02Var) {
        super(2, e02Var);
        this.n = gx7Var;
        this.o = dw1Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        fx7 fx7Var = new fx7(this.n, this.o, e02Var);
        fx7Var.m = obj;
        return fx7Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        return ((fx7) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
    
        if (r12.emit(r0, r11) == r8) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        if (r0.emit(r12, r7) == r8) goto L23;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            gx7 r0 = r11.n
            vw r1 = r0.a
            a32 r8 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r11.l
            r9 = 0
            r10 = 3
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L28
            if (r2 == r4) goto L24
            if (r2 == r3) goto L1b
            if (r2 != r10) goto L15
            goto L24
        L15:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r11)
            return r9
        L1b:
            java.lang.Object r0 = r11.m
            id3 r0 = (defpackage.id3) r0
            defpackage.r57.b(r12)
            r7 = r11
            goto L64
        L24:
            defpackage.r57.b(r12)
            goto L6f
        L28:
            defpackage.r57.b(r12)
            java.lang.Object r12 = r11.m
            id3 r12 = (defpackage.id3) r12
            aq8 r2 = r1.g()
            if (r2 != 0) goto L45
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Temp data can not be null"
            r0.<init>(r1)
            r11.l = r4
            java.lang.Object r11 = r12.emit(r0, r11)
            if (r11 != r8) goto L6f
            goto L6e
        L45:
            r4 = r2
            java.lang.String r2 = r4.a
            r5 = r3
            boolean r3 = r4.c
            java.lang.String r4 = r4.b
            mw5 r0 = r0.b
            java.lang.Boolean r6 = r0.c()
            r11.m = r12
            r11.l = r5
            r5 = r4
            dw1 r4 = r11.o
            r7 = r11
            java.lang.Object r11 = r1.e(r2, r3, r4, r5, r6, r7)
            if (r11 != r8) goto L62
            goto L6e
        L62:
            r0 = r12
            r12 = r11
        L64:
            r7.m = r9
            r7.l = r10
            java.lang.Object r11 = r0.emit(r12, r7)
            if (r11 != r8) goto L6f
        L6e:
            return r8
        L6f:
            j59 r11 = defpackage.j59.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fx7.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
