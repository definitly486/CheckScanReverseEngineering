package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class q66 extends u66 {
    public final String b;
    public double c;

    public q66(String str, double d) {
        this.b = str;
        this.c = d;
    }

    public final void a(double d) {
        b(d);
    }

    public final void b(double d) {
        if (this.c == d) {
            return;
        }
        this.c = d;
        a((u66) this);
    }

    public final double c() {
        return this.c;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }
}
