package yads;

import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes6.dex */
public final class m13 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ n13 c;
    public final /* synthetic */ n8 d;
    public final /* synthetic */ g13 e;
    public final /* synthetic */ ar f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m13(n13 n13Var, n8 n8Var, g13 g13Var, ar arVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = n13Var;
        this.d = n8Var;
        this.e = g13Var;
        this.f = arVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new m13(this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((m13) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bd, code lost:
    
        if (r5 == r0) goto L49;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12 */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.m13.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
