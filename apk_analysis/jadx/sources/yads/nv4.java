package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nv4 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ sv4 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nv4(sv4 sv4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = sv4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a(0L, this);
    }
}
