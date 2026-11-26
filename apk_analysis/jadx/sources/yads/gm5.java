package yads;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class gm5 implements on0, j2 {
    public final u6 a;
    public final i2 b;
    public final ve4 c;
    public final wl5 d;
    public fm0 e;

    public gm5(u6 u6Var, i2 i2Var, ve4 ve4Var) {
        wl5 dm0Var;
        v6 v6Var;
        hm5 hm5Var = (u6Var == null || (v6Var = u6Var.b) == null) ? null : v6Var.b;
        int i = hm5Var == null ? -1 : xl5.a[hm5Var.ordinal()];
        if (i == -1) {
            dm0Var = new dm0();
        } else if (i != 1) {
            if (i != 2) {
                defpackage.me0.e();
                throw null;
            }
            dm0Var = new dm0();
        } else {
            dm0Var = new wh6();
        }
        this.a = u6Var;
        this.b = i2Var;
        this.c = ve4Var;
        this.d = dm0Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        v6 v6Var;
        this.c.getClass();
        View viewFindViewWithTag = viewGroup.findViewWithTag("skip_button");
        if (viewFindViewWithTag != null) {
            this.b.b.add(this);
            wl5 wl5Var = this.d;
            u6 u6Var = this.a;
            Long lValueOf = (u6Var == null || (v6Var = u6Var.b) == null) ? null : Long.valueOf(v6Var.c);
            fm0 fm0Var = new fm0(viewFindViewWithTag, wl5Var, lValueOf != null ? lValueOf.longValue() : 0L);
            this.e = fm0Var;
            e55 e55Var = fm0Var.d;
            defpackage.ze4 ze4Var = fm0.e[0];
            View view = (View) e55Var.a.get();
            if (view != null) {
                em0 em0Var = new em0(view, fm0Var.a);
                long j = fm0Var.b;
                if (j == 0) {
                    fm0Var.a.b(view);
                } else {
                    fm0Var.c.a(j, em0Var);
                }
            }
            if (viewFindViewWithTag.getTag() == null) {
                viewFindViewWithTag.setTag("skip_button");
            }
        }
    }

    @Override // yads.j2
    public final void b() {
        fm0 fm0Var = this.e;
        if (fm0Var != null) {
            fm0Var.c.b();
        }
    }

    @Override // yads.on0
    public final void c() {
        this.b.b.remove(this);
        fm0 fm0Var = this.e;
        if (fm0Var != null) {
            fm0Var.c.a();
        }
    }

    @Override // yads.j2
    public final void a() {
        fm0 fm0Var = this.e;
        if (fm0Var != null) {
            fm0Var.c.c();
        }
    }
}
