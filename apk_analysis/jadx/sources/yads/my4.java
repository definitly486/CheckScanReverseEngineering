package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class my4 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ ny4 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public my4(ny4 ny4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = ny4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a(null, null, this);
    }
}
