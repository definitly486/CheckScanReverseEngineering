package yads;

import defpackage.j59;
import defpackage.pg8;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class jc3 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ sc3 d;
    public final /* synthetic */ Set e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jc3(sc3 sc3Var, Set set, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = sc3Var;
        this.e = set;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        jc3 jc3Var = new jc3(this.d, this.e, e02Var);
        jc3Var.c = obj;
        return jc3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((jc3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
    
        if (r10 == r0) goto L19;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r9.b
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L1f
            if (r1 == r3) goto L17
            if (r1 != r2) goto L11
            defpackage.r57.b(r10)
            goto L7a
        L11:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r4
        L17:
            java.lang.Object r1 = r9.c
            y22 r1 = (defpackage.y22) r1
            defpackage.r57.b(r10)
            goto L40
        L1f:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.c
            r1 = r10
            y22 r1 = (defpackage.y22) r1
            yads.sc3 r10 = r9.d
            r9.c = r1
            r9.b = r3
            r10.getClass()
            oi2 r3 = defpackage.qo2.a
            sh2 r3 = defpackage.sh2.c
            yads.rc3 r5 = new yads.rc3
            r5.<init>(r10, r4)
            java.lang.Object r10 = defpackage.av0.d(r3, r5, r9)
            if (r10 != r0) goto L40
            goto L79
        L40:
            yads.zc3 r10 = (yads.zc3) r10
            java.util.Set r3 = r9.e
            yads.sc3 r5 = r9.d
            java.util.ArrayList r6 = new java.util.ArrayList
            r7 = 10
            int r7 = defpackage.kn1.q(r3, r7)
            r6.<init>(r7)
            java.util.Iterator r3 = r3.iterator()
        L55:
            boolean r7 = r3.hasNext()
            if (r7 == 0) goto L6f
            java.lang.Object r7 = r3.next()
            yads.rd3 r7 = (yads.rd3) r7
            yads.ic3 r8 = new yads.ic3
            r8.<init>(r5, r10, r7, r4)
            r7 = 3
            nk2 r7 = defpackage.av0.a(r1, r4, r4, r8, r7)
            r6.add(r7)
            goto L55
        L6f:
            r9.c = r4
            r9.b = r2
            java.lang.Object r10 = defpackage.oz.a(r6, r9)
            if (r10 != r0) goto L7a
        L79:
            return r0
        L7a:
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.ArrayList r9 = defpackage.qn1.R(r10)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.jc3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
