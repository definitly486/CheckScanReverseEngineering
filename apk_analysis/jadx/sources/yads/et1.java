package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class et1 extends ng6 implements wh1 {
    public static final /* synthetic */ int k = 0;
    public final /* synthetic */ xh1 b;
    public ViewPager2.OnPageChangeCallback c;
    public final ArrayList d;
    public ViewPager2.OnPageChangeCallback e;
    public bt1 f;
    public is4 g;
    public ct1 h;
    public oq4 i;
    public final defpackage.cl4 j;

    public et1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new xh1();
        this.d = new ArrayList();
        this.j = defpackage.nm4.a(defpackage.po4.NONE, new defpackage.a22(this, 2));
    }

    public static final dt1 a(et1 et1Var) {
        RecyclerView recyclerViewH = et1Var.h();
        if (recyclerViewH == null) {
            return null;
        }
        return new dt1(recyclerViewH, et1Var);
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

    @Override // android.view.View
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

    @Override // android.view.ViewGroup
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

    @Override // yads.r16
    public final boolean g() {
        return this.b.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.b.a.a;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        oq4 oq4Var = this.i;
        return (oq4Var != null ? ((ms4) oq4Var).a(this, motionEvent) : false) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.b.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.b.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.b.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.b.a.setBorder(ttVar, f51Var, view);
    }

    public void setChangePageCallbackForLogger$mobileads_externalRelease(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback2 = this.e;
        if (onPageChangeCallback2 != null) {
            this.a.unregisterOnPageChangeCallback(onPageChangeCallback2);
        }
        if (onPageChangeCallback != null) {
            this.a.registerOnPageChangeCallback(onPageChangeCallback);
        }
        this.e = onPageChangeCallback;
    }

    public void setChangePageCallbackForOffScreenPages$mobileads_externalRelease(bt1 bt1Var) {
        bt1 bt1Var2 = this.f;
        if (bt1Var2 != null) {
            this.a.unregisterOnPageChangeCallback(bt1Var2);
            RecyclerView recyclerViewH = h();
            if (recyclerViewH != null) {
                recyclerViewH.removeOnLayoutChangeListener(bt1Var2);
            }
        }
        if (bt1Var != null) {
            this.a.registerOnPageChangeCallback(bt1Var);
            RecyclerView recyclerViewH2 = h();
            if (recyclerViewH2 != null) {
                recyclerViewH2.addOnLayoutChangeListener(bt1Var);
            }
        }
        this.f = bt1Var;
    }

    public void setChangePageCallbackForState$mobileads_externalRelease(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback2 = this.c;
        if (onPageChangeCallback2 != null) {
            this.a.unregisterOnPageChangeCallback(onPageChangeCallback2);
        }
        if (onPageChangeCallback != null) {
            this.a.registerOnPageChangeCallback(onPageChangeCallback);
        }
        this.c = onPageChangeCallback;
    }

    public void setClipToPage$mobileads_externalRelease(boolean z) {
        RecyclerView recyclerViewH = h();
        if (recyclerViewH == null) {
            return;
        }
        recyclerViewH.setClipChildren(z);
    }

    public void setCurrentItem$mobileads_externalRelease(int i) {
        this.a.setCurrentItem(i, false);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.b.a.setNeedClipping(z);
    }

    public void setOnInterceptTouchEventListener(oq4 oq4Var) {
        this.i = oq4Var;
    }

    public void setPagerOnItemsCountChange$mobileads_externalRelease(ct1 ct1Var) {
        this.h = ct1Var;
    }

    public void setPagerSelectedActionsDispatcher$mobileads_externalRelease(is4 is4Var) {
        is4 is4Var2 = this.g;
        if (is4Var2 != null) {
            ViewPager2 viewPager2 = this.a;
            hs4 hs4Var = is4Var2.d;
            if (hs4Var != null) {
                viewPager2.unregisterOnPageChangeCallback(hs4Var);
            }
            is4Var2.d = null;
        }
        if (is4Var != null) {
            ViewPager2 viewPager3 = this.a;
            hs4 hs4Var2 = new hs4(is4Var);
            viewPager3.registerOnPageChangeCallback(hs4Var2);
            is4Var.d = hs4Var2;
        }
        this.g = is4Var;
    }

    @Override // yads.wh1
    public void setDiv(cq0 cq0Var) {
        this.b.c = cq0Var;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.b.b();
    }

    @Override // yads.wh1
    public final br0 a() {
        return (cq0) this.b.c;
    }

    @Override // yads.r16
    public final void a(View view) {
        this.b.b.a(view);
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.b.a(tp0Var);
    }

    public et1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ et1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public et1(Context context) {
        this(context, null, 6, 0);
    }
}
