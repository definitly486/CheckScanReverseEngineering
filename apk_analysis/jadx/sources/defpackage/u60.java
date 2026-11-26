package defpackage;

import com.yalantis.ucrop.UCrop;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.balance.BalanceRepositoryImpl$sendEvent$1", f = "BalanceRepositoryImpl.kt", l = {67, 68, UCrop.REQUEST_CROP}, m = "invokeSuspend")
public final class u60 extends pg8 implements bm3<id3<? super j59>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ u37 n;
    public final /* synthetic */ x60 o;
    public final /* synthetic */ String p;
    public final /* synthetic */ String q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u60(u37 u37Var, x60 x60Var, String str, String str2, e02<? super u60> e02Var) {
        super(2, e02Var);
        this.n = u37Var;
        this.o = x60Var;
        this.p = str;
        this.q = str2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        u60 u60Var = new u60(this.n, this.o, this.p, this.q, e02Var);
        u60Var.m = obj;
        return u60Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super j59> id3Var, e02<? super j59> e02Var) {
        return ((u60) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
    
        if (r1.emit(r10, r9) == r0) goto L21;
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
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L22
            if (r1 == r5) goto L1a
            if (r1 == r4) goto L1a
            if (r1 != r3) goto L14
            defpackage.r57.b(r10)
            goto L5b
        L14:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r2
        L1a:
            java.lang.Object r1 = r9.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r10)
            goto L4e
        L22:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.m
            r1 = r10
            id3 r1 = (defpackage.id3) r1
            u37 r10 = defpackage.u37.GET
            x60 r6 = r9.o
            a10 r6 = r6.a
            java.lang.String r7 = r9.p
            u37 r8 = r9.n
            if (r8 != r10) goto L41
            r9.m = r1
            r9.l = r5
            java.lang.Object r10 = r6.l(r7, r9)
            if (r10 != r0) goto L4e
            goto L5a
        L41:
            r9.m = r1
            r9.l = r4
            java.lang.String r10 = r9.q
            java.lang.Object r10 = r6.d(r7, r10, r9)
            if (r10 != r0) goto L4e
            goto L5a
        L4e:
            j59 r10 = defpackage.j59.a
            r9.m = r2
            r9.l = r3
            java.lang.Object r9 = r1.emit(r10, r9)
            if (r9 != r0) goto L5b
        L5a:
            return r0
        L5b:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
