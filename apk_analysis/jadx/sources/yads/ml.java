package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ml {
    public final int a;
    public int b;
    public int c;
    public long d;
    public final boolean e;
    public final os4 f;
    public final os4 g;
    public int h;
    public int i;

    public ml(os4 os4Var, os4 os4Var2, boolean z) throws xs4 {
        this.g = os4Var;
        this.f = os4Var2;
        this.e = z;
        os4Var2.e(12);
        this.a = os4Var2.n();
        os4Var.e(12);
        this.i = os4Var.n();
        at2.a("first_chunk must be 1", os4Var.a() == 1);
        this.b = -1;
    }

    public final boolean a() {
        int i = this.b + 1;
        this.b = i;
        if (i == this.a) {
            return false;
        }
        boolean z = this.e;
        os4 os4Var = this.f;
        this.d = z ? os4Var.o() : os4Var.l();
        if (this.b == this.h) {
            this.c = this.g.n();
            os4 os4Var2 = this.g;
            os4Var2.e(os4Var2.b + 4);
            int i2 = this.i - 1;
            this.i = i2;
            this.h = i2 > 0 ? this.g.n() - 1 : -1;
        }
        return true;
    }
}
