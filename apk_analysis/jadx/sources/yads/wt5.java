package yads;

import android.content.Context;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class wt5 extends FrameLayout {
    public final SurfaceView a;
    public float b;
    public wx3 c;
    public tj d;
    public kw4 e;

    public wt5(Context context) {
        super(context);
        SurfaceView surfaceView = new SurfaceView(context);
        this.a = surfaceView;
        this.b = 1.0f;
        this.c = new uk5();
        setBackgroundColor(-16777216);
        addView(surfaceView, new FrameLayout.LayoutParams(-1, -2, 17));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        vx3 vx3VarA = this.c.a(i, i2);
        super.onMeasure(vx3VarA.a, vx3VarA.b);
        tj tjVar = this.d;
        if (tjVar != null) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f = measuredWidth;
            float f2 = measuredHeight;
            float f3 = tjVar.a;
            if ((f3 / (f / f2)) - 1.0f > 0.0f) {
                measuredHeight = (int) (f / f3);
            } else {
                measuredWidth = (int) (f2 * f3);
            }
            tjVar.b.a = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            tjVar.b.b = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            vx3 vx3Var = tjVar.b;
            this.a.measure(vx3Var.a, vx3Var.b);
        }
    }

    public final void setAspectRatio(float f) {
        if (f <= 0.0f || f == this.b) {
            return;
        }
        this.b = f;
        this.d = new tj(f);
        this.c = new l25(f);
        requestLayout();
    }

    public final void setPlayer(kw4 kw4Var) {
        if (defpackage.aa4.e(this.e, kw4Var)) {
            return;
        }
        kw4 kw4Var2 = this.e;
        if (kw4Var2 != null) {
            SurfaceView surfaceView = this.a;
            eq2 eq2Var = (eq2) kw4Var2;
            eq2Var.q();
            SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
            eq2Var.q();
            if (holder != null && holder == eq2Var.M) {
                eq2Var.q();
                eq2Var.m();
                eq2Var.a((Surface) null);
                eq2Var.a(0, 0);
            }
        }
        this.e = kw4Var;
        if (kw4Var != null) {
            eq2 eq2Var2 = (eq2) ((fs) kw4Var);
            eq2Var2.q();
            if (eq2Var2.H.b.a.get(27)) {
                SurfaceView surfaceView2 = this.a;
                eq2 eq2Var3 = (eq2) kw4Var;
                eq2Var3.q();
                if (!(surfaceView2 instanceof bp5)) {
                    SurfaceHolder holder2 = surfaceView2 == null ? null : surfaceView2.getHolder();
                    eq2Var3.q();
                    if (holder2 == null) {
                        eq2Var3.q();
                        eq2Var3.m();
                        eq2Var3.a((Surface) null);
                        eq2Var3.a(0, 0);
                        return;
                    }
                    eq2Var3.m();
                    eq2Var3.O = true;
                    eq2Var3.M = holder2;
                    holder2.addCallback(eq2Var3.t);
                    Surface surface = holder2.getSurface();
                    if (surface == null || !surface.isValid()) {
                        eq2Var3.a((Surface) null);
                        eq2Var3.a(0, 0);
                        return;
                    } else {
                        eq2Var3.a(surface);
                        Rect surfaceFrame = holder2.getSurfaceFrame();
                        eq2Var3.a(surfaceFrame.width(), surfaceFrame.height());
                        return;
                    }
                }
                eq2Var3.m();
                eq2Var3.N = (bp5) surfaceView2;
                uw4 uw4VarA = eq2Var3.a(eq2Var3.u);
                boolean z = uw4VarA.g;
                if (z) {
                    defpackage.ud.g();
                    return;
                }
                uw4VarA.d = 10000;
                bp5 bp5Var = eq2Var3.N;
                if (z) {
                    defpackage.ud.g();
                    return;
                }
                uw4VarA.e = bp5Var;
                uw4VarA.a();
                eq2Var3.N.a.add(eq2Var3.t);
                eq2Var3.a(eq2Var3.N.h);
                SurfaceHolder holder3 = surfaceView2.getHolder();
                eq2Var3.O = false;
                eq2Var3.M = holder3;
                holder3.addCallback(eq2Var3.t);
                Surface surface2 = eq2Var3.M.getSurface();
                if (surface2 == null || !surface2.isValid()) {
                    eq2Var3.a(0, 0);
                } else {
                    Rect surfaceFrame2 = eq2Var3.M.getSurfaceFrame();
                    eq2Var3.a(surfaceFrame2.width(), surfaceFrame2.height());
                }
            }
        }
    }
}
