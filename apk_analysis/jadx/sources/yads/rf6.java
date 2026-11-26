package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public abstract class rf6 {
    public static final /* synthetic */ defpackage.ze4[] b = {cb.a(rf6.class, "viewReference", "getViewReference()Landroid/view/View;", 0)};
    public final e55 a;

    public rf6(View view) {
        this.a = new e55(view);
    }

    public void a(ak akVar, vf6 vf6Var, Object obj) {
        View viewB = b();
        if (viewB == null) {
            return;
        }
        vf6Var.a(viewB, akVar);
        vf6Var.a(akVar, new uf6(viewB));
    }

    public abstract boolean a(View view, Object obj);

    public final View b() {
        e55 e55Var = this.a;
        defpackage.ze4 ze4Var = b[0];
        return (View) e55Var.a.get();
    }

    public abstract void b(View view, Object obj);

    public final boolean c() {
        View viewB = b();
        return viewB != null && !eh6.b(viewB) && viewB.getWidth() >= 1 && viewB.getHeight() >= 1;
    }

    public void a(View view) {
        view.setVisibility(8);
        view.setOnClickListener(null);
        view.setOnTouchListener(null);
        view.setSelected(false);
    }

    public void a() {
    }
}
