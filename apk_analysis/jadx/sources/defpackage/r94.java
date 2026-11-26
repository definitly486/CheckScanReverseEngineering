package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class r94 implements Runnable {
    public final /* synthetic */ p94 b;

    public r94(p94 p94Var) {
        this.b = p94Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b.y.a == cx1.IDLE) {
            this.b.j.a(n91.a.INFO, "CONNECTING as requested");
            this.b.f(cx1.CONNECTING);
            this.b.i();
        }
    }
}
