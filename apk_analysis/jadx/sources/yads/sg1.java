package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class sg1 implements View.OnLayoutChangeListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ tg1 c;
    public final /* synthetic */ int d;
    public final /* synthetic */ id5 e;

    public sg1(int i, tg1 tg1Var, int i2, id5 id5Var) {
        this.b = i;
        this.c = tg1Var;
        this.d = i2;
        this.e = id5Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        int i9 = this.b;
        tg1 tg1Var = this.c;
        if (i9 == 0) {
            int i10 = (tg1Var.j() == 0 && oh6.b(this.c.b())) ? this.d : -this.d;
            this.c.b().scrollBy(i10, i10);
            return;
        }
        tg1Var.b().scrollBy(-this.c.b().getScrollX(), -this.c.b().getScrollY());
        RecyclerView.LayoutManager layoutManager = this.c.b().getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(this.b) : null;
        while (viewFindViewByPosition == null && (this.c.b().canScrollVertically(1) || this.c.b().canScrollHorizontally(1))) {
            RecyclerView.LayoutManager layoutManager2 = this.c.b().getLayoutManager();
            if (layoutManager2 != null) {
                layoutManager2.requestLayout();
            }
            RecyclerView.LayoutManager layoutManager3 = this.c.b().getLayoutManager();
            viewFindViewByPosition = layoutManager3 != null ? layoutManager3.findViewByPosition(this.b) : null;
            if (viewFindViewByPosition != null) {
                break;
            } else {
                this.c.b().scrollBy(this.c.b().getWidth(), this.c.b().getHeight());
            }
        }
        if (viewFindViewByPosition != null) {
            int iOrdinal = this.e.ordinal();
            if (iOrdinal == 0) {
                int iA = this.c.a(viewFindViewByPosition) - this.d;
                if (oh6.b(this.c.b())) {
                    iA = -iA;
                }
                this.c.b().scrollBy(iA, iA);
                return;
            }
            if (iOrdinal != 1) {
                return;
            }
            int[] iArr = {0, 0};
            int[] iArr2 = {0, 0};
            this.c.b().getLocationOnScreen(iArr2);
            viewFindViewByPosition.getLocationOnScreen(iArr);
            this.c.b().scrollBy(((viewFindViewByPosition.getWidth() - this.c.b().getWidth()) / 2) + (iArr[0] - iArr2[0]), ((viewFindViewByPosition.getHeight() - this.c.b().getHeight()) / 2) + (iArr[1] - iArr2[1]));
        }
    }
}
