package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.balance.BalanceRepositoryImpl$selectTransferPromocode$1", f = "BalanceRepositoryImpl.kt", l = {145, 145}, m = "invokeSuspend")
public final class t60 extends pg8 implements bm3<id3<? super jm7>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ x60 n;
    public final /* synthetic */ int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t60(x60 x60Var, int i, e02<? super t60> e02Var) {
        super(2, e02Var);
        this.n = x60Var;
        this.o = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        t60 t60Var = new t60(this.n, this.o, e02Var);
        t60Var.m = obj;
        return t60Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super jm7> id3Var, e02<? super j59> e02Var) {
        return ((t60) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        if (r1.emit(r8, r7) == r0) goto L15;
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
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r8)
            goto L4e
        L11:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L17:
            java.lang.Object r1 = r7.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r8)
            goto L3d
        L1f:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.m
            r1 = r8
            id3 r1 = (defpackage.id3) r1
            x60 r8 = r7.n
            a10 r8 = r8.a
            kq6 r5 = new kq6
            int r6 = r7.o
            r5.<init>(r6)
            r7.m = r1
            r7.l = r4
            java.lang.Object r8 = r8.B(r5, r7)
            if (r8 != r0) goto L3d
            goto L4d
        L3d:
            fq6 r8 = (defpackage.fq6) r8
            jm7 r8 = r8.a()
            r7.m = r2
            r7.l = r3
            java.lang.Object r7 = r1.emit(r8, r7)
            if (r7 != r0) goto L4e
        L4d:
            return r0
        L4e:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
