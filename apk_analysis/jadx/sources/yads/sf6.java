package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class sf6 {
    public final rf6 a;

    public sf6(rf6 rf6Var) {
        this.a = rf6Var;
    }

    public final boolean a(Object obj) {
        View viewB = this.a.b();
        return viewB != null && this.a.a(viewB, obj);
    }

    public final void b(Object obj) {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.b(viewB, obj);
        viewB.setVisibility(0);
    }

    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        if (this.a.b() == null) {
            return;
        }
        this.a.a(akVar, vf6Var, obj);
    }

    public final void a() {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.a(viewB);
    }
}
