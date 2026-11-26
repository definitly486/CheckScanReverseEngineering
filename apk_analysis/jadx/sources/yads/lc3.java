package yads;

import defpackage.j59;
import defpackage.pg8;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class lc3 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ sc3 d;
    public final /* synthetic */ Set e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lc3(sc3 sc3Var, Set set, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = sc3Var;
        this.e = set;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        lc3 lc3Var = new lc3(this.d, this.e, e02Var);
        lc3Var.c = obj;
        return lc3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((lc3) create((defpackage.ug6) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
    
        if (defpackage.oz.a(r1, r10) == r0) goto L20;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) throws java.lang.Throwable {
        /*
            r10 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r10.b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L20
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r11)
            goto L7e
        L11:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r10)
            return r2
        L17:
            java.lang.Object r1 = r10.c
            ug6 r1 = (defpackage.ug6) r1
            defpackage.r57.b(r11)
        L1e:
            r8 = r1
            goto L41
        L20:
            defpackage.r57.b(r11)
            java.lang.Object r11 = r10.c
            r1 = r11
            ug6 r1 = (defpackage.ug6) r1
            yads.sc3 r11 = r10.d
            r10.c = r1
            r10.b = r4
            r11.getClass()
            oi2 r4 = defpackage.qo2.a
            sh2 r4 = defpackage.sh2.c
            yads.rc3 r5 = new yads.rc3
            r5.<init>(r11, r2)
            java.lang.Object r11 = defpackage.av0.d(r4, r5, r10)
            if (r11 != r0) goto L1e
            goto L7d
        L41:
            r6 = r11
            yads.zc3 r6 = (yads.zc3) r6
            java.util.Set r11 = r10.e
            yads.sc3 r5 = r10.d
            java.util.ArrayList r1 = new java.util.ArrayList
            r4 = 10
            int r4 = defpackage.kn1.q(r11, r4)
            r1.<init>(r4)
            java.util.Iterator r11 = r11.iterator()
        L57:
            boolean r4 = r11.hasNext()
            if (r4 == 0) goto L73
            java.lang.Object r4 = r11.next()
            r7 = r4
            yads.rd3 r7 = (yads.rd3) r7
            yads.kc3 r4 = new yads.kc3
            r9 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            r7 = 3
            nk2 r4 = defpackage.av0.a(r8, r2, r2, r4, r7)
            r1.add(r4)
            goto L57
        L73:
            r10.c = r2
            r10.b = r3
            java.lang.Object r10 = defpackage.oz.a(r1, r10)
            if (r10 != r0) goto L7e
        L7d:
            return r0
        L7e:
            j59 r10 = defpackage.j59.a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.lc3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
