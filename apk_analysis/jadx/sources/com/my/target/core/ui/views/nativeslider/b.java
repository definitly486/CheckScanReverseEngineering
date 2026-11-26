package com.my.target.core.ui.views.nativeslider;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.b3a;
import defpackage.l3a;
import defpackage.mp9;
import defpackage.rk3;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b extends RecyclerView {
    public static final /* synthetic */ int p = 0;
    public final C0151b l;
    public final a m;
    public final com.my.target.core.ui.views.nativeslider.a n;
    public boolean o;

    public class a {
        public a() {
        }
    }

    /* JADX INFO: renamed from: com.my.target.core.ui.views.nativeslider.b$b, reason: collision with other inner class name */
    public static class C0151b extends LinearLayoutManager {
        public rk3 e;
        public int f;

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void measureChildWithMargins(View view, int i, int i2) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            int width = getWidth();
            if (getHeight() <= 0 || width <= 0) {
                return;
            }
            if (getItemViewType(view) == 1) {
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = this.f;
            } else {
                int itemViewType = getItemViewType(view);
                int i3 = this.f;
                if (itemViewType == 2) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i3;
                } else {
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i3;
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i3;
                }
            }
            super.measureChildWithMargins(view, i, i2);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onLayoutCompleted(RecyclerView.State state) {
            super.onLayoutCompleted(state);
            if (this.e != null) {
                int i = b.p;
            }
        }
    }

    public b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = new a();
        C0151b c0151b = new C0151b(context, 0, false);
        this.l = c0151b;
        c0151b.f = l3a.d(4, context);
        this.n = new com.my.target.core.ui.views.nativeslider.a(getContext());
        setHasFixedSize(true);
    }

    private void setCardLayoutManager(C0151b c0151b) {
        c0151b.e = new rk3();
        super.setLayoutManager(c0151b);
    }

    public Parcelable getState() {
        return this.l.onSaveInstanceState();
    }

    public View getView() {
        return this;
    }

    public int[] getVisibleCardNumbers() {
        C0151b c0151b = this.l;
        int iFindFirstVisibleItemPosition = c0151b.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = c0151b.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition < 0 || iFindLastVisibleItemPosition < 0) {
            return new int[0];
        }
        if (l3a.a(c0151b.findViewByPosition(iFindFirstVisibleItemPosition)) < 50.0f) {
            iFindFirstVisibleItemPosition++;
        }
        if (l3a.a(c0151b.findViewByPosition(iFindLastVisibleItemPosition)) < 50.0f) {
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
        super.onScrollStateChanged(i);
        this.o = i != 0;
    }

    public void setPromoCardSliderListener(mp9 mp9Var) {
    }

    public void setupCards(List<b3a> list) {
        com.my.target.core.ui.views.nativeslider.a aVar = this.n;
        aVar.t.addAll(list);
        if (isClickable()) {
            aVar.u = this.m;
        }
        setCardLayoutManager(this.l);
        swapAdapter(aVar, true);
    }

    public b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public b(Context context) {
        this(context, null);
    }
}
