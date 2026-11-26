package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.account.domain.useCases.ActivateAccountPromocodeUseCase$invoke$1", f = "ActivateAccountPromocodeUseCase.kt", l = {12, 14}, m = "invokeSuspend")
public final class j6 extends pg8 implements bm3<id3<? super o6>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ k6 n;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j6(k6 k6Var, String str, String str2, e02<? super j6> e02Var) {
        super(2, e02Var);
        this.n = k6Var;
        this.o = str;
        this.p = str2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        j6 j6Var = new j6(this.n, this.o, this.p, e02Var);
        j6Var.m = obj;
        return j6Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super o6> id3Var, e02<? super j59> e02Var) {
        return ((j6) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
    
        if (r1.emit(r7, r6) == r0) goto L17;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r6.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r7)
            goto L49
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r2
        L17:
            java.lang.Object r1 = r6.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r7)
            goto L3a
        L1f:
            defpackage.r57.b(r7)
            java.lang.Object r7 = r6.m
            r1 = r7
            id3 r1 = (defpackage.id3) r1
            k6 r7 = r6.n
            k5 r7 = r7.a
            r6.m = r1
            r6.l = r4
            java.lang.String r4 = r6.o
            java.lang.String r5 = r6.p
            java.lang.Object r7 = r7.a(r4, r5, r6)
            if (r7 != r0) goto L3a
            goto L48
        L3a:
            o6 r7 = (defpackage.o6) r7
            if (r7 == 0) goto L4c
            r6.m = r2
            r6.l = r3
            java.lang.Object r6 = r1.emit(r7, r6)
            if (r6 != r0) goto L49
        L48:
            return r0
        L49:
            j59 r6 = defpackage.j59.a
            return r6
        L4c:
            java.lang.String r6 = "result banner can not be null"
            defpackage.ah.f(r6)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j6.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
