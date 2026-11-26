package yads;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class hb5 implements on0 {
    public final i2 a;
    public final ux5 b;
    public final kk4 c;
    public final gb5 d;

    public hb5(i2 i2Var, ux5 ux5Var, sj4 sj4Var, bx5 bx5Var) {
        kk4 kk4Var = new kk4(ux5Var, sj4Var, bx5Var);
        gb5 gb5Var = new gb5(kk4Var);
        this.a = i2Var;
        this.b = ux5Var;
        this.c = kk4Var;
        this.d = gb5Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        i2 i2Var = this.a;
        i2Var.b.add(this.d);
        this.b.getClass();
        View viewFindViewWithTag = viewGroup.findViewWithTag("timer_container");
        if (viewFindViewWithTag == null) {
            viewFindViewWithTag = null;
        }
        kk4 kk4Var = this.c;
        kk4Var.c = viewFindViewWithTag;
        n03 n03Var = kk4Var.b;
        if (n03Var != null) {
            n03Var.start();
        }
    }

    @Override // yads.on0
    public final void c() {
        i2 i2Var = this.a;
        i2Var.b.remove(this.d);
        kk4 kk4Var = this.c;
        kk4Var.c = null;
        n03 n03Var = kk4Var.b;
        if (n03Var != null) {
            n03Var.invalidate();
        }
    }
}
