package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bo5 extends defpackage.f02 {
    public defpackage.yg5 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ co5 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bo5(co5 co5Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = co5Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
