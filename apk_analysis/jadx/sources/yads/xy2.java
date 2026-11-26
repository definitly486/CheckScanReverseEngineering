package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xy2 extends defpackage.f02 {
    public c65 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ bz2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xy2(bz2 bz2Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = bz2Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
