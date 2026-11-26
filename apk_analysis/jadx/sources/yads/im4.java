package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class im4 implements n03, mm4 {
    public final lm4 a;
    public final ra5 b;

    public im4(lm4 lm4Var, ra5 ra5Var) {
        this.a = lm4Var;
        this.b = ra5Var;
    }

    @Override // yads.mm4
    public final void a(boolean z) {
        if (z) {
            return;
        }
        this.b.a();
        this.a.a.remove(this);
    }

    @Override // yads.n03
    public final void invalidate() {
        this.a.a.remove(this);
    }

    @Override // yads.n03
    public final void pause() {
    }

    @Override // yads.n03
    public final void resume() {
    }

    @Override // yads.n03
    public final void start() {
        this.a.a.add(this);
    }

    @Override // yads.mm4
    public final void a() {
    }
}
