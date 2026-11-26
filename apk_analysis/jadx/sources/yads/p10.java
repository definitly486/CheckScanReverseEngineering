package yads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class p10 implements on0, j2 {
    public final d9 a;
    public final i2 b;
    public final ph6 c;
    public final m2 d;
    public final te4 e;
    public final jd0 f;
    public final bx5 g;
    public e10 h;
    public final l15 i;
    public final y00 j;

    public p10(d9 d9Var, i2 i2Var, ph6 ph6Var, m2 m2Var, te4 te4Var, jd0 jd0Var, bx5 bx5Var) {
        this.a = d9Var;
        this.b = i2Var;
        this.c = ph6Var;
        this.d = m2Var;
        this.e = te4Var;
        this.f = jd0Var;
        this.g = bx5Var;
        this.i = bx5Var.a;
        this.j = bx5Var.d;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        e10 ck0Var;
        View viewA = this.e.a(viewGroup);
        ProgressBar progressBarB = this.e.b(viewGroup);
        if (viewA != null) {
            this.b.b.add(this);
            Context context = viewA.getContext();
            zg5 zg5Var = zg5.l;
            if (zg5Var == null) {
                synchronized (zg5.k) {
                    zg5Var = zg5.l;
                    if (zg5Var == null) {
                        zg5Var = new zg5();
                        zg5.l = zg5Var;
                    }
                }
            }
            fe5 fe5VarA = zg5Var.a(context);
            boolean z = fe5VarA != null && fe5VarA.F;
            tn0[] tn0VarArr = tn0.b;
            if (!"divkit".equals(this.a.k) || !z) {
                viewA.setOnClickListener(new o10(this.d, this.f));
            }
            Long l = this.a.j;
            long jLongValue = l != null ? l.longValue() : 0L;
            if (progressBarB != null) {
                ck0Var = new f15(viewA, progressBarB, new gn2(), new k10(), this.f, this.i, jLongValue);
            } else {
                ck0Var = this.j.a() ? new ck0(viewA, this.c, this.f, jLongValue, this.g.e) : null;
            }
            this.h = ck0Var;
            if (ck0Var != null) {
                ck0Var.onAdDisplayed();
            }
            if (viewA.getTag() == null) {
                viewA.setTag(TJAdUnitConstants.String.CLOSE);
            }
        }
    }

    @Override // yads.j2
    public final void b() {
        e10 e10Var = this.h;
        if (e10Var != null) {
            e10Var.b();
        }
    }

    @Override // yads.on0
    public final void c() {
        this.b.b.remove(this);
        e10 e10Var = this.h;
        if (e10Var != null) {
            e10Var.invalidate();
        }
    }

    @Override // yads.j2
    public final void a() {
        e10 e10Var = this.h;
        if (e10Var != null) {
            e10Var.a();
        }
    }
}
