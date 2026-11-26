package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class b75 implements wa6 {
    public final gr2 a;
    public final ja6 b;
    public final rb6 c;
    public final a75 d;
    public bb6 e;

    public b75(gr2 gr2Var, ja6 ja6Var, ob6 ob6Var) {
        rb6 rb6Var = new rb6(new vk4(gr2Var), ob6Var);
        this.a = gr2Var;
        this.b = ja6Var;
        this.c = rb6Var;
        this.d = new a75(this);
    }

    @Override // yads.wa6
    public final void a(bb6 bb6Var) {
        this.e = bb6Var;
    }

    @Override // yads.wa6
    public final void play() {
        this.a.a(this.d);
        this.a.a((ol4) this.b.d);
    }

    @Override // yads.wa6
    public final void stop() {
        this.c.b();
        this.a.d();
        this.a.g();
    }
}
