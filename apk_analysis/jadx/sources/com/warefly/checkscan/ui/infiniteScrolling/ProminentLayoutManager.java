package com.warefly.checkscan.ui.infiniteScrolling;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class ProminentLayoutManager extends LinearLayoutManager {
    public final float e;
    public final float f;

    public ProminentLayoutManager(Context context) {
        super(context, 0, false);
        this.e = 1.5f;
        this.f = 0.2f;
    }

    public final void n() {
        float width = getWidth() / 2.0f;
        float f = this.e * width;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                float fAbs = Math.abs(((childAt.getRight() + childAt.getLeft()) / 2.0f) - width) / f;
                if (fAbs > 1.0f) {
                    fAbs = 1.0f;
                }
                float f2 = 1.0f - (this.f * fAbs);
                if (!Float.isNaN(f2)) {
                    childAt.setScaleX(f2);
                    childAt.setScaleY(f2);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        j59 j59Var = j59.a;
        n();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        recycler.getClass();
        state.getClass();
        int iScrollHorizontallyBy = super.scrollHorizontallyBy(i, recycler, state);
        if (getOrientation() == 0) {
            n();
        }
        return iScrollHorizontallyBy;
    }
}
