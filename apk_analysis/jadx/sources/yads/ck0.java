package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ck0 implements e10 {
    public final View a;
    public final ph6 b;
    public final jd0 c;
    public final long d;
    public final l10 e;
    public final tt4 f;

    public ck0(View view, ph6 ph6Var, jd0 jd0Var, long j, l10 l10Var) {
        tt4 tt4VarA = qt4.a(null, 3);
        this.a = view;
        this.b = ph6Var;
        this.c = jd0Var;
        this.d = j;
        this.e = l10Var;
        this.f = tt4VarA;
        ph6Var.getClass();
        view.setVisibility(8);
    }

    @Override // yads.e10
    public final void a() {
        this.f.c();
    }

    @Override // yads.e10
    public final void b() {
        this.f.b();
    }

    @Override // yads.e10
    public final void invalidate() {
        this.f.a();
    }

    @Override // yads.e10
    public final void onAdDisplayed() {
        bk0 bk0Var = new bk0(this.a, this.b, this.c);
        long jMax = (long) Math.max(0.0d, this.d - this.e.a);
        if (jMax == 0) {
            ph6 ph6Var = this.b;
            View view = this.a;
            ph6Var.getClass();
            view.setVisibility(0);
            return;
        }
        tt4 tt4Var = this.f;
        tt4Var.e = this.e;
        tt4Var.a(jMax, bk0Var);
        this.c.a(id0.CROSS_TIMER_START);
    }
}
