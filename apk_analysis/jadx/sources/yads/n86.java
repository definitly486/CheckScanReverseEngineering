package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class n86 implements nb6 {
    public final jf6 a;
    public final eb6 b;
    public final pf6 c;
    public boolean d;

    public n86(of6 of6Var, jf6 jf6Var, eb6 eb6Var) {
        pf6 pf6Var = new pf6(of6Var);
        this.a = jf6Var;
        this.b = eb6Var;
        this.c = pf6Var;
    }

    @Override // yads.nb6
    public final void a(long j, long j2) {
        if (this.d || j2 <= 0 || !this.c.a()) {
            return;
        }
        this.d = true;
        jf6 jf6Var = this.a;
        jf6Var.a.a(j, this.b.getVolume());
    }
}
