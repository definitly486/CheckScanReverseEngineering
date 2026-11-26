package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class yz4 extends defpackage.f02 {
    public defpackage.yg5 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ zz4 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yz4(zz4 zz4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = zz4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
