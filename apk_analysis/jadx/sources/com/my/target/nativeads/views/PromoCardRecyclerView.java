package com.my.target.nativeads.views;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.core.ui.views.nativeslider.CardRecyclerLayoutManager;
import defpackage.l3a;
import defpackage.mp9;
import defpackage.wn6;
import defpackage.xn6;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class PromoCardRecyclerView extends RecyclerView {
    public static final /* synthetic */ int q = 0;
    public final CardRecyclerLayoutManager l;
    public boolean m;
    public boolean n;
    public final b o;
    public int p;

    public static abstract class a extends RecyclerView.Adapter<Object> {
    }

    public class b {
    }

    public static final class c extends RecyclerView.ItemDecoration {
        public final int e;

        public c(int i) {
            this.e = i / 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            if (state.getItemCount() == 1) {
                return;
            }
            int i = this.e;
            if (childAdapterPosition == 0) {
                rect.right = i;
            } else if (childAdapterPosition == state.getItemCount() - 1) {
                rect.left = i;
            } else {
                rect.right = i;
                rect.left = i;
            }
        }
    }

    public PromoCardRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new b();
        this.p = -1;
        this.l = new CardRecyclerLayoutManager(getContext());
        setHasFixedSize(true);
        int iD = l3a.d(16, context);
        new xn6(iD, this).attachToRecyclerView(this);
        addItemDecoration(new c(iD));
        addOnScrollListener(new wn6(this));
    }

    public Parcelable getState() {
        return this.l.onSaveInstanceState();
    }

    public int[] getVisibleCardNumbers() {
        CardRecyclerLayoutManager cardRecyclerLayoutManager = this.l;
        int iFindFirstVisibleItemPosition = cardRecyclerLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = cardRecyclerLayoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition < 0 || iFindLastVisibleItemPosition < 0) {
            return new int[0];
        }
        if (l3a.a(cardRecyclerLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition)) < 50.0f) {
            iFindFirstVisibleItemPosition++;
        }
        if (l3a.a(cardRecyclerLayoutManager.findViewByPosition(iFindLastVisibleItemPosition)) < 50.0f) {
            iFindLastVisibleItemPosition--;
        }
        if (iFindFirstVisibleItemPosition > iFindLastVisibleItemPosition) {
            return new int[0];
        }
        if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
            return new int[]{iFindFirstVisibleItemPosition};
        }
        int i = (iFindLastVisibleItemPosition - iFindFirstVisibleItemPosition) + 1;
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = iFindFirstVisibleItemPosition;
            iFindFirstVisibleItemPosition++;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onScrollStateChanged(int i) {
        int iFindFirstCompletelyVisibleItemPosition;
        super.onScrollStateChanged(i);
        if ((i != 0) || (iFindFirstCompletelyVisibleItemPosition = this.l.findFirstCompletelyVisibleItemPosition()) < 0 || this.p == iFindFirstCompletelyVisibleItemPosition) {
            return;
        }
        this.p = iFindFirstCompletelyVisibleItemPosition;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        if (adapter instanceof a) {
            setPromoCardAdapter((a) adapter);
        } else {
            y14.r(null, "PromoCardRecyclerView: You must use setPromoCardAdapter(PromoCardAdapter) method with custom CardRecyclerView");
        }
    }

    public void setPromoCardAdapter(a aVar) {
    }

    public void setPromoCardSliderListener(mp9 mp9Var) {
    }

    public PromoCardRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PromoCardRecyclerView(Context context) {
        this(context, null);
    }
}
