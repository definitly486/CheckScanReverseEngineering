package yads;

import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes6.dex */
public final class kc3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ sc3 c;
    public final /* synthetic */ zc3 d;
    public final /* synthetic */ rd3 e;
    public final /* synthetic */ defpackage.ug6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kc3(sc3 sc3Var, zc3 zc3Var, rd3 rd3Var, defpackage.ug6 ug6Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = sc3Var;
        this.d = zc3Var;
        this.e = rd3Var;
        this.f = ug6Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new kc3(this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((kc3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r1.send(r7, r6) == r0) goto L17;
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
            int r1 = r6.b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1b
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r7)
            goto L3c
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r2
        L17:
            defpackage.r57.b(r7)
            goto L2d
        L1b:
            defpackage.r57.b(r7)
            yads.sc3 r7 = r6.c
            yads.zc3 r1 = r6.d
            yads.rd3 r5 = r6.e
            r6.b = r4
            java.lang.Object r7 = yads.sc3.a(r7, r1, r5, r6)
            if (r7 != r0) goto L2d
            goto L3b
        L2d:
            yads.ac3 r7 = (yads.ac3) r7
            if (r7 == 0) goto L3f
            ug6 r1 = r6.f
            r6.b = r3
            java.lang.Object r6 = r1.send(r7, r6)
            if (r6 != r0) goto L3c
        L3b:
            return r0
        L3c:
            j59 r6 = defpackage.j59.a
            return r6
        L3f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.kc3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
