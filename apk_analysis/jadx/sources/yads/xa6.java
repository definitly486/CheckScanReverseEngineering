package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xa6 implements hb6 {
    public final ja6 a;
    public final eb6 b;
    public final rb6 c;
    public final ub6 d;
    public final ec6 e;
    public final t5 f;
    public final jf6 g;
    public final ya6 h;
    public final boolean i;
    public db6 j;
    public boolean k;

    public xa6(ja6 ja6Var, eb6 eb6Var, rb6 rb6Var, ub6 ub6Var, ec6 ec6Var, t5 t5Var, jf6 jf6Var, ya6 ya6Var, boolean z) {
        this.a = ja6Var;
        this.b = eb6Var;
        this.c = rb6Var;
        this.d = ub6Var;
        this.e = ec6Var;
        this.f = t5Var;
        this.g = jf6Var;
        this.h = ya6Var;
        this.i = z;
    }

    @Override // yads.hb6
    public final void a(gb6 gb6Var) {
        this.k = false;
        this.e.a(this.e.a.contains(cc6.PREPARED) ? cc6.PLAYING_ERROR : cc6.PREPARING_ERROR);
        this.c.b();
        this.d.a(gb6Var);
        jf6 jf6Var = this.g;
        jf6Var.a.a(gb6Var);
        jf6Var.k();
        this.h.a(this.a, gb6Var);
        this.b.a((hb6) null);
        this.h.g(this.a);
    }

    @Override // yads.hb6
    public final void b() {
        if (this.k) {
            this.e.a(cc6.BUFFERING);
            this.g.a.f();
        }
    }

    @Override // yads.hb6
    public final void c() {
        this.k = true;
        this.e.a(cc6.PLAYING);
        this.c.a();
        this.j = new db6(this.b, this.g);
        this.h.b(this.a);
    }

    @Override // yads.hb6
    public final void d() {
        this.k = false;
        this.e.a(cc6.FINISHED);
        if (this.i) {
            jf6 jf6Var = this.g;
            jf6Var.a.b();
            jf6Var.k();
        }
        this.c.b();
        this.d.b();
        this.h.c(this.a);
        this.b.a((hb6) null);
        this.h.g(this.a);
    }

    @Override // yads.hb6
    public final void e() {
        jf6 jf6Var = this.g;
        jf6Var.a.g();
        jf6Var.k();
        this.k = false;
        this.e.a(cc6.STOPPED);
        this.c.b();
        this.d.b();
        this.h.h(this.a);
        this.b.a((hb6) null);
        this.h.g(this.a);
    }

    @Override // yads.hb6
    public final void f() {
        this.e.a(cc6.PLAYING);
        if (this.k) {
            this.g.a.c();
        }
        this.c.a();
        this.h.d(this.a);
    }

    @Override // yads.hb6
    public final void h() {
        this.e.a(cc6.PREPARED);
        this.f.a(s5.VIDEO_AD_PREPARE);
        this.h.j(this.a);
    }

    @Override // yads.hb6
    public final void i() {
        this.e.a(cc6.PAUSED);
        if (this.k) {
            this.g.a.d();
        }
        this.h.k(this.a);
    }

    @Override // yads.hb6
    public final void onVolumeChanged(float f) {
        this.g.a.a(f);
        db6 db6Var = this.j;
        if (db6Var != null) {
            boolean z = db6Var.b;
            if (f == 0.0f) {
                if (!z) {
                    db6Var.b = true;
                    db6Var.a.a.l();
                }
            } else if (z) {
                db6Var.b = false;
                db6Var.a.a.a();
            }
        }
        this.h.a(this.a, f);
    }

    @Override // yads.hb6
    public final void a() {
        if (this.k) {
            this.e.a(cc6.PLAYING);
            this.g.a.j();
        }
    }
}
