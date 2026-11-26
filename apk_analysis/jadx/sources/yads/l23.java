package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class l23 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ m23 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l23(m23 m23Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = m23Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a(this);
    }
}
