package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wz4 extends defpackage.f02 {
    public a13 b;
    public Object c;
    public defpackage.yg5 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ zz4 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wz4(zz4 zz4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.f = zz4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a(null, null, this);
    }
}
