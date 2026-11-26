package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes6.dex */
public final class yu extends FrameLayout {
    public final dn2 a;
    public final int b;
    public final Paint c;

    public yu(Context context, ip0 ip0Var) {
        dn2 dn2Var = new dn2();
        super(context);
        this.a = dn2Var;
        ip0Var.getClass();
        this.b = ip0.a(context, 0.5f);
        Paint paint = new Paint();
        this.c = paint;
        int iB = defpackage.w65.b(TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(iB);
        paint.setColor(SupportMenu.CATEGORY_MASK);
        setClickable(false);
        setFocusable(false);
        setWillNotDraw(false);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.b;
        canvas.drawRect(f, f, getWidth() - this.b, getHeight() - this.b, this.c);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Object parent = getParent();
        if (!(parent instanceof View)) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        View view = (View) parent;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        setLeft(0);
        setTop(0);
        setRight(measuredWidth);
        setBottom(measuredHeight);
        super.onLayout(z, 0, 0, measuredWidth, measuredHeight);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        vx3 vx3VarA = this.a.a(i, i2);
        super.onMeasure(vx3VarA.a, vx3VarA.b);
    }

    public final void setColor(int i) {
        if (this.c.getColor() != i) {
            this.c.setColor(i);
            requestLayout();
        }
    }
}
