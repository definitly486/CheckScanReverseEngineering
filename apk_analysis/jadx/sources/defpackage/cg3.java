package defpackage;

import com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.coroutines.FlowShortcutsKt$pollingFlow$1", f = "FlowShortcuts.kt", l = {33, 33, 39, 42}, m = "invokeSuspend")
public final class cg3 extends pg8 implements bm3<id3<Object>, e02<? super j59>, Object> {
    public id3 l;
    public long m;
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ long p;
    public final /* synthetic */ dg3 q;
    public final /* synthetic */ long r;
    public final /* synthetic */ VerificationUserCallPresenter.b s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cg3(long j, dg3 dg3Var, long j2, VerificationUserCallPresenter.b bVar, e02 e02Var) {
        super(2, e02Var);
        this.p = j;
        this.q = dg3Var;
        this.r = j2;
        this.s = bVar;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        cg3 cg3Var = new cg3(this.p, this.q, this.r, this.s, e02Var);
        cg3Var.o = obj;
        return cg3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<Object> id3Var, e02<? super j59> e02Var) {
        return ((cg3) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007d  */
    /* JADX WARN: Code duplicated, block: B:27:0x008c  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c1  */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cb, code lost:
    
        if (r13.s.invoke(r13) == r0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0052, code lost:
    
        if (r14 != r0) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cg3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
