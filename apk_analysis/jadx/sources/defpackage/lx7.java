package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignUpConfirmInteractor$invoke$1", f = "SignUpConfirmInteractor.kt", l = {20, 33, 35}, m = "invokeSuspend")
public final class lx7 extends pg8 implements bm3<id3<? super aq8>, e02<? super j59>, Object> {
    public aq8 l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ mx7 o;
    public final /* synthetic */ String p;
    public final /* synthetic */ String q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx7(mx7 mx7Var, String str, String str2, e02<? super lx7> e02Var) {
        super(2, e02Var);
        this.o = mx7Var;
        this.p = str;
        this.q = str2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        lx7 lx7Var = new lx7(this.o, this.p, this.q, e02Var);
        lx7Var.n = obj;
        return lx7Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super aq8> id3Var, e02<? super j59> e02Var) {
        return ((lx7) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a8, code lost:
    
        if (r2.emit(r1, r7) == r8) goto L29;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            mx7 r0 = r14.o
            vw r1 = r0.a
            a32 r8 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r14.m
            r9 = 3
            r10 = 2
            r11 = 0
            r12 = 1
            if (r2 == 0) goto L36
            if (r2 == r12) goto L2b
            if (r2 == r10) goto L1f
            if (r2 != r9) goto L19
            defpackage.r57.b(r15)
            goto Lab
        L19:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r14)
            return r11
        L1f:
            aq8 r1 = r14.l
            java.lang.Object r2 = r14.n
            id3 r2 = (defpackage.id3) r2
            defpackage.r57.b(r15)
            r7 = r14
            goto L95
        L2b:
            aq8 r1 = r14.l
            java.lang.Object r2 = r14.n
            id3 r2 = (defpackage.id3) r2
            defpackage.r57.b(r15)
            r7 = r14
            goto L6b
        L36:
            defpackage.r57.b(r15)
            java.lang.Object r15 = r14.n
            id3 r15 = (defpackage.id3) r15
            aq8 r13 = r1.g()
            if (r13 == 0) goto L47
            boolean r2 = r13.c
        L45:
            r4 = r2
            goto L49
        L47:
            r2 = 0
            goto L45
        L49:
            if (r13 == 0) goto L4f
            java.lang.String r2 = r13.b
            r5 = r2
            goto L50
        L4f:
            r5 = r11
        L50:
            mw5 r2 = r0.c
            java.lang.Boolean r6 = r2.c()
            r14.n = r15
            r14.l = r13
            r14.m = r12
            java.lang.String r2 = r14.p
            java.lang.String r3 = r14.q
            r7 = r14
            java.lang.Object r14 = r1.h(r2, r3, r4, r5, r6, r7)
            if (r14 != r8) goto L68
            goto Laa
        L68:
            r2 = r15
            r1 = r13
            r15 = r14
        L6b:
            j3 r15 = (defpackage.j3) r15
            jf6 r14 = r0.d
            java.lang.String r3 = r15.b
            r14.k1(r3)
            java.lang.String r3 = r15.d
            r14.n(r3)
            java.lang.String r3 = r15.b
            r14.I(r3)
            boolean r3 = r15.c
            r3 = r3 ^ r12
            r14.J(r3)
            e89 r14 = r0.b
            java.lang.String r15 = r15.f
            r7.n = r2
            r7.l = r1
            r7.m = r10
            java.lang.Object r14 = r14.a(r15, r7)
            if (r14 != r8) goto L95
            goto Laa
        L95:
            g6 r14 = r0.e
            g6$a$c r15 = g6.a.c.a
            zs7 r14 = r14.a
            r14.e(r15)
            r7.n = r11
            r7.l = r11
            r7.m = r9
            java.lang.Object r14 = r2.emit(r1, r7)
            if (r14 != r8) goto Lab
        Laa:
            return r8
        Lab:
            j59 r14 = defpackage.j59.a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lx7.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
