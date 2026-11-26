package com.warefly.checkscan.ui.infiniteScrolling;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class HorizontalCarouselRecyclerView extends RecyclerView {
    public LinearLayoutManager l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalCarouselRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        this.l = new ProminentLayoutManager(context);
    }

    public final LinearLayoutManager getLm() {
        return this.l;
    }

    public final void setLm(LinearLayoutManager linearLayoutManager) {
        linearLayoutManager.getClass();
        this.l = linearLayoutManager;
    }
}
