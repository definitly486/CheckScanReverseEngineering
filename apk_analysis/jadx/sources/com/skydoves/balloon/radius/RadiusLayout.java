package com.skydoves.balloon.radius;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.me0;
import defpackage.n36;
import defpackage.tg5;
import defpackage.u96;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zr;

/* JADX INFO: loaded from: classes4.dex */
public final class RadiusLayout extends FrameLayout {
    public static final /* synthetic */ ze4<Object>[] p;
    public final Path b;
    public final Paint c;
    public final Paint d;
    public Drawable e;
    public boolean f;
    public int g;
    public int h;
    public int i;
    public int j;
    public final n36 k;
    public float l;
    public float m;
    public float n;
    public zr o;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[zr.values().length];
            try {
                iArr[zr.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[zr.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[zr.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[zr.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    static {
        tg5 tg5Var = new tg5(RadiusLayout.class, "radius", "getRadius()F", 0);
        x07.a.getClass();
        p = new ze4[]{tg5Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RadiusLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        setWillNotDraw(false);
        this.b = new Path();
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        this.c = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeJoin(Paint.Join.MITER);
        this.d = paint2;
        this.k = u96.p(this, Float.valueOf(0.0f));
        this.n = 0.5f;
        this.o = zr.BOTTOM;
    }

    private final float getHalfStroke() {
        Paint paint = this.d;
        if (paint.getStrokeWidth() > 0.0f) {
            return paint.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    public final void a() {
        Path path = this.b;
        path.reset();
        if (!this.f || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        float f = this.l * 0.5f;
        float halfStroke = getHalfStroke() + f;
        float halfStroke2 = this.o == zr.START ? halfStroke : getHalfStroke();
        float halfStroke3 = this.o == zr.TOP ? halfStroke : getHalfStroke();
        float width = this.o == zr.END ? getWidth() - halfStroke : getWidth() - getHalfStroke();
        float height = this.o == zr.BOTTOM ? getHeight() - halfStroke : getHeight() - getHalfStroke();
        float fD = kx6.d(getWidth() * this.n, (this.m / 2.0f) + getHalfStroke(), (getWidth() - (this.m / 2.0f)) - getHalfStroke());
        float fD2 = kx6.d(getHeight() * this.n, (this.m / 2.0f) + getHalfStroke(), (getHeight() - (this.m / 2.0f)) - getHalfStroke());
        int i = a.a[this.o.ordinal()];
        if (i == 1) {
            path.moveTo(getRadius() + halfStroke2, height);
            path.lineTo(width - getRadius(), height);
            path.quadTo(width, height, width, height - getRadius());
            path.lineTo(width, getRadius() + halfStroke3);
            path.quadTo(width, halfStroke3, width - getRadius(), halfStroke3);
            path.lineTo((this.m / 2.0f) + fD, halfStroke3);
            path.lineTo(fD, halfStroke3 - f);
            path.lineTo(fD - (this.m / 2.0f), halfStroke3);
            path.lineTo(getRadius() + halfStroke2, halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, halfStroke2, getRadius() + halfStroke3);
            path.lineTo(halfStroke2, height - getRadius());
            path.quadTo(halfStroke2, height, getRadius() + halfStroke2, height);
        } else if (i == 2) {
            path.moveTo(getRadius() + halfStroke2, halfStroke3);
            path.lineTo(width - getRadius(), halfStroke3);
            path.quadTo(width, halfStroke3, width, getRadius() + halfStroke3);
            path.lineTo(width, height - getRadius());
            path.quadTo(width, height, width - getRadius(), height);
            path.lineTo((this.m / 2.0f) + fD, height);
            path.lineTo(fD, f + height);
            path.lineTo(fD - (this.m / 2.0f), height);
            path.lineTo(getRadius() + halfStroke2, height);
            path.quadTo(halfStroke2, height, halfStroke2, height - getRadius());
            path.lineTo(halfStroke2, getRadius() + halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, getRadius() + halfStroke2, halfStroke3);
        } else if (i == 3) {
            path.moveTo(getRadius() + halfStroke2, halfStroke3);
            path.lineTo(width - getRadius(), halfStroke3);
            path.quadTo(width, halfStroke3, width, getRadius() + halfStroke3);
            path.lineTo(width, height - getRadius());
            path.quadTo(width, height, width - getRadius(), height);
            path.lineTo(getRadius() + halfStroke2, height);
            path.quadTo(halfStroke2, height, halfStroke2, height - getRadius());
            path.lineTo(halfStroke2, (this.m / 2.0f) + fD2);
            path.lineTo(halfStroke2 - f, fD2);
            path.lineTo(halfStroke2, fD2 - (this.m / 2.0f));
            path.lineTo(halfStroke2, getRadius() + halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, getRadius() + halfStroke2, halfStroke3);
        } else {
            if (i != 4) {
                me0.e();
                return;
            }
            path.moveTo(getRadius() + halfStroke2, halfStroke3);
            path.lineTo(width - getRadius(), halfStroke3);
            path.quadTo(width, halfStroke3, width, getRadius() + halfStroke3);
            path.lineTo(width, fD2 - (this.m / 2.0f));
            path.lineTo(f + width, fD2);
            path.lineTo(width, (this.m / 2.0f) + fD2);
            path.lineTo(width, height - getRadius());
            path.quadTo(width, height, width - getRadius(), height);
            path.lineTo(getRadius() + halfStroke2, height);
            path.quadTo(halfStroke2, height, halfStroke2, height - getRadius());
            path.lineTo(halfStroke2, getRadius() + halfStroke3);
            path.quadTo(halfStroke2, halfStroke3, getRadius() + halfStroke2, halfStroke3);
        }
        path.close();
        invalidate();
    }

    public final void b() {
        if (this.f) {
            float halfStroke = (this.l * 0.5f) + getHalfStroke();
            int i = this.g;
            zr zrVar = this.o;
            super.setPadding(i + (zrVar == zr.START ? (int) halfStroke : 0), this.h + (zrVar == zr.TOP ? (int) halfStroke : 0), this.i + (zrVar == zr.END ? (int) halfStroke : 0), this.j + (zrVar == zr.BOTTOM ? (int) halfStroke : 0));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        canvas.getClass();
        if (this.f) {
            Path path = this.b;
            if (!path.isEmpty()) {
                int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null);
                Paint paint = this.d;
                if (paint.getStrokeWidth() > 0.0f) {
                    canvas.drawPath(path, paint);
                }
                canvas.clipPath(path);
                Drawable drawable = this.e;
                if (drawable == null) {
                    canvas.drawPath(path, this.c);
                } else if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.dispatchDraw(canvas);
                canvas.restoreToCount(iSaveLayer);
                return;
            }
        }
        super.dispatchDraw(canvas);
    }

    public final float getArrowHeight() {
        return this.l;
    }

    public final zr getArrowOrientation() {
        return this.o;
    }

    public final float getArrowPositionRatio() {
        return this.n;
    }

    public final float getArrowWidth() {
        return this.m;
    }

    public final Drawable getCustomShapeBackgroundDrawable() {
        return this.e;
    }

    public final boolean getDrawCustomShape() {
        return this.f;
    }

    public final float getRadius() {
        ze4<Object> ze4Var = p[0];
        n36 n36Var = this.k;
        n36Var.getClass();
        ze4Var.getClass();
        return ((Number) n36Var.d).floatValue();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Path path = this.b;
        path.rewind();
        path.addRoundRect(new RectF(0.0f, 0.0f, i, i2), getRadius(), getRadius(), Path.Direction.CW);
        if (this.f) {
            a();
            b();
            Drawable drawable = this.e;
            if (drawable != null) {
                drawable.setBounds(0, 0, i, i2);
            }
            requestLayout();
        }
    }

    public final void setArrowHeight(float f) {
        if (this.l == f) {
            return;
        }
        this.l = f;
        if (this.f) {
            a();
        }
        if (this.f) {
            b();
        }
    }

    public final void setArrowOrientation(zr zrVar) {
        zrVar.getClass();
        if (this.o != zrVar) {
            this.o = zrVar;
            if (this.f) {
                a();
            }
            if (this.f) {
                b();
            }
        }
    }

    public final void setArrowPositionRatio(float f) {
        if (this.n == f) {
            return;
        }
        this.n = f;
        if (this.f) {
            a();
        }
    }

    public final void setArrowWidth(float f) {
        if (this.m == f) {
            return;
        }
        this.m = f;
        if (this.f) {
            a();
        }
    }

    public final void setCustomShapeBackgroundDrawable(Drawable drawable) {
        if (aa4.e(this.e, drawable)) {
            return;
        }
        this.e = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getHeight());
        }
        invalidate();
    }

    public final void setDrawCustomShape(boolean z) {
        if (this.f != z) {
            this.f = z;
            setWillNotDraw(!z);
            invalidate();
        }
    }

    public final void setFillColor(int i) {
        this.c.setColor(i);
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.g = i;
        this.h = i2;
        this.i = i3;
        this.j = i4;
        if (this.f) {
            b();
        } else {
            super.setPadding(i, i2, i3, i4);
        }
    }

    public final void setRadius(float f) {
        this.k.a(this, p[0], Float.valueOf(f));
    }

    public final void setStroke(float f, int i) {
        Paint paint = this.d;
        paint.setStrokeWidth(f * 1.5f);
        paint.setColor(i);
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RadiusLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RadiusLayout(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ RadiusLayout(Context context, AttributeSet attributeSet, int i, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
