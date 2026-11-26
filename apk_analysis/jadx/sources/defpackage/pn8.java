package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.interactor.TaskInteractor$fetchMainTasks$1", f = "TaskInteractor.kt", l = {15, 15}, m = "invokeSuspend")
public final class pn8 extends pg8 implements bm3<id3<? super yo8>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ vn8 n;
    public final /* synthetic */ boolean o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pn8(vn8 vn8Var, boolean z, e02<? super pn8> e02Var) {
        super(2, e02Var);
        this.n = vn8Var;
        this.o = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        pn8 pn8Var = new pn8(this.n, this.o, e02Var);
        pn8Var.m = obj;
        return pn8Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super yo8> id3Var, e02<? super j59> e02Var) {
        return ((pn8) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
    
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
            goto L43
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
            vn8 r6 = r5.n
            ap8 r6 = r6.a
            r5.m = r1
            r5.l = r4
            boolean r4 = r5.o
            java.lang.Object r6 = r6.k(r4, r5)
            if (r6 != r0) goto L38
            goto L42
        L38:
            r5.m = r2
            r5.l = r3
            java.lang.Object r5 = r1.emit(r6, r5)
            if (r5 != r0) goto L43
        L42:
            return r0
        L43:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pn8.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
