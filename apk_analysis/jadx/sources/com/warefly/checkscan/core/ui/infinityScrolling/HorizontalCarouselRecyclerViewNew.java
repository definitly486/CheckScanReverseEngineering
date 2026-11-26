package com.warefly.checkscan.core.ui.infinityScrolling;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class HorizontalCarouselRecyclerViewNew extends RecyclerView {
    public final a l;

    /* JADX INFO: loaded from: classes3.dex */
    public static final class a extends LinearSmoothScroller {
        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            displayMetrics.getClass();
            return 50.0f / displayMetrics.densityDpi;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalCarouselRecyclerViewNew(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        new PagerSnapHelper().attachToRecyclerView(this);
        this.l = new a(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollToPosition(int i) {
        a aVar = this.l;
        aVar.setTargetPosition(i);
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager != null) {
            layoutManager.startSmoothScroll(aVar);
        }
    }
}
