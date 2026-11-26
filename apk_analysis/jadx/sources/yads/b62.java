package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class b62 extends yh1 {
    public final /* synthetic */ uu5 a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b62(uu5 uu5Var, int i, int i2, vq0 vq0Var) {
        super(vq0Var);
        this.a = uu5Var;
        this.b = i;
        this.c = i2;
    }

    @Override // yads.ji1
    public final void a(uw uwVar) {
        this.a.setTabDelimiter(uwVar.a, this.b, this.c);
    }

    @Override // yads.ji1
    public final void a() {
        this.a.setTabDelimiter(null, 0, 0);
    }
}
