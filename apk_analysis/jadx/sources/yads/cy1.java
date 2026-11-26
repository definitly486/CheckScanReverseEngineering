package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.monetization.ads.core.divkit.AdsDivGridLayoutManager;
import com.yandex.mobile.ads.R$style;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class cy1 extends ln implements wh1 {
    public final /* synthetic */ xh1 b;
    public int c;
    public int d;
    public int e;
    public float f;
    public oq4 g;
    public lg1 h;
    public js4 i;
    public boolean j;
    public int k;

    public cy1(Context context, AttributeSet attributeSet, int i) {
        super(new ContextThemeWrapper(context, R$style.monetization_ads_divkit_Div_Gallery), attributeSet, i);
        this.b = new xh1();
        this.c = -1;
        this.h = lg1.DEFAULT;
        this.k = -1;
    }

    @Override // yads.r16
    public final void a(View view) {
        this.b.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.b.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.b.d;
    }

    @Override // yads.s51
    public final void d() {
        this.b.d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void draw(Canvas canvas) {
        l51 l51VarI = i();
        if (l51VarI == null) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        try {
            l51VarI.a(canvas);
            super.draw(canvas);
            l51VarI.b(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        if (view != null && view.getVisibility() == 0) {
            tq.a(view, canvas);
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // yads.s51
    public final void e() {
        this.b.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.b.e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final boolean fling(int i, int i2) {
        boolean zFling = super.fling(i, i2);
        if (this.h == lg1.PAGING) {
            this.j = !zFling;
        }
        return zFling;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.b.b.g();
    }

    public final js4 h() {
        return this.i;
    }

    @Override // yads.s51
    public final l51 i() {
        return this.b.a.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        oq4 oq4Var = this.g;
        if (oq4Var != null ? ((ms4) oq4Var).a(this, motionEvent) : false) {
            return true;
        }
        if (this.f == 0.0f) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            this.c = motionEvent.getPointerId(0);
            this.d = (int) Math.ceil(motionEvent.getX());
            this.e = (int) Math.ceil(motionEvent.getY());
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked != 2) {
            if (actionMasked != 5) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            this.c = motionEvent.getPointerId(actionIndex);
            this.d = (int) Math.ceil(motionEvent.getX(actionIndex));
            this.e = (int) Math.ceil(motionEvent.getY(actionIndex));
            return super.onInterceptTouchEvent(motionEvent);
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null || (iFindPointerIndex = motionEvent.findPointerIndex(this.c)) < 0) {
            return false;
        }
        int iCeil = (int) Math.ceil(motionEvent.getX(iFindPointerIndex));
        int iCeil2 = (int) Math.ceil(motionEvent.getY(iFindPointerIndex));
        if (getScrollState() == 1) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int iAbs = Math.abs(iCeil - this.d);
        int iAbs2 = Math.abs(iCeil2 - this.e);
        if (iAbs == 0 && iAbs2 == 0) {
            return false;
        }
        double dAtan = iAbs != 0 ? (Math.atan(((double) iAbs2) / ((double) iAbs)) * 180.0d) / 3.141592653589793d : 90.0d;
        return (layoutManager.canScrollHorizontally() && dAtan <= ((double) this.f)) || (layoutManager.canScrollVertically() && dAtan > ((double) this.f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onScrollStateChanged(int i) {
        if (i == 2) {
            View focusedChild = getFocusedChild();
            if (focusedChild == null) {
                this.k = -1;
                return;
            }
            this.k = getChildAdapterPosition(focusedChild);
        }
        super.onScrollStateChanged(i);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x003e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0041  */
    /* JADX WARN: Code duplicated, block: B:30:0x0046  */
    /* JADX WARN: Code duplicated, block: B:32:0x004b  */
    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onScrolled(int i, int i2) {
        int orientation;
        int i3;
        int i4;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        View view;
        pi2 pi2Var;
        View viewJ;
        if (this.k == -1) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            orientation = ((LinearLayoutManager) layoutManager).getOrientation();
        } else {
            orientation = layoutManager instanceof AdsDivGridLayoutManager ? ((AdsDivGridLayoutManager) layoutManager).getOrientation() : 0;
        }
        if (orientation != 1 || i2 <= 0) {
            if (orientation != 1 || i2 > 0) {
                i3 = this.k;
                if (i > 0) {
                }
                viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i4);
                if (viewHolderFindViewHolderForAdapterPosition != null) {
                    view = viewHolderFindViewHolderForAdapterPosition.itemView;
                } else {
                    view = null;
                }
                pi2Var = view instanceof pi2 ? (pi2) view : null;
                if (pi2Var != null && (viewJ = pi2Var.j()) != null) {
                    viewJ.requestFocus();
                }
                super.onScrolled(i, i2);
            }
            i3 = this.k;
            i4 = i3 - 1;
            viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i4);
            if (viewHolderFindViewHolderForAdapterPosition != null) {
                view = viewHolderFindViewHolderForAdapterPosition.itemView;
            } else {
                view = null;
            }
            if (view instanceof pi2) {
            }
            if (pi2Var != null) {
                viewJ.requestFocus();
            }
            super.onScrolled(i, i2);
        }
        i3 = this.k;
        i4 = i3 + 1;
        viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i4);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            view = viewHolderFindViewHolderForAdapterPosition.itemView;
        } else {
            view = null;
        }
        if (view instanceof pi2) {
        }
        if (pi2Var != null) {
            viewJ.requestFocus();
        }
        super.onScrolled(i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.b.h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        RecyclerView.LayoutManager layoutManager;
        js4 js4Var;
        View viewFindSnapView;
        int[] iArrCalculateDistanceToFinalSnap;
        int i;
        lg1 lg1Var = this.h;
        lg1 lg1Var2 = lg1.PAGING;
        if (lg1Var == lg1Var2) {
            this.j = true;
        }
        boolean z = super.onTouchEvent(motionEvent) && (canScrollHorizontally(-1) || canScrollHorizontally(1) || canScrollVertically(-1) || canScrollVertically(1));
        if (motionEvent != null && motionEvent.getActionMasked() == 1 && this.h == lg1Var2 && this.j && (layoutManager = getLayoutManager()) != null && (js4Var = this.i) != null && (viewFindSnapView = js4Var.findSnapView(layoutManager)) != null && ((i = (iArrCalculateDistanceToFinalSnap = js4Var.calculateDistanceToFinalSnap(layoutManager, viewFindSnapView))[0]) != 0 || iArrCalculateDistanceToFinalSnap[1] != 0)) {
            smoothScrollBy(i, iArrCalculateDistanceToFinalSnap[1]);
        }
        return z;
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        super.release();
        Object adapter = getAdapter();
        if (adapter instanceof r55) {
            ((r55) adapter).release();
        }
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.b.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.b.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.b.a.setNeedClipping(z);
    }

    public void setOnInterceptTouchEventListener(oq4 oq4Var) {
        this.g = oq4Var;
    }

    public void setPagerSnapStartHelper(js4 js4Var) {
        this.i = js4Var;
    }

    public void setScrollInterceptionAngle(float f) {
        this.f = f != 0.0f ? Math.abs(f) % 90.0f : 0.0f;
    }

    public void setScrollMode(lg1 lg1Var) {
        this.h = lg1Var;
    }

    @Override // yads.wh1
    public void setDiv(wp0 wp0Var) {
        this.b.c = wp0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (wp0) this.b.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.b.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.b.a(tp0Var);
    }

    public cy1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ cy1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public cy1(Context context) {
        this(context, null, 6, 0);
    }
}
