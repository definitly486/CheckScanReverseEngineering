package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.bonusesBlockRepository.BonusesBlocksRepositoryImpl$updateFavoriteStatusShop$1", f = "BonusesBlocksRepositoryImpl.kt", l = {214, 218}, m = "invokeSuspend")
public final class oq0 extends pg8 implements bm3<id3<? super Boolean>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ pq0 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ boolean p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oq0(pq0 pq0Var, int i, boolean z, e02<? super oq0> e02Var) {
        super(2, e02Var);
        this.n = pq0Var;
        this.o = i;
        this.p = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        oq0 oq0Var = new oq0(this.n, this.o, this.p, e02Var);
        oq0Var.m = obj;
        return oq0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Boolean> id3Var, e02<? super j59> e02Var) {
        return ((oq0) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        if (r1.emit(r9, r8) == r0) goto L23;
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
            boolean r4 = r8.p
            r5 = 1
            if (r1 == 0) goto L21
            if (r1 == r5) goto L19
            if (r1 != r3) goto L13
            defpackage.r57.b(r9)
            goto L62
        L13:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r2
        L19:
            java.lang.Object r1 = r8.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r9)
            goto L3f
        L21:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.m
            r1 = r9
            id3 r1 = (defpackage.id3) r1
            pq0 r9 = r8.n
            np0 r9 = r9.a
            d63 r6 = new d63
            int r7 = r8.o
            r6.<init>(r7, r4)
            r8.m = r1
            r8.l = r5
            java.lang.Object r9 = r9.f(r6, r8)
            if (r9 != r0) goto L3f
            goto L61
        L3f:
            a57 r9 = (defpackage.a57) r9
            z47 r9 = r9.a
            int r9 = r9.e
            r6 = 200(0xc8, float:2.8E-43)
            if (r6 > r9) goto L4e
            r6 = 301(0x12d, float:4.22E-43)
            if (r9 >= r6) goto L4e
            goto L53
        L4e:
            if (r4 != 0) goto L52
            r4 = r5
            goto L53
        L52:
            r4 = 0
        L53:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r4)
            r8.m = r2
            r8.l = r3
            java.lang.Object r8 = r1.emit(r9, r8)
            if (r8 != r0) goto L62
        L61:
            return r0
        L62:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.oq0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
