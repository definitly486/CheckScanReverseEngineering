package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.balance.BalanceRepositoryImpl$transferToCard$1", f = "BalanceRepositoryImpl.kt", l = {133, 133}, m = "invokeSuspend")
public final class w60 extends pg8 implements bm3<id3<? super a40>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ x60 n;
    public final /* synthetic */ long o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w60(x60 x60Var, long j, e02<? super w60> e02Var) {
        super(2, e02Var);
        this.n = x60Var;
        this.o = j;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        w60 w60Var = new w60(this.n, this.o, e02Var);
        w60Var.m = obj;
        return w60Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super a40> id3Var, e02<? super j59> e02Var) {
        return ((w60) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        if (r1.emit(r9, r8) == r0) goto L15;
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
            int r1 = r8.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r9)
            goto L4e
        L11:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r2
        L17:
            java.lang.Object r1 = r8.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r9)
            goto L3d
        L1f:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.m
            r1 = r9
            id3 r1 = (defpackage.id3) r1
            x60 r9 = r8.n
            a10 r9 = r9.a
            r99 r5 = new r99
            long r6 = r8.o
            r5.<init>(r6)
            r8.m = r1
            r8.l = r4
            java.lang.Object r9 = r9.n(r5, r8)
            if (r9 != r0) goto L3d
            goto L4d
        L3d:
            s99 r9 = (defpackage.s99) r9
            a40 r9 = r9.a()
            r8.m = r2
            r8.l = r3
            java.lang.Object r8 = r1.emit(r9, r8)
            if (r8 != r0) goto L4e
        L4d:
            return r0
        L4e:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
