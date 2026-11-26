package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bl0 extends defpackage.f02 {
    public n8 b;
    public long c;
    public /* synthetic */ Object d;
    public final /* synthetic */ cl0 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bl0(cl0 cl0Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.e = cl0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(null, 0L, this);
    }
}
