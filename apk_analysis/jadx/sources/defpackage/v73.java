package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.usecase.promocode.FetchPromocodeCodeUseCase$invoke$1", f = "FetchPromocodeCodeUseCase.kt", l = {12, 17, 19}, m = "invokeSuspend")
public final class v73 extends pg8 implements bm3<id3<? super s6>, e02<? super j59>, Object> {
    public String l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ w73 p;
    public final /* synthetic */ int q;
    public final /* synthetic */ int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v73(boolean z, w73 w73Var, int i, int i2, e02<? super v73> e02Var) {
        super(2, e02Var);
        this.o = z;
        this.p = w73Var;
        this.q = i;
        this.r = i2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        v73 v73Var = new v73(this.o, this.p, this.q, this.r, e02Var);
        v73Var.n = obj;
        return v73Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super s6> id3Var, e02<? super j59> e02Var) {
        return ((v73) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        if (r9 == r0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
    
        if (r2.emit(r9, r8) == r0) goto L25;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r8.m
            w73 r2 = r8.p
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L2e
            if (r1 == r5) goto L26
            if (r1 == r4) goto L1c
            if (r1 != r3) goto L16
            defpackage.r57.b(r9)
            goto L75
        L16:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r6
        L1c:
            java.lang.String r1 = r8.l
            java.lang.Object r2 = r8.n
            id3 r2 = (defpackage.id3) r2
            defpackage.r57.b(r9)
            goto L63
        L26:
            java.lang.Object r1 = r8.n
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r9)
            goto L49
        L2e:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.n
            r1 = r9
            id3 r1 = (defpackage.id3) r1
            boolean r9 = r8.o
            if (r9 != 0) goto L4f
            ap8 r9 = r2.a
            r8.n = r1
            r8.m = r5
            int r5 = r8.q
            java.lang.Object r9 = r9.m(r5, r8)
            if (r9 != r0) goto L49
            goto L74
        L49:
            java.lang.String r9 = (java.lang.String) r9
            r7 = r1
            r1 = r9
            r9 = r7
            goto L51
        L4f:
            r9 = r1
            r1 = r6
        L51:
            ap8 r2 = r2.a
            r8.n = r9
            r8.l = r1
            r8.m = r4
            int r4 = r8.r
            java.lang.Object r2 = r2.q(r4, r8)
            if (r2 != r0) goto L62
            goto L74
        L62:
            r2 = r9
        L63:
            s6 r9 = new s6
            r9.<init>(r1)
            r8.n = r6
            r8.l = r6
            r8.m = r3
            java.lang.Object r8 = r2.emit(r9, r8)
            if (r8 != r0) goto L75
        L74:
            return r0
        L75:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v73.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
