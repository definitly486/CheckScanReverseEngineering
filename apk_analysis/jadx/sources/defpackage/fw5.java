package defpackage;

import androidx.core.widget.NestedScrollView;

/* JADX INFO: loaded from: classes5.dex */
public final class fw5 implements NestedScrollView.OnScrollChangeListener {
    public final w53 b;

    public fw5(w53 w53Var) {
        this.b = w53Var;
    }

    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
    public final void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        nestedScrollView.getClass();
        if (nestedScrollView.getChildAt(nestedScrollView.getChildCount() - 1) == null || i2 < nestedScrollView.getChildAt(nestedScrollView.getChildCount() - 1).getMeasuredHeight() - nestedScrollView.getMeasuredHeight() || i2 <= i4) {
            return;
        }
        this.b.invoke();
    }
}
