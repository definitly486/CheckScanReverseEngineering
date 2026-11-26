package com.monetization.ads.core.divkit;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import defpackage.ag;
import defpackage.qn1;
import defpackage.yr;
import java.util.HashSet;
import yads.as2;
import yads.cn1;
import yads.cy1;
import yads.id5;
import yads.og1;
import yads.p41;
import yads.pg1;
import yads.tg1;
import yads.tt;
import yads.u02;
import yads.uq;

/* JADX INFO: loaded from: classes6.dex */
public final class AdsDivGridLayoutManager extends StaggeredGridLayoutManager implements tg1 {
    private final tt a;
    private final cy1 b;
    private final og1 c;
    private final HashSet d;

    /* JADX WARN: Illegal instructions before constructor call */
    public AdsDivGridLayoutManager(tt ttVar, cy1 cy1Var, og1 og1Var, int i) {
        int i2;
        as2 as2Var = og1Var.h;
        if (as2Var != null) {
            long jLongValue = ((Number) as2Var.a(ttVar.b())).longValue();
            long j = jLongValue >> 31;
            i2 = (j == 0 || j == -1) ? (int) jLongValue : jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i2 = 1;
        }
        super(i2, i);
        this.a = ttVar;
        this.b = cy1Var;
        this.c = og1Var;
        this.d = new HashSet();
    }

    private final int c(int i) {
        as2 as2Var;
        if (i != getOrientation() && (as2Var = this.c.k) != null) {
            return uq.a(Long.valueOf(((Number) as2Var.a(this.a.b)).longValue()), this.b.getResources().getDisplayMetrics());
        }
        return l();
    }

    private final int l() {
        return uq.a((Long) this.c.t.a(this.a.b), this.b.getResources().getDisplayMetrics());
    }

    @Override // yads.tg1
    public final cn1 a(int i) {
        RecyclerView.Adapter adapter = this.b.getAdapter();
        adapter.getClass();
        return (cn1) qn1.W(i, ((pg1) adapter).d());
    }

    public final View b(int i) {
        return getChildAt(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void calculateItemDecorationsForChild(View view, Rect rect) {
        cn1 cn1VarA;
        super.calculateItemDecorationsForChild(view, rect);
        int position = getPosition(view);
        if (position == -1 || (cn1VarA = a(position)) == null) {
            return;
        }
        p41 p41VarA = cn1VarA.a.a();
        boolean z = p41VarA.getHeight() instanceof u02;
        boolean z2 = p41VarA.getWidth() instanceof u02;
        int iC = 0;
        boolean z3 = getSpanCount() > 1;
        int iC2 = (z && z3) ? c(1) / 2 : 0;
        if (z2 && z3) {
            iC = c(0) / 2;
        }
        rect.set(rect.left - iC, rect.top - iC2, rect.right - iC, rect.bottom - iC2);
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
        int itemCount = getItemCount();
        int spanCount = getSpanCount();
        if (itemCount < spanCount) {
            itemCount = spanCount;
        }
        int[] iArr = new int[itemCount];
        findLastVisibleItemPositions(iArr);
        if (itemCount != 0) {
            return iArr[itemCount - 1];
        }
        ag.g("Array is empty.");
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getPaddingBottom() {
        return super.getPaddingBottom() - (c(1) / 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getPaddingEnd() {
        return super.getPaddingEnd() - (l() / 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getPaddingLeft() {
        return super.getPaddingLeft() - (c(0) / 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getPaddingRight() {
        return super.getPaddingRight() - (c(0) / 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getPaddingStart() {
        return super.getPaddingStart() - (l() / 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getPaddingTop() {
        return super.getPaddingTop() - (c(1) / 2);
    }

    @Override // yads.tg1
    public final int h() {
        int itemCount = getItemCount();
        int spanCount = getSpanCount();
        if (itemCount < spanCount) {
            itemCount = spanCount;
        }
        int[] iArr = new int[itemCount];
        findFirstCompletelyVisibleItemPositions(iArr);
        return yr.H(iArr);
    }

    @Override // yads.tg1
    public final int i() {
        int itemCount = getItemCount();
        int spanCount = getSpanCount();
        if (itemCount < spanCount) {
            itemCount = spanCount;
        }
        int[] iArr = new int[itemCount];
        findFirstVisibleItemPositions(iArr);
        return yr.H(iArr);
    }

    @Override // yads.tg1
    public final int j() {
        return getOrientation();
    }

    @Override // yads.tg1
    public final int k() {
        int itemCount = getItemCount();
        int spanCount = getSpanCount();
        if (itemCount < spanCount) {
            itemCount = spanCount;
        }
        int[] iArr = new int[itemCount];
        findLastCompletelyVisibleItemPositions(iArr);
        if (itemCount != 0) {
            return iArr[itemCount - 1];
        }
        ag.g("Array is empty.");
        return 0;
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
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(recyclerView.getChildAt(i), false);
        }
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(recyclerView.getChildAt(i), true);
        }
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
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
    public final RecyclerView b() {
        return this.b;
    }

    @Override // yads.tg1
    public final og1 a() {
        return this.c;
    }

    @Override // yads.tg1
    public final void a(View view, int i, int i2, int i3, int i4) {
        super.layoutDecoratedWithMargins(view, i, i2, i3, i4);
    }

    @Override // yads.tg1
    public final void a(int i, id5 id5Var) {
        b(i, 0, id5Var);
    }

    @Override // yads.tg1
    public final void a(int i, int i2, id5 id5Var) {
        b(i, i2, id5Var);
    }

    @Override // yads.tg1
    public final tt c() {
        return this.a;
    }

    @Override // yads.tg1
    public final int c(View view) {
        return getPosition(view);
    }
}
