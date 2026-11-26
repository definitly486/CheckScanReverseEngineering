package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.f2;

/* JADX INFO: loaded from: classes4.dex */
public final class wt9 extends LinearLayoutManager {
    public final int e;
    public int f;
    public m3 g;
    public int h;
    public int i;
    public int j;
    public int k;

    public wt9(Context context) {
        super(context, 0, false);
        this.e = (int) rk3.b(context, 1, 4.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChildWithMargins(View view, int i, int i2) {
        int height = getHeight();
        int width = getWidth();
        if (height != this.k || width != this.j || this.h <= 0 || this.i <= 0) {
            view.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
            float width2 = getWidth() / view.getMeasuredWidth();
            if (width2 > 1.0f) {
                this.h = (int) (((double) width) / (Math.floor(width2) + 0.5d));
            } else {
                this.h = (int) (width / 1.5f);
            }
            this.i = height;
            this.j = width;
            this.k = height;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (view != getChildAt(0)) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = l3a.d(this.f / 2, view.getContext());
        }
        if (view != getChildAt(getChildCount())) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = l3a.d(this.f / 2, view.getContext());
        }
        int childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(width, getWidthMode(), 0, this.h, canScrollHorizontally());
        int heightMode = getHeightMode();
        int i3 = this.e;
        view.measure(childMeasureSpec, RecyclerView.LayoutManager.getChildMeasureSpec(height, heightMode, i3, height - (i3 * 2), canScrollVertically()));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        m3 m3Var = this.g;
        if (m3Var != null) {
            f2 f2Var = (f2) m3Var.c;
            int i = f2.t;
            f2Var.j();
        }
    }
}
