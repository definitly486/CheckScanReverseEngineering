package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class b86 implements nb6 {
    public final ja6 a;
    public final jf6 b;
    public final ya6 c;
    public final pf6 d;
    public boolean e;

    public b86(ja6 ja6Var, of6 of6Var, jf6 jf6Var, ya6 ya6Var) {
        pf6 pf6Var = new pf6(of6Var);
        this.a = ja6Var;
        this.b = jf6Var;
        this.c = ya6Var;
        this.d = pf6Var;
    }

    @Override // yads.nb6
    public final void a(long j, long j2) {
        if (this.e || j2 <= 0 || !this.d.a()) {
            return;
        }
        this.e = true;
        this.b.h();
        this.c.f(this.a);
    }
}
