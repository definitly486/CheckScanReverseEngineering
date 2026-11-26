package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class mj2 extends defpackage.f02 {
    public t5 b;
    public s5 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ qj2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mj2(qj2 qj2Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.e = qj2Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(this);
    }
}
