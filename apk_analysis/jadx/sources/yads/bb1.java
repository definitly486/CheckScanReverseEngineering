package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bb1 extends g03 implements wh1 {
    public final /* synthetic */ xh1 l;

    public bb1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = new xh1();
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

    @Override // yads.s51
    public final void d() throws Exception {
        this.l.a.d();
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
        this.l.a.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.l.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.l.b.g();
    }

    @Override // android.view.View
    public final int getBaseline() {
        View view = getChildCount() != 0 ? ViewGroupKt.get(this, 0) : null;
        if (view == null) {
            return super.getBaseline();
        }
        int baseline = view.getBaseline();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        return getPaddingTop() + baseline + (marginLayoutParams != null ? marginLayoutParams.topMargin : 0);
    }

    @Override // yads.s51
    public final l51 i() {
        return this.l.a.a;
    }

    @Override // yads.yh2, android.view.ViewGroup
    public final void measureChild(View view, int i, int i2) {
        a(view, i, i2);
    }

    @Override // yads.yh2, android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        a(view, i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.l.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.l.release();
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

    @Override // yads.wh1
    public void setDiv(vp0 vp0Var) {
        this.l.c = vp0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (vp0) this.l.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.l.b();
    }

    public bb1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.l.a(tp0Var);
    }

    public /* synthetic */ bb1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public bb1(Context context) {
        this(context, null, 6, 0);
    }
}
