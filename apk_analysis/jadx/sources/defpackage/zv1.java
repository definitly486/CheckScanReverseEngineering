package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.domain.useCases.ConfirmEmailUseCase$invoke$1", f = "ConfirmEmailUseCase.kt", l = {15, 16, 17}, m = "invokeSuspend")
public final class zv1 extends pg8 implements bm3<id3<? super gw2>, e02<? super j59>, Object> {
    public gw2.c l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ aw1 o;
    public final /* synthetic */ String p;
    public final /* synthetic */ String q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zv1(aw1 aw1Var, String str, String str2, e02<? super zv1> e02Var) {
        super(2, e02Var);
        this.o = aw1Var;
        this.p = str;
        this.q = str2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        zv1 zv1Var = new zv1(this.o, this.p, this.q, e02Var);
        zv1Var.n = obj;
        return zv1Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super gw2> id3Var, e02<? super j59> e02Var) {
        return ((zv1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
    
        if (r1.emit(r10, r9) == r0) goto L25;
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
            r2 = 0
            aw1 r3 = r9.o
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L2e
            if (r1 == r6) goto L26
            if (r1 == r5) goto L1c
            if (r1 != r4) goto L16
            defpackage.r57.b(r10)
            goto L76
        L16:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r2
        L1c:
            gw2$c r1 = r9.l
            java.lang.Object r3 = r9.n
            id3 r3 = (defpackage.id3) r3
            defpackage.r57.b(r10)
            goto L67
        L26:
            java.lang.Object r1 = r9.n
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r10)
            goto L49
        L2e:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.n
            id3 r10 = (defpackage.id3) r10
            vw r1 = r3.a
            r9.n = r10
            r9.m = r6
            java.lang.String r6 = r9.p
            java.lang.String r7 = r9.q
            java.lang.Object r1 = r1.b(r6, r7, r9)
            if (r1 != r0) goto L46
            goto L75
        L46:
            r8 = r1
            r1 = r10
            r10 = r8
        L49:
            gw2 r10 = (defpackage.gw2) r10
            boolean r6 = r10 instanceof gw2.c
            if (r6 == 0) goto L69
            e89 r3 = r3.b
            r6 = r10
            gw2$c r6 = (gw2.c) r6
            j3 r7 = r6.a
            java.lang.String r7 = r7.f
            r9.n = r1
            r9.l = r6
            r9.m = r5
            java.lang.Object r3 = r3.a(r7, r9)
            if (r3 != r0) goto L65
            goto L75
        L65:
            r3 = r1
            r1 = r10
        L67:
            r10 = r1
            r1 = r3
        L69:
            r9.n = r2
            r9.l = r2
            r9.m = r4
            java.lang.Object r9 = r1.emit(r10, r9)
            if (r9 != r0) goto L76
        L75:
            return r0
        L76:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zv1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
