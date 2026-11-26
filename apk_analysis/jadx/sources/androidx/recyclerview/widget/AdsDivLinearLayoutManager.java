package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import defpackage.qn1;
import java.util.HashSet;
import yads.cn1;
import yads.cy1;
import yads.id5;
import yads.og1;
import yads.pg1;
import yads.ro1;
import yads.sb;
import yads.tg1;
import yads.tt;

/* JADX INFO: loaded from: classes6.dex */
public final class AdsDivLinearLayoutManager extends LinearLayoutManager implements tg1 {
    private final tt a;
    private final cy1 b;
    private final og1 c;
    private final HashSet d;

    public AdsDivLinearLayoutManager(tt ttVar, cy1 cy1Var, og1 og1Var, int i) {
        super(cy1Var.getContext(), i, false);
        this.a = ttVar;
        this.b = cy1Var;
        this.c = og1Var;
        this.d = new HashSet();
    }

    @Override // yads.tg1
    public final cn1 a(int i) {
        RecyclerView.Adapter adapter = this.b.getAdapter();
        adapter.getClass();
        return (cn1) qn1.W(i, ((pg1) adapter).d());
    }

    @Override // yads.tg1
    public /* bridge */ /* synthetic */ int b(View view) {
        return super.b(view);
    }

    @Override // yads.tg1
    public final int c(View view) {
        return getPosition(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof sb;
    }

    @Override // yads.tg1
    public final HashSet d() {
        return this.d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void detachView(View view) {
        super.detachView(view);
        a(view, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void detachViewAt(int i) {
        super.detachViewAt(i);
        View viewB = b(i);
        if (viewB == null) {
            return;
        }
        a(viewB, true);
    }

    @Override // yads.tg1
    public final int e() {
        return getWidth();
    }

    @Override // yads.tg1
    public final RecyclerView.LayoutManager f() {
        return this;
    }

    @Override // yads.tg1
    public final int g() {
        return findLastVisibleItemPosition();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new sb();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof sb) {
            return new sb((sb) layoutParams);
        }
        if (layoutParams instanceof RecyclerView.LayoutParams) {
            return new sb((RecyclerView.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ro1) {
            return new sb((ro1) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new sb((ViewGroup.MarginLayoutParams) layoutParams) : new sb(layoutParams);
    }

    @Override // yads.tg1
    public final int h() {
        return findFirstCompletelyVisibleItemPosition();
    }

    @Override // yads.tg1
    public final int i() {
        return findFirstVisibleItemPosition();
    }

    @Override // yads.tg1
    public final int j() {
        return getOrientation();
    }

    @Override // yads.tg1
    public final int k() {
        return findLastCompletelyVisibleItemPosition();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void layoutDecorated(View view, int i, int i2, int i3, int i4) {
        super.layoutDecorated(view, i, i2, i3, i4);
        a(view, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
        a(view, i, i2, i3, i4, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        sb sbVar = (sb) layoutParams;
        Rect itemDecorInsetsForChild = this.b.getItemDecorInsetsForChild(view);
        int iA = tg1.a(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + i + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right, ((ViewGroup.MarginLayoutParams) sbVar).width, sbVar.b, canScrollHorizontally());
        int iA2 = tg1.a(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + i2 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom, ((ViewGroup.MarginLayoutParams) sbVar).height, sbVar.a, canScrollVertically());
        if (shouldMeasureChild(view, iA, iA2, sbVar)) {
            view.measure(iA, iA2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChildWithMargins(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        sb sbVar = (sb) layoutParams;
        Rect itemDecorInsetsForChild = this.b.getItemDecorInsetsForChild(view);
        int iA = tg1.a(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) sbVar).leftMargin + ((ViewGroup.MarginLayoutParams) sbVar).rightMargin + i + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right, ((ViewGroup.MarginLayoutParams) sbVar).width, sbVar.b, canScrollHorizontally());
        int iA2 = tg1.a(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) sbVar).topMargin + ((ViewGroup.MarginLayoutParams) sbVar).bottomMargin + i2 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom, ((ViewGroup.MarginLayoutParams) sbVar).height, sbVar.a, canScrollVertically());
        if (shouldMeasureChild(view, iA, iA2, sbVar)) {
            view.measure(iA, iA2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(recyclerView.getChildAt(i), false);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(recyclerView.getChildAt(i), true);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        for (View view : d()) {
            a(view, view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), true);
        }
        d().clear();
        super.onLayoutCompleted(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void removeAndRecycleAllViews(RecyclerView.Recycler recycler) {
        RecyclerView recyclerViewB = b();
        int childCount = recyclerViewB.getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(recyclerViewB.getChildAt(i), true);
        }
        super.removeAndRecycleAllViews(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void removeView(View view) {
        super.removeView(view);
        a(view, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void removeViewAt(int i) {
        super.removeViewAt(i);
        View viewB = b(i);
        if (viewB == null) {
            return;
        }
        a(viewB, true);
    }

    @Override // yads.tg1
    public /* bridge */ /* synthetic */ void b(int i, int i2, id5 id5Var) {
        super.b(i, i2, id5Var);
    }

    @Override // yads.tg1
    public final tt c() {
        return this.a;
    }

    @Override // yads.tg1
    public final RecyclerView b() {
        return this.b;
    }

    public final View b(int i) {
        return getChildAt(i);
    }

    @Override // yads.tg1
    public /* bridge */ /* synthetic */ void a(View view, boolean z) {
        super.a(view, z);
    }

    @Override // yads.tg1
    public /* bridge */ /* synthetic */ void a(View view, int i, int i2, int i3, int i4, boolean z) {
        super.a(view, i, i2, i3, i4, z);
    }

    @Override // yads.tg1
    public final og1 a() {
        return this.c;
    }

    @Override // yads.tg1
    public final void a(int i, id5 id5Var) {
        b(i, 0, id5Var);
    }

    @Override // yads.tg1
    public final void a(View view, int i, int i2, int i3, int i4) {
        super.layoutDecoratedWithMargins(view, i, i2, i3, i4);
    }

    @Override // yads.tg1
    public final void a(int i, int i2, id5 id5Var) {
        b(i, i2, id5Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new sb(context, attributeSet);
    }
}
