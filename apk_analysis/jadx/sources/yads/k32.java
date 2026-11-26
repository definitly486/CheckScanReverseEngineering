package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.GestureDetectorCompat;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k32 extends g03 implements wh1 {
    public final /* synthetic */ xh1 l;
    public n32 m;
    public final j32 n;
    public final GestureDetectorCompat o;
    public ll3 p;
    public br0 q;
    public nl3 r;

    public k32(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = new xh1();
        j32 j32Var = new j32(this);
        this.n = j32Var;
        this.o = new GestureDetectorCompat(context, j32Var, new Handler(Looper.getMainLooper()));
    }

    @Override // yads.r16
    public final void a(View view) {
        this.l.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.l.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.l.d;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (super.canScrollHorizontally(i)) {
            return true;
        }
        if (getChildCount() < 1 || this.p == null) {
            return super.canScrollHorizontally(i);
        }
        View childAt = getChildAt(0);
        return i >= 0 ? (-childAt.getTranslationX()) <= ((float) childAt.getWidth()) : childAt.getTranslationX() <= ((float) childAt.getWidth());
    }

    @Override // yads.s51
    public final void d() {
        this.l.d();
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
        this.l.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.l.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.l.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.l.a.a;
    }

    public final n32 j() {
        return this.m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String k() {
        n32 n32Var = this.m;
        if (n32Var == null || n32Var.b.isEmpty()) {
            return null;
        }
        return (String) ((defpackage.b36) defpackage.qn1.b0(n32Var.b)).c;
    }

    public final nl3 l() {
        return this.r;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.p == null) {
            requestDisallowInterceptTouchEvent(false);
            return false;
        }
        this.o.onTouchEvent(motionEvent);
        requestDisallowInterceptTouchEvent(this.n.b());
        if (this.n.b()) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.l.h();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.p == null) {
            requestDisallowInterceptTouchEvent(false);
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.n.a();
        }
        if (this.o.onTouchEvent(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.l.release();
    }

    public final void setActiveStateDiv$mobileads_externalRelease(br0 br0Var) {
        this.q = br0Var;
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.l.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.l.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.l.a.setNeedClipping(z);
    }

    public final void setPath(n32 n32Var) {
        this.m = n32Var;
    }

    public final void setSwipeOutCallback(ll3<j59> ll3Var) {
        this.p = ll3Var;
    }

    public final void setVariableUpdater(nl3<? super String, j59> nl3Var) {
        this.r = nl3Var;
    }

    @Override // yads.wh1
    public void setDiv(gq0 gq0Var) {
        this.l.c = gq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (gq0) this.l.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.l.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.l.a(tp0Var);
    }

    public k32(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ k32(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public k32(Context context) {
        this(context, null, 6, 0);
    }
}
