package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.repositories.BonusBlocksRepositoryImpl$updateFavoriteStatusShop$1", f = "BonusBlocksRepositoryImpl.kt", l = {73, 77}, m = "invokeSuspend")
public final class zn0 extends pg8 implements bm3<id3<? super Boolean>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ ao0 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ boolean p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zn0(ao0 ao0Var, int i, boolean z, e02<? super zn0> e02Var) {
        super(2, e02Var);
        this.n = ao0Var;
        this.o = i;
        this.p = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        zn0 zn0Var = new zn0(this.n, this.o, this.p, e02Var);
        zn0Var.m = obj;
        return zn0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Boolean> id3Var, e02<? super j59> e02Var) {
        return ((zn0) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        if (r1.emit(r10, r9) == r0) goto L23;
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
            int r1 = r9.l
            r2 = 0
            r3 = 2
            boolean r4 = r9.p
            r5 = 1
            if (r1 == 0) goto L21
            if (r1 == r5) goto L19
            if (r1 != r3) goto L13
            defpackage.r57.b(r10)
            goto L63
        L13:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r2
        L19:
            java.lang.Object r1 = r9.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r10)
            goto L40
        L21:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.m
            r1 = r10
            id3 r1 = (defpackage.id3) r1
            ao0 r10 = r9.n
            el0 r10 = r10.a
            int r6 = r9.o
            long r6 = (long) r6
            e63 r8 = new e63
            r8.<init>(r4, r6)
            r9.m = r1
            r9.l = r5
            java.lang.Object r10 = r10.k(r8, r9)
            if (r10 != r0) goto L40
            goto L62
        L40:
            a57 r10 = (defpackage.a57) r10
            z47 r10 = r10.a
            int r10 = r10.e
            r6 = 200(0xc8, float:2.8E-43)
            if (r6 > r10) goto L4f
            r6 = 301(0x12d, float:4.22E-43)
            if (r10 >= r6) goto L4f
            goto L54
        L4f:
            if (r4 != 0) goto L53
            r4 = r5
            goto L54
        L53:
            r4 = 0
        L54:
            java.lang.Boolean r10 = java.lang.Boolean.valueOf(r4)
            r9.m = r2
            r9.l = r3
            java.lang.Object r9 = r1.emit(r10, r9)
            if (r9 != r0) goto L63
        L62:
            return r0
        L63:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zn0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
