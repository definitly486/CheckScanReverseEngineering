package yads;

import android.view.View;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes6.dex */
public final class f15 implements e10 {
    public final View a;
    public final ProgressBar b;
    public final gn2 c;
    public final jd0 d;
    public final l15 e;
    public final long f;
    public final tt4 g = qt4.a(null, 3);
    public final e15 h;
    public final d15 i;

    public f15(View view, ProgressBar progressBar, gn2 gn2Var, k10 k10Var, jd0 jd0Var, l15 l15Var, long j) {
        this.a = view;
        this.b = progressBar;
        this.c = gn2Var;
        this.d = jd0Var;
        this.e = l15Var;
        this.f = j;
        this.h = new e15(view, gn2Var, jd0Var);
        this.i = new d15(progressBar, k10Var, j);
    }

    @Override // yads.e10
    public final void a() {
        this.g.c();
    }

    @Override // yads.e10
    public final void b() {
        this.g.b();
    }

    @Override // yads.e10
    public final void invalidate() {
        this.g.a();
    }

    @Override // yads.e10
    public final void onAdDisplayed() {
        ProgressBar progressBar = this.b;
        int i = (int) this.f;
        int i2 = (int) this.e.a;
        progressBar.setMax(i);
        progressBar.setVisibility(0);
        progressBar.setProgress(i2);
        long jMax = Math.max(0L, this.f - this.e.a);
        if (jMax != 0) {
            this.c.a(this.a);
            tt4 tt4Var = this.g;
            tt4Var.e = this.i;
            tt4Var.a(jMax, this.h);
            this.d.a(id0.CROSS_TIMER_START);
        }
    }
}
