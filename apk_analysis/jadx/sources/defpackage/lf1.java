package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.cheque.ChequeRepositoryImpl$fetchChequesByPage$1", f = "ChequeRepositoryImpl.kt", l = {66, 67}, m = "invokeSuspend")
public final class lf1 extends pg8 implements bm3<id3<? super List<? extends hd1>>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ kf1 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ String p;
    public final /* synthetic */ String q;
    public final /* synthetic */ Integer r;
    public final /* synthetic */ Integer s;
    public final /* synthetic */ int t;
    public final /* synthetic */ String u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lf1(kf1 kf1Var, int i, String str, String str2, Integer num, Integer num2, int i2, String str3, e02 e02Var) {
        super(2, e02Var);
        this.n = kf1Var;
        this.o = i;
        this.p = str;
        this.q = str2;
        this.r = num;
        this.s = num2;
        this.t = i2;
        this.u = str3;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        lf1 lf1Var = new lf1(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, e02Var);
        lf1Var.m = obj;
        return lf1Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super List<? extends hd1>> id3Var, e02<? super j59> e02Var) {
        return ((lf1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
    
        if (r13.emit(r0, r14) == r10) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            a32 r10 = defpackage.a32.COROUTINE_SUSPENDED
            int r0 = r14.l
            r11 = 0
            r12 = 2
            r1 = 1
            if (r0 == 0) goto L21
            if (r0 == r1) goto L17
            if (r0 != r12) goto L11
            defpackage.r57.b(r15)
            goto L5a
        L11:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r0)
            return r11
        L17:
            java.lang.Object r0 = r14.m
            id3 r0 = (defpackage.id3) r0
            defpackage.r57.b(r15)
            r13 = r0
            r0 = r15
            goto L49
        L21:
            defpackage.r57.b(r15)
            java.lang.Object r0 = r14.m
            r13 = r0
            id3 r13 = (defpackage.id3) r13
            kf1 r0 = r14.n
            mh1 r0 = r0.a
            r14.m = r13
            r14.l = r1
            int r1 = r14.o
            java.lang.String r2 = r14.p
            java.lang.String r3 = r14.q
            java.lang.Integer r4 = r14.r
            java.lang.Integer r5 = r14.s
            int r6 = r14.t
            r7 = 20
            java.lang.String r8 = r14.u
            r9 = r14
            java.lang.Object r0 = r0.i(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            if (r0 != r10) goto L49
            goto L59
        L49:
            ei1 r0 = (defpackage.ei1) r0
            java.util.ArrayList r0 = r0.b()
            r14.m = r11
            r14.l = r12
            java.lang.Object r0 = r13.emit(r0, r14)
            if (r0 != r10) goto L5a
        L59:
            return r10
        L5a:
            j59 r0 = defpackage.j59.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lf1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
