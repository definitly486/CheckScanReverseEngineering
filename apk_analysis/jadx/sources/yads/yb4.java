package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class yb4 implements ha3 {
    public final vb4 a;
    public final kb4 b;
    public final gd6 c;
    public final dk6 d;
    public final gb4 e;
    public final ca3 f;
    public final fe5 g;
    public e00 h;
    public boolean i;

    public yb4(vb4 vb4Var, kb4 kb4Var) {
        zg5 zg5Var;
        gd6 gd6Var = new gd6();
        dk6 dk6Var = new dk6(vb4Var);
        gb4 gb4Var = new gb4();
        ca3 ca3Var = new ca3();
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(vb4Var.b);
        this.a = vb4Var;
        this.b = kb4Var;
        this.c = gd6Var;
        this.d = dk6Var;
        this.e = gb4Var;
        this.f = ca3Var;
        this.g = fe5VarA;
    }

    @Override // yads.ha3
    public final void a(String str) {
        fe5 fe5Var = this.g;
        if (fe5Var == null || !fe5Var.F0 || this.i) {
            e00 e00Var = this.h;
            if (e00Var != null) {
                vb4 vb4Var = this.a;
                db4 db4Var = (db4) e00Var;
                ot3 ot3Var = db4Var.a;
                ot3 ot3Var2 = new ot3(ot3Var.a, ot3Var.b, ot3Var.c, str, ot3Var.e, false);
                h00 h00Var = db4Var.b;
                dh4 dh4Var = h00Var.c;
                i00 i00Var = dh4Var.a;
                ak akVar = h00Var.a;
                a4 a4Var = h00Var.b;
                l65 l65Var = h00Var.d;
                we3 we3Var = h00Var.e;
                i00Var.getClass();
                new kf4(akVar, a4Var, dh4Var, l65Var, ot3Var2, we3Var).onClick(vb4Var);
            }
            this.i = false;
        }
    }

    @Override // yads.ha3
    public final void a(boolean z) {
    }

    @Override // yads.ha3
    public final void a(vb4 vb4Var, Map map) {
    }

    @Override // yads.ha3
    public final void a() {
        this.i = true;
    }
}
