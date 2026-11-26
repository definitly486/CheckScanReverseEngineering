package yads;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes6.dex */
public final class mh4 implements View.OnAttachStateChangeListener {
    public static final /* synthetic */ defpackage.ze4[] d = {cb.a(mh4.class, "viewReference", "getViewReference()Landroid/view/View;", 0)};
    public final hj4 a;
    public fh4 b;
    public final e55 c;

    public mh4(View view, hj4 hj4Var) {
        this.a = hj4Var;
        this.c = new e55(view);
    }

    public final void a() {
        ViewTreeObserver viewTreeObserver;
        e55 e55Var = this.c;
        defpackage.ze4[] ze4VarArr = d;
        defpackage.ze4 ze4Var = ze4VarArr[0];
        View view = (View) e55Var.a.get();
        if (view != null) {
            view.addOnAttachStateChangeListener(this);
        }
        e55 e55Var2 = this.c;
        defpackage.ze4 ze4Var2 = ze4VarArr[0];
        View view2 = (View) e55Var2.a.get();
        if (view2 != null && view2.isAttachedToWindow()) {
            fh4 fh4Var = new fh4(view2, this.a);
            this.b = fh4Var;
            e55 e55Var3 = fh4Var.b;
            defpackage.ze4 ze4Var3 = fh4.d[0];
            View view3 = (View) e55Var3.a.get();
            if (view3 == null || (viewTreeObserver = view3.getViewTreeObserver()) == null) {
                return;
            }
            viewTreeObserver.addOnGlobalLayoutListener(fh4Var);
        }
    }

    public final void b() {
        fh4 fh4Var = this.b;
        if (fh4Var != null) {
            fh4Var.a();
        }
        this.b = null;
        e55 e55Var = this.c;
        defpackage.ze4 ze4Var = d[0];
        View view = (View) e55Var.a.get();
        if (view != null) {
            view.removeOnAttachStateChangeListener(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        ViewTreeObserver viewTreeObserver;
        this.a.a.i();
        e55 e55Var = this.c;
        defpackage.ze4 ze4Var = d[0];
        View view2 = (View) e55Var.a.get();
        if (view2 != null && view2.isAttachedToWindow()) {
            fh4 fh4Var = new fh4(view2, this.a);
            this.b = fh4Var;
            e55 e55Var2 = fh4Var.b;
            defpackage.ze4 ze4Var2 = fh4.d[0];
            View view3 = (View) e55Var2.a.get();
            if (view3 == null || (viewTreeObserver = view3.getViewTreeObserver()) == null) {
                return;
            }
            viewTreeObserver.addOnGlobalLayoutListener(fh4Var);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        fh4 fh4Var = this.b;
        if (fh4Var != null) {
            fh4Var.a();
        }
        this.b = null;
        this.a.a.j();
    }
}
