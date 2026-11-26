package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public class hj0 implements bk {
    public final rf6 a;

    public hj0(rf6 rf6Var) {
        this.a = rf6Var;
    }

    @Override // yads.bk
    public final boolean a(Object obj) {
        View viewB = this.a.b();
        return viewB != null && this.a.a(viewB, obj);
    }

    @Override // yads.bk
    public final boolean b() {
        return this.a.b() != null;
    }

    @Override // yads.bk
    public final void c(Object obj) {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.b(viewB, obj);
        viewB.setVisibility(0);
    }

    @Override // yads.bk
    public final boolean d() {
        return eh6.a(this.a.b()) >= 100;
    }

    @Override // yads.bk
    public final void destroy() {
    }

    @Override // yads.bk
    public final boolean e() {
        return this.a.c();
    }

    public void b(Object obj) {
        c(obj);
    }

    @Override // yads.bk
    public final tg6 c() {
        View viewB = this.a.b();
        if (viewB != null) {
            return new tg6(viewB);
        }
        return null;
    }

    @Override // yads.bk
    public final void a(ak akVar, vf6 vf6Var) {
        this.a.a(akVar, vf6Var, akVar.c);
    }

    @Override // yads.bk
    public final void a() {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.a(viewB);
    }
}
