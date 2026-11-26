package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.balance.BalanceRepositoryImpl$fetchTransferPromocodes$1", f = "BalanceRepositoryImpl.kt", l = {137, 137}, m = "invokeSuspend")
public final class r60 extends pg8 implements bm3<id3<? super List<? extends fr6>>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ x60 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r60(x60 x60Var, int i, int i2, e02 e02Var) {
        super(2, e02Var);
        this.n = x60Var;
        this.o = i;
        this.p = i2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        r60 r60Var = new r60(this.n, this.o, this.p, e02Var);
        r60Var.m = obj;
        return r60Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super List<? extends fr6>> id3Var, e02<? super j59> e02Var) {
        return ((r60) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006d, code lost:
    
        if (r1.emit(r5, r7) == r0) goto L19;
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
            r3 = 10
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L21
            if (r1 == r5) goto L19
            if (r1 != r4) goto L13
            defpackage.r57.b(r8)
            goto L70
        L13:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L19:
            java.lang.Object r1 = r7.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r8)
            goto L3c
        L21:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.m
            r1 = r8
            id3 r1 = (defpackage.id3) r1
            x60 r8 = r7.n
            a10 r8 = r8.a
            r7.m = r1
            r7.l = r5
            int r5 = r7.o
            int r6 = r7.p
            java.lang.Object r8 = r8.m(r5, r6, r3, r7)
            if (r8 != r0) goto L3c
            goto L6f
        L3c:
            j26 r8 = (defpackage.j26) r8
            java.util.List r8 = r8.a()
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.ArrayList r5 = new java.util.ArrayList
            int r3 = defpackage.kn1.q(r8, r3)
            r5.<init>(r3)
            java.util.Iterator r8 = r8.iterator()
        L51:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L65
            java.lang.Object r3 = r8.next()
            hq6 r3 = (defpackage.hq6) r3
            fr6 r3 = r3.a()
            r5.add(r3)
            goto L51
        L65:
            r7.m = r2
            r7.l = r4
            java.lang.Object r7 = r1.emit(r5, r7)
            if (r7 != r0) goto L70
        L6f:
            return r0
        L70:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
