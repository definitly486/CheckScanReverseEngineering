package yads;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class e60 implements on0 {
    public final d9 a;
    public final i2 b;
    public final b4 c;
    public final sj4 d;
    public final bx5 e;
    public final fo1 f;
    public final f60 g;
    public final nt3 h;
    public n03 i;
    public d60 j;

    public e60(d9 d9Var, i2 i2Var, b4 b4Var, sj4 sj4Var, bx5 bx5Var, fo1 fo1Var) {
        f60 f60Var = new f60();
        nt3 nt3Var = new nt3();
        this.a = d9Var;
        this.b = i2Var;
        this.c = b4Var;
        this.d = sj4Var;
        this.e = bx5Var;
        this.f = fo1Var;
        this.g = f60Var;
        this.h = nt3Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        n03 km4Var;
        d60 d60Var = new d60(this);
        this.b.b.add(d60Var);
        this.j = d60Var;
        nt3 nt3Var = this.h;
        mt3 mt3Var = nt3Var.a;
        View viewFindViewWithTag = viewGroup.findViewWithTag("linear_progress_view");
        ProgressBar progressBar = viewFindViewWithTag instanceof ProgressBar ? (ProgressBar) viewFindViewWithTag : null;
        e55 e55Var = nt3Var.b;
        defpackage.ze4 ze4Var = nt3.c[0];
        e55Var.getClass();
        e55Var.a = new WeakReference(progressBar);
        f60 f60Var = this.g;
        d9 d9Var = this.a;
        b4 b4Var = this.c;
        sj4 sj4Var = this.d;
        bx5 bx5Var = this.e;
        fo1 fo1Var = this.f;
        nt3 nt3Var2 = this.h;
        f60Var.getClass();
        el4 el4Var = sj4Var.a;
        lm4 lm4Var = sj4Var.b;
        String str = fo1Var != null ? fo1Var.a : null;
        un0[] un0VarArr = un0.b;
        if (defpackage.aa4.e(str, "pack_shot")) {
            km4Var = new vi4(b4Var, bx5Var, nt3Var2);
        } else if (el4Var != null) {
            km4Var = new dl4(d9Var, el4Var, b4Var, nt3Var2);
        } else {
            km4Var = lm4Var != null ? new km4(lm4Var, b4Var, bx5Var.c, nt3Var2) : new vi4(b4Var, bx5Var, nt3Var2);
        }
        km4Var.start();
        this.i = km4Var;
    }

    @Override // yads.on0
    public final void c() {
        d60 d60Var = this.j;
        if (d60Var != null) {
            this.b.b.remove(d60Var);
        }
        n03 n03Var = this.i;
        if (n03Var != null) {
            n03Var.invalidate();
        }
        e55 e55Var = this.h.b;
        defpackage.ze4 ze4Var = nt3.c[0];
        e55Var.getClass();
        e55Var.a = new WeakReference(null);
    }
}
