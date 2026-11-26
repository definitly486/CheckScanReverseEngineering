package yads;

import yads.s25;

/* JADX INFO: loaded from: classes6.dex */
public final class s25 implements v03 {
    public final u03 a;
    public final aw3 b;
    public bo6 c;

    public s25(u03 u03Var) {
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        this.a = u03Var;
        this.b = aw3VarA;
    }

    public static final void a(y6 y6Var, s25 s25Var) {
        mk5 mk5Var = new mk5(y6Var.b);
        bo6 bo6Var = s25Var.c;
        if (bo6Var != null) {
            bo6Var.a(mk5Var);
        }
    }

    public static final void b(s25 s25Var) {
        bo6 bo6Var = s25Var.c;
        if (bo6Var != null) {
            bo6Var.b();
        }
    }

    public static final void c(s25 s25Var) {
        bo6 bo6Var = s25Var.c;
        if (bo6Var != null) {
            bo6Var.c();
        }
        u03 u03Var = s25Var.a;
        if (u03Var != null) {
            u03Var.onAdShown();
        }
    }

    @Override // yads.v03
    public final void onAdClicked() {
        this.b.a(new defpackage.s41(this, 1));
    }

    @Override // yads.v03
    public final void onAdDismissed() {
        this.b.a(new defpackage.iu0(this, 3));
    }

    @Override // yads.v03
    public final void onAdShown() {
        this.b.a(new defpackage.mr1(this, 1));
    }

    @Override // yads.v03
    public final void onImpression(final j5 j5Var) {
        this.b.a(new Runnable() { // from class: e8a
            @Override // java.lang.Runnable
            public final void run() {
                s25.a(this.b, j5Var);
            }
        });
    }

    public final void a(final y6 y6Var) {
        this.b.a(new Runnable() { // from class: c8a
            @Override // java.lang.Runnable
            public final void run() {
                s25.a(y6Var, this);
            }
        });
    }

    public static final void a(s25 s25Var, j5 j5Var) {
        bo6 bo6Var = s25Var.c;
        if (bo6Var != null) {
            bo6Var.a(j5Var);
        }
    }

    public static final void a(s25 s25Var) {
        bo6 bo6Var = s25Var.c;
        if (bo6Var != null) {
            bo6Var.a();
        }
    }

    public final void a(final s95 s95Var) {
        this.b.a(new Runnable() { // from class: d8a
            @Override // java.lang.Runnable
            public final void run() {
                s25.a(this.b, s95Var);
            }
        });
    }

    public static final void a(s25 s25Var, s95 s95Var) {
        bo6 bo6Var = s25Var.c;
        if (bo6Var != null) {
            bo6Var.a(s95Var);
        }
    }
}
