package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xz4 extends defpackage.f02 {
    public a13 b;
    public defpackage.yg5 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ zz4 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xz4(zz4 zz4Var, defpackage.e02 e02Var) {
        super(e02Var);
        this.e = zz4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(null, this);
    }
}
