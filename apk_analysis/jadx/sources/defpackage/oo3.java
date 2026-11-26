package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$refreshLinkAndPlay$1", f = "GamesViewModel.kt", l = {103, 103}, m = "invokeSuspend")
public final class oo3 extends pg8 implements bm3<id3<? super Boolean>, e02<? super j59>, Object> {
    public id3 l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ no3 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oo3(no3 no3Var, e02<? super oo3> e02Var) {
        super(2, e02Var);
        this.o = no3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        oo3 oo3Var = new oo3(this.o, e02Var);
        oo3Var.n = obj;
        return oo3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Boolean> id3Var, e02<? super j59> e02Var) {
        return ((oo3) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
    
        if (r0.emit(r7, r6) == r1) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.n
            id3 r0 = (defpackage.id3) r0
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r6.m
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L21
            if (r2 == r4) goto L1b
            if (r2 != r3) goto L15
            defpackage.r57.b(r7)
            goto L44
        L15:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r5
        L1b:
            id3 r0 = r6.l
            defpackage.r57.b(r7)
            goto L37
        L21:
            defpackage.r57.b(r7)
            no3 r7 = r6.o
            e17 r7 = r7.b
            r6.n = r5
            r6.l = r0
            r6.m = r4
            mo3 r7 = r7.a
            java.lang.Object r7 = r7.c(r6)
            if (r7 != r1) goto L37
            goto L43
        L37:
            r6.n = r5
            r6.l = r5
            r6.m = r3
            java.lang.Object r6 = r0.emit(r7, r6)
            if (r6 != r1) goto L44
        L43:
            return r1
        L44:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.oo3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
