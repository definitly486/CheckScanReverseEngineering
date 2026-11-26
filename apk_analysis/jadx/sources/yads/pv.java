package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.TypedValue;
import android.view.View;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes4.dex */
public final class pv extends View {
    public final float a;
    public final float b;
    public final Paint c;
    public final Paint d;
    public final Paint e;
    public float f;

    public pv(Context context) {
        super(context);
        this.a = ip0.a(context, 34.0f);
        float fB = defpackage.w65.b(TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics()));
        this.b = fB;
        float fB2 = defpackage.w65.b(TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics()));
        Paint paint = new Paint();
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.c = paint;
        Paint paint2 = new Paint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(fB);
        paint2.setAntiAlias(true);
        this.d = paint2;
        Paint paint3 = new Paint();
        paint3.setStyle(style);
        paint3.setTextSize(fB2);
        paint3.setTextAlign(Paint.Align.CENTER);
        this.e = paint3;
        this.f = 40.0f;
        paint2.setColor(eh6.a(SupportMenu.CATEGORY_MASK, 40.0f));
        paint.setColor(eh6.a(-1, this.f));
        paint3.setColor(eh6.a(SupportMenu.CATEGORY_MASK, this.f));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.a / 2.0f;
        canvas.drawCircle(f, f, f, this.c);
        canvas.drawCircle(f, f, f - (this.b / 2.0f), this.d);
        float f2 = this.a / 2.0f;
        canvas.drawText("!", f2, f2 - ((this.e.ascent() + this.e.descent()) / 2.0f), this.e);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = (int) this.a;
        setMeasuredDimension(i3, i3);
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        float f = z ? 0.0f : 40.0f;
        this.f = f;
        this.d.setColor(eh6.a(SupportMenu.CATEGORY_MASK, f));
        this.c.setColor(eh6.a(-1, this.f));
        this.e.setColor(eh6.a(SupportMenu.CATEGORY_MASK, this.f));
        invalidate();
    }
}
