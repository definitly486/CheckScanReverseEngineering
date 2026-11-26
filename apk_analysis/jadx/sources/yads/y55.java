package yads;

import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public final class y55 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ b65 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y55(b65 b65Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = b65Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.c.a(this);
        return objA == defpackage.a32.COROUTINE_SUSPENDED ? objA : new k57(objA);
    }
}
