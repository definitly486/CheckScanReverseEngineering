package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qf5 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ rf5 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qf5(rf5 rf5Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = rf5Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((fe5) null, this);
    }
}
