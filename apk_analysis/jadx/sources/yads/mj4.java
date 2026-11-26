package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class mj4 extends defpackage.f02 {
    public b05 b;
    public ee4 c;
    public t5 d;
    public s5 e;
    public /* synthetic */ Object f;
    public final /* synthetic */ pj4 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mj4(pj4 pj4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.g = pj4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a(null, null, null, this);
    }
}
