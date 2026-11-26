package yads;

import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;

/* JADX INFO: loaded from: classes6.dex */
public final class ss3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ts3 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ nl3 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ss3(ts3 ts3Var, String str, String str2, nl3 nl3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ts3Var;
        this.d = str;
        this.e = str2;
        this.f = nl3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ss3(this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((ss3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
    
        if (r7 == r0) goto L18;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) throws java.lang.Throwable {
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
            goto L59
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r2
        L17:
            defpackage.r57.b(r7)
            goto L39
        L1b:
            defpackage.r57.b(r7)
            yads.ts3 r7 = r6.c
            yads.ct3 r7 = r7.c
            java.lang.String r1 = r6.d
            r6.b = r4
            r7.getClass()
            oi2 r4 = defpackage.qo2.a
            sh2 r4 = defpackage.sh2.c
            yads.at3 r5 = new yads.at3
            r5.<init>(r7, r1, r2)
            java.lang.Object r7 = defpackage.av0.d(r4, r5, r6)
            if (r7 != r0) goto L39
            goto L58
        L39:
            yads.ts3 r7 = r6.c
            yads.ct3 r7 = r7.c
            java.lang.String r1 = r6.e
            r6.b = r3
            r7.getClass()
            oi2 r3 = defpackage.qo2.a
            sh2 r3 = defpackage.sh2.c
            yads.bt3 r4 = new yads.bt3
            r4.<init>(r7, r1, r2)
            java.lang.Object r7 = defpackage.av0.d(r3, r4, r6)
            if (r7 != r0) goto L54
            goto L56
        L54:
            j59 r7 = defpackage.j59.a
        L56:
            if (r7 != r0) goto L59
        L58:
            return r0
        L59:
            nl3 r7 = r6.f
            java.lang.String r6 = r6.d
            r7.invoke(r6)
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.ss3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
