package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rl4 implements bb6 {
    public final /* synthetic */ tl4 a;

    public rl4(tl4 tl4Var) {
        this.a = tl4Var;
    }

    @Override // yads.bb6
    public final void a() {
        this.a.c.a();
    }

    @Override // yads.bb6
    public final void b() {
        tl4 tl4Var = this.a;
        tl4Var.m = null;
        uj5 uj5Var = tl4Var.d;
        if (uj5Var == null || !uj5Var.d) {
            tl4Var.k.a();
        } else {
            bw3 bw3Var = tl4Var.e;
            bw3Var.a.post(new defpackage.v65(tl4Var, 2));
        }
        this.a.c.b();
    }

    @Override // yads.bb6
    public final void c() {
        am4 am4Var = (am4) this.a.b.b();
        if (am4Var != null) {
            am4Var.setClickable(true);
        }
    }

    public static final void a(tl4 tl4Var) {
        tl4Var.a(tl4Var.i);
    }
}
