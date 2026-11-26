package yads;

/* JADX INFO: loaded from: classes6.dex */
public class o06 implements kv {
    public static final o06 B = new o06(new n06());
    public final te3 A;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final boolean l;
    public final k55 m;
    public final int n;
    public final k55 o;
    public final int p;
    public final int q;
    public final int r;
    public final k55 s;
    public final k55 t;
    public final int u;
    public final int v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final re3 z;

    public o06(n06 n06Var) {
        this.b = n06Var.a;
        this.c = n06Var.b;
        this.d = n06Var.c;
        this.e = n06Var.d;
        this.f = n06Var.e;
        this.g = n06Var.f;
        this.h = n06Var.g;
        this.i = n06Var.h;
        this.j = n06Var.i;
        this.k = n06Var.j;
        this.l = n06Var.k;
        this.m = n06Var.l;
        this.n = n06Var.m;
        this.o = n06Var.n;
        this.p = n06Var.o;
        this.q = n06Var.p;
        this.r = n06Var.q;
        this.s = n06Var.r;
        this.t = n06Var.s;
        this.u = n06Var.t;
        this.v = n06Var.u;
        this.w = n06Var.v;
        this.x = n06Var.w;
        this.y = n06Var.x;
        this.z = re3.a(n06Var.y);
        this.A = te3.a(n06Var.z);
    }

    public boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            o06 o06Var = (o06) obj;
            if (this.b == o06Var.b && this.c == o06Var.c && this.d == o06Var.d && this.e == o06Var.e && this.f == o06Var.f && this.g == o06Var.g && this.h == o06Var.h && this.i == o06Var.i && this.l == o06Var.l && this.j == o06Var.j && this.k == o06Var.k && this.m.equals(o06Var.m) && this.n == o06Var.n && this.o.equals(o06Var.o) && this.p == o06Var.p && this.q == o06Var.q && this.r == o06Var.r && this.s.equals(o06Var.s) && this.t.equals(o06Var.t) && this.u == o06Var.u && this.v == o06Var.v && this.w == o06Var.w && this.x == o06Var.x && this.y == o06Var.y) {
                re3 re3Var = this.z;
                re3 re3Var2 = o06Var.z;
                re3Var.getClass();
                if (re3Var == re3Var2) {
                    zEquals = true;
                } else if (re3Var2 != null) {
                    zEquals = ((te3) re3Var.entrySet()).equals(re3Var2.entrySet());
                } else {
                    zEquals = false;
                }
                if (zEquals && this.A.equals(o06Var.A)) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return this.A.hashCode() + ((tj5.a(this.z.entrySet()) + ((((((((((((this.t.hashCode() + ((this.s.hashCode() + ((((((((this.o.hashCode() + ((((this.m.hashCode() + ((((((((((((((((((((((this.b + 31) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31) + this.i) * 31) + (this.l ? 1 : 0)) * 31) + this.j) * 31) + this.k) * 31)) * 31) + this.n) * 31)) * 31) + this.p) * 31) + this.q) * 31) + this.r) * 31)) * 31)) * 31) + this.u) * 31) + this.v) * 31) + (this.w ? 1 : 0)) * 31) + (this.x ? 1 : 0)) * 31) + (this.y ? 1 : 0)) * 31)) * 31);
    }
}
