package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.balance.BalanceRepositoryImpl$sendPostEvent$1", f = "BalanceRepositoryImpl.kt", l = {73, 74}, m = "invokeSuspend")
public final class v60 extends pg8 implements bm3<id3<? super j59>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ x60 n;
    public final /* synthetic */ String o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v60(x60 x60Var, String str, e02<? super v60> e02Var) {
        super(2, e02Var);
        this.n = x60Var;
        this.o = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        v60 v60Var = new v60(this.n, this.o, e02Var);
        v60Var.m = obj;
        return v60Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super j59> id3Var, e02<? super j59> e02Var) {
        return ((v60) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
    
        if (r1.emit(r6, r5) == r0) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r6)
            goto L45
        L11:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            return r2
        L17:
            java.lang.Object r1 = r5.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r6)
            goto L38
        L1f:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.m
            r1 = r6
            id3 r1 = (defpackage.id3) r1
            x60 r6 = r5.n
            a10 r6 = r6.a
            r5.m = r1
            r5.l = r4
            java.lang.String r4 = r5.o
            java.lang.Object r6 = r6.w(r4, r5)
            if (r6 != r0) goto L38
            goto L44
        L38:
            j59 r6 = defpackage.j59.a
            r5.m = r2
            r5.l = r3
            java.lang.Object r5 = r1.emit(r6, r5)
            if (r5 != r0) goto L45
        L44:
            return r0
        L45:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
