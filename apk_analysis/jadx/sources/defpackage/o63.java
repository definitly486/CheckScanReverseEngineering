package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.usecase.FetchAdOrderUseCase$invoke$1", f = "FetchAdOrderUseCase.kt", l = {8, 8}, m = "invokeSuspend")
public final class o63 extends pg8 implements bm3<id3<? super List<? extends w48>>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ p63 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o63(p63 p63Var, e02<? super o63> e02Var) {
        super(2, e02Var);
        this.n = p63Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        o63 o63Var = new o63(this.n, e02Var);
        o63Var.m = obj;
        return o63Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super List<? extends w48>> id3Var, e02<? super j59> e02Var) {
        return ((o63) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        if (r1.emit(r4, r6) == r0) goto L21;
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
            goto L68
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r2
        L17:
            java.lang.Object r1 = r6.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r7)
            goto L36
        L1f:
            defpackage.r57.b(r7)
            java.lang.Object r7 = r6.m
            r1 = r7
            id3 r1 = (defpackage.id3) r1
            p63 r7 = r6.n
            ap8 r7 = r7.a
            r6.m = r1
            r6.l = r4
            java.lang.Object r7 = r7.e(r6)
            if (r7 != r0) goto L36
            goto L67
        L36:
            nl8 r7 = (defpackage.nl8) r7
            java.util.List r7 = r7.a()
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r7 = r7.iterator()
        L47:
            boolean r5 = r7.hasNext()
            if (r5 == 0) goto L5d
            java.lang.Object r5 = r7.next()
            nl8$a r5 = (nl8.a) r5
            w48 r5 = r5.a()
            if (r5 == 0) goto L47
            r4.add(r5)
            goto L47
        L5d:
            r6.m = r2
            r6.l = r3
            java.lang.Object r6 = r1.emit(r4, r6)
            if (r6 != r0) goto L68
        L67:
            return r0
        L68:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o63.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
