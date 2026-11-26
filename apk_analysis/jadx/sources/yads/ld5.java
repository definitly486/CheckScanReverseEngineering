package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.customview.widget.ViewDragHelper;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class ld5 extends pb5 {
    public final an4 b;
    public ViewDragHelper c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public Set h;
    public oq4 i;

    public ld5(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new an4(this);
        this.d = true;
        this.e = true;
        this.f = false;
        this.g = false;
    }

    public final boolean a(MotionEvent motionEvent) {
        if (!this.e && this.c != null) {
            if ((motionEvent.getAction() & 255) == 0) {
                this.f = false;
            }
            this.c.processTouchEvent(motionEvent);
        }
        Set set = this.h;
        if (set != null) {
            this.g = this.d && set.contains(Integer.valueOf(getCurrentItem()));
        }
        return (this.f || this.g || !this.d) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        this.b.a(motionEvent);
        return zDispatchTouchEvent;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        oq4 oq4Var = this.i;
        if (oq4Var != null ? ((ms4) oq4Var).a(this, motionEvent) : false) {
            return true;
        }
        return a(motionEvent) && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.b.b = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return a(motionEvent) && super.onTouchEvent(motionEvent);
    }

    public void setDisabledScrollPages(Set<Integer> set) {
        this.h = set;
    }

    public void setEdgeScrollEnabled(boolean z) {
        this.e = z;
        if (z) {
            return;
        }
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, new kd5(this));
        this.c = viewDragHelperCreate;
        viewDragHelperCreate.setEdgeTrackingEnabled(3);
    }

    public void setOnInterceptTouchEventListener(oq4 oq4Var) {
        this.i = oq4Var;
    }

    public void setScrollEnabled(boolean z) {
        this.d = z;
    }

    public ld5(Context context) {
        this(context, null);
    }
}
