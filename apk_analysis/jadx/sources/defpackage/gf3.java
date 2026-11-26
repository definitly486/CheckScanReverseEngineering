package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", l = {29, 29}, m = "invokeSuspend", v = 1)
public final class gf3 extends pg8 implements dm3<id3<Object>, Object[], e02<? super j59>, Object> {
    public id3 l;
    public int m;
    public /* synthetic */ id3 n;
    public /* synthetic */ Object[] o;
    public final /* synthetic */ dm3<Object, Object, e02<Object>, Object> p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public gf3(dm3<Object, Object, ? super e02<Object>, ? extends Object> dm3Var, e02<? super gf3> e02Var) {
        super(3, e02Var);
        this.p = dm3Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<Object> id3Var, Object[] objArr, e02<? super j59> e02Var) {
        gf3 gf3Var = new gf3(this.p, e02Var);
        gf3Var.n = id3Var;
        gf3Var.o = objArr;
        return gf3Var.invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
        if (r0.emit(r8, r7) == r2) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            id3 r0 = r7.n
            java.lang.Object[] r1 = r7.o
            a32 r2 = defpackage.a32.COROUTINE_SUSPENDED
            int r3 = r7.m
            r4 = 2
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L21
            if (r3 == r5) goto L1b
            if (r3 != r4) goto L15
            defpackage.r57.b(r8)
            goto L49
        L15:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r6
        L1b:
            id3 r0 = r7.l
            defpackage.r57.b(r8)
            goto L3a
        L21:
            defpackage.r57.b(r8)
            r8 = 0
            r8 = r1[r8]
            r1 = r1[r5]
            r7.n = r6
            r7.o = r6
            r7.l = r0
            r7.m = r5
            dm3<java.lang.Object, java.lang.Object, e02<java.lang.Object>, java.lang.Object> r3 = r7.p
            java.lang.Object r8 = r3.invoke(r8, r1, r7)
            if (r8 != r2) goto L3a
            goto L48
        L3a:
            r7.n = r6
            r7.o = r6
            r7.l = r6
            r7.m = r4
            java.lang.Object r7 = r0.emit(r8, r7)
            if (r7 != r2) goto L49
        L48:
            return r2
        L49:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gf3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
