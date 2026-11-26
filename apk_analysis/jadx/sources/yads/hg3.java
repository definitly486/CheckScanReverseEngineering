package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class hg3 {
    public final cg3 a;
    public final gl5 b;
    public final pf3 c;
    public final gs4 d;
    public int f;
    public int g;
    public float h;
    public float i;
    public int k;
    public int l;
    public int m;
    public float n;
    public final gg3 e = new gg3(this);
    public float j = 1.0f;

    public hg3(cg3 cg3Var, gl5 gl5Var, pf3 pf3Var, gs4 gs4Var) {
        this.a = cg3Var;
        this.b = gl5Var;
        this.c = pf3Var;
        this.d = gs4Var;
        this.h = cg3Var.c.b().b();
    }

    public final void a(int i, float f) {
        yf3 yf3Var;
        gg3 gg3Var = this.e;
        gg3Var.a.clear();
        gg3Var.b.clear();
        hg3 hg3Var = gg3Var.c;
        int i2 = hg3Var.f;
        if (i2 <= 0) {
            return;
        }
        defpackage.w74 w74VarA = oh6.a(hg3Var.d, 0, i2);
        int i3 = w74VarA.b;
        hg3 hg3Var2 = gg3Var.c;
        defpackage.x74 it = w74VarA.iterator();
        while (it.d) {
            int iNextInt = it.nextInt();
            yf3 yf3VarA = hg3Var2.c.a(iNextInt);
            float f2 = hg3Var2.j;
            if (f2 != 1.0f && (yf3VarA instanceof xf3)) {
                yf3Var = yf3VarA;
                yf3Var = yf3VarA;
                xf3 xf3Var = (xf3) yf3VarA;
                xf3 xf3VarA = xf3.a(xf3Var, xf3Var.a * f2, 0.0f, 6);
                hg3Var2.c.b(xf3VarA.a);
                yf3Var = xf3VarA;
            }
            yf3Var = yf3VarA;
            yf3Var = yf3VarA;
            yf3Var = yf3VarA;
            yf3 yf3Var2 = yf3Var;
            gg3Var.a.add(new fg3(iNextInt, iNextInt == i, iNextInt == i3 ? yf3Var2.b() / 2.0f : ((fg3) defpackage.qn1.b0(gg3Var.a)).c + hg3Var2.i, yf3Var2, 1.0f));
        }
        gg3Var.b.addAll(gg3Var.a(i, f));
    }

    public final void a() {
        int i;
        vf3 vf3Var = this.a.e;
        if (vf3Var instanceof tf3) {
            i = (int) (this.k / ((tf3) vf3Var).a);
        } else if (vf3Var instanceof uf3) {
            i = ((uf3) vf3Var).b;
        } else {
            defpackage.me0.e();
            return;
        }
        int i2 = this.f;
        if (i > i2) {
            i = i2;
        }
        this.g = i;
    }

    public final void a(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        this.k = i;
        this.l = i2;
        a();
        cg3 cg3Var = this.a;
        vf3 vf3Var = cg3Var.e;
        if (vf3Var instanceof tf3) {
            this.i = ((tf3) vf3Var).a;
            this.j = 1.0f;
        } else if (vf3Var instanceof uf3) {
            float f = this.k;
            float f2 = ((uf3) vf3Var).a;
            float f3 = (f + f2) / this.g;
            this.i = f3;
            this.j = (f3 - f2) / cg3Var.b.b().b();
        }
        this.c.a(this.i);
        this.h = i2 / 2.0f;
        a(this.m, this.n);
    }
}
