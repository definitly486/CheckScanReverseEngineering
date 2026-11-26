package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes3.dex */
public interface oe9<T extends View> extends w18 {
    static hn2 e(int i, int i2, int i3) {
        if (i == -2) {
            return hn2.b.a;
        }
        int i4 = i - i3;
        if (i4 > 0) {
            hn2.a.a(i4);
            return new hn2.a(i4);
        }
        int i5 = i2 - i3;
        if (i5 <= 0) {
            return null;
        }
        hn2.a.a(i5);
        return new hn2.a(i5);
    }

    @Override // defpackage.w18
    default Object a(e02<? super t18> e02Var) throws Throwable {
        t18 size = getSize();
        if (size != null) {
            return size;
        }
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        ViewTreeObserver viewTreeObserver = getView().getViewTreeObserver();
        ne9 ne9Var = new ne9(this, viewTreeObserver, c31Var);
        viewTreeObserver.addOnPreDrawListener(ne9Var);
        c31Var.n(new me9(this, viewTreeObserver, ne9Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    default void c(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
        } else {
            getView().getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
        }
    }

    default boolean d() {
        return true;
    }

    default t18 getSize() {
        int paddingRight;
        ViewGroup.LayoutParams layoutParams = getView().getLayoutParams();
        int i = layoutParams != null ? layoutParams.width : -1;
        int width = getView().getWidth();
        if (d()) {
            paddingRight = getView().getPaddingRight() + getView().getPaddingLeft();
        } else {
            paddingRight = 0;
        }
        hn2 hn2VarE = e(i, width, paddingRight);
        if (hn2VarE == null) {
            return null;
        }
        ViewGroup.LayoutParams layoutParams2 = getView().getLayoutParams();
        hn2 hn2VarE2 = e(layoutParams2 != null ? layoutParams2.height : -1, getView().getHeight(), d() ? getView().getPaddingBottom() + getView().getPaddingTop() : 0);
        if (hn2VarE2 == null) {
            return null;
        }
        return new t18(hn2VarE, hn2VarE2);
    }

    T getView();
}
