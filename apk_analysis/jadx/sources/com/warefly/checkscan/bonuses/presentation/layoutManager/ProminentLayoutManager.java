package com.warefly.checkscan.bonuses.presentation.layoutManager;

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
        this.f = 0.215f;
    }

    public final void n() {
        float width = getWidth() / 2.0f;
        float f = this.e * width;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            childAt.getClass();
            float right = (childAt.getRight() + childAt.getLeft()) / 2.0f;
            float fAbs = Math.abs(right - width) / f;
            if (fAbs > 1.0f) {
                fAbs = 1.0f;
            }
            float f2 = 1.0f - (this.f * fAbs);
            childAt.setScaleX(f2);
            childAt.setScaleY(f2);
            childAt.setTranslationX(((1.0f - f2) * (childAt.getWidth() * (right > width ? -1 : 1))) / 2.0f);
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
