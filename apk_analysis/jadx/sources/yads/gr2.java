package yads;

import android.view.TextureView;

/* JADX INFO: loaded from: classes6.dex */
public final class gr2 {
    public final eq2 a;
    public final s14 b;
    public final fe6 c;
    public final tk4 d;
    public final pe6 e;
    public final fr2 f;
    public final rq2 g;
    public ol4 h;
    public hb6 i;
    public boolean j;
    public boolean k;

    public gr2(eq2 eq2Var, s14 s14Var, fe6 fe6Var) {
        tk4 tk4Var = new tk4();
        pe6 pe6Var = new pe6();
        this.a = eq2Var;
        this.b = s14Var;
        this.c = fe6Var;
        this.d = tk4Var;
        this.e = pe6Var;
        fr2 fr2Var = new fr2(this);
        this.f = fr2Var;
        this.g = new rq2(fr2Var);
        wt3 wt3Var = eq2Var.k;
        if (!wt3Var.g) {
            wt3Var.d.add(new vt3(fr2Var));
        }
        wt3 wt3Var2 = eq2Var.k;
        if (!wt3Var2.g) {
            wt3Var2.d.add(new vt3(pe6Var));
        }
        l6.b = this;
        for (iw4 iw4Var : l6.a) {
            if (l6.b != null) {
                gr2 gr2Var = l6.b;
                if (gr2Var != null) {
                    eq2 eq2Var2 = gr2Var.a;
                    eq2Var2.getClass();
                    iw4Var.getClass();
                    wt3 wt3Var3 = eq2Var2.k;
                    if (!wt3Var3.g) {
                        wt3Var3.d.add(new vt3(iw4Var));
                    }
                }
            } else {
                l6.a.add(iw4Var);
            }
        }
    }

    public final void a(ol4 ol4Var) {
        zq2 zq2Var;
        if (this.j) {
            return;
        }
        this.h = ol4Var;
        s14 s14Var = this.b;
        s14Var.getClass();
        kk0 kk0Var = new kk0(s14Var.a, new cf5(new ku5().a(), new bc5().a(s14Var.a)));
        zq2 zq2Var2 = zq2.d;
        if (zq2Var2 == null) {
            synchronized (zq2.c) {
                zq2Var = zq2.d;
                if (zq2Var == null) {
                    zq2Var = new zq2();
                    zq2.d = zq2Var;
                }
            }
            zq2Var2 = zq2Var;
        }
        yv yvVarA = zq2Var2.a(s14Var.a);
        bw bwVar = new bw();
        bwVar.a = yvVarA;
        bwVar.c = kk0Var;
        cs csVarA = new pl0(bwVar, new zk0()).a(p04.a(ol4Var.a));
        this.a.a(false);
        this.a.a(csVarA);
        this.a.k();
        rq2 rq2Var = this.g;
        rq2Var.getClass();
        rq2Var.b.a(rq2.c, new qq2(rq2Var));
    }

    public final void b() {
        this.j = true;
        this.k = false;
        this.g.b.a();
        this.a.a((TextureView) null);
        pe6 pe6Var = this.e;
        pe6Var.d = null;
        pe6Var.b();
        this.a.c(this.f);
        this.a.c(this.e);
        this.a.l();
    }

    public final boolean c() {
        return this.a.b();
    }

    public final void d() {
        if (this.j) {
            return;
        }
        this.a.a(false);
    }

    public final void e() {
        if (!this.j) {
            this.a.a(true);
        }
        if (this.k) {
            d();
        }
    }

    public final void f() {
        if (this.j || this.k) {
            return;
        }
        this.a.a(true);
    }

    public final void g() {
        if (this.j) {
            return;
        }
        hb6 hb6Var = this.i;
        ol4 ol4Var = this.h;
        if (hb6Var != null && ol4Var != null) {
            hb6Var.e();
        }
        b();
    }

    public final void a(gb6 gb6Var) {
        if (this.j) {
            return;
        }
        b();
    }

    public final void a(TextureView textureView) {
        if (this.j) {
            return;
        }
        pe6 pe6Var = this.e;
        pe6Var.d = textureView;
        pe6Var.b();
        this.a.a(textureView);
    }

    public final void a(float f) {
        if (this.j) {
            return;
        }
        this.a.a(f);
        hb6 hb6Var = this.i;
        ol4 ol4Var = this.h;
        if (hb6Var == null || ol4Var == null) {
            return;
        }
        hb6Var.onVolumeChanged(f);
    }

    public final void a() {
        this.k = true;
        d();
    }

    public final void a(hb6 hb6Var) {
        this.i = hb6Var;
    }
}
