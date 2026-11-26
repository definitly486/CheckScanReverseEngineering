package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p61 {
    public final o17 a;
    public final wk7 b;
    public final jf6 c;
    public final hu4 d;
    public final on2 e;
    public final qe f;
    public final cf1 g;
    public final fh8 h = new fh8(new b());
    public final ct6<l17> i = new ct6<>();

    public static final class a extends gh4 implements ll3<hu4.a> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final hu4.a invoke() {
            return p61.this.d.b();
        }
    }

    public static final class b extends gh4 implements ll3<tq5<du4>> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final tq5<du4> invoke() {
            return p61.this.d.a();
        }
    }

    public p61(o17 o17Var, wk7 wk7Var, jf6 jf6Var, hu4 hu4Var, on2 on2Var, qe qeVar, cf1 cf1Var) {
        this.a = o17Var;
        this.b = wk7Var;
        this.c = jf6Var;
        this.d = hu4Var;
        this.e = on2Var;
        this.f = qeVar;
        this.g = cf1Var;
        new fh8(new a());
    }

    public final p08 a(du4 du4Var) {
        if (du4Var == null) {
            jf6 jf6Var = this.c;
            du4Var = new du4(jf6Var.c(), jf6Var.l(), (String) null, (String) null, (String) null, 28, (jh2) null);
        }
        mz7 mz7VarB = this.a.b("", du4Var, 20);
        q3 q3Var = new q3(new r61(this), 1);
        mz7VarB.getClass();
        return new p08(mz7VarB, q3Var);
    }

    public final void b(l17 l17Var) {
        this.i.onNext(l17Var);
        int iA = l17Var.a();
        jf6 jf6Var = this.c;
        jf6Var.l0(iA);
        jf6Var.X(l17Var.b());
        this.f.d(l17Var.a());
    }
}
