package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class kn2 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ ln2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kn2(ln2 ln2Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = ln2Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a(null, this);
    }
}
