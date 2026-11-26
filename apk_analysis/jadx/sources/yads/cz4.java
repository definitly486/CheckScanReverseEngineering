package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cz4 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ fz4 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cz4(fz4 fz4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = fz4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return fz4.a(this.c, null, null, null, null, 0L, this);
    }
}
