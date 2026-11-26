package com.my.target;

import android.content.Context;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public class sc extends RecyclerView {
    public a l;

    public interface a {
    }

    public sc(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onScrollStateChanged(int i) {
        a aVar;
        super.onScrollStateChanged(i);
        if (i == 0 && (aVar = this.l) != null) {
            ((com.my.target.core.ui.views.promo.style2.cards.b) aVar).a();
        }
    }

    public void setMoveStopListener(a aVar) {
        this.l = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollBy(int i, int i2) {
        super.smoothScrollBy(i, i2, new AccelerateDecelerateInterpolator());
    }
}
