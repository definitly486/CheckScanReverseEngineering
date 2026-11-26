package yads;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes6.dex */
public final class fh4 implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final /* synthetic */ defpackage.ze4[] d = {cb.a(fh4.class, "viewReference", "getViewReference()Landroid/view/View;", 0)};
    public final hj4 a;
    public final e55 b;
    public Integer c;

    public fh4(View view, hj4 hj4Var) {
        this.a = hj4Var;
        this.b = new e55(view);
    }

    public final void a() {
        ViewTreeObserver viewTreeObserver;
        e55 e55Var = this.b;
        defpackage.ze4 ze4Var = d[0];
        View view = (View) e55Var.a.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        e55 e55Var = this.b;
        defpackage.ze4 ze4Var = d[0];
        View view = (View) e55Var.a.get();
        if (view != null) {
            int visibility = view.getVisibility();
            Integer num = this.c;
            if (num != null && visibility == num.intValue()) {
                return;
            }
            this.c = Integer.valueOf(visibility);
            hj4 hj4Var = this.a;
            if (visibility == 0) {
                hj4Var.a.i();
            } else {
                hj4Var.a.j();
            }
        }
    }
}
