package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class wc5 extends Drawable {
    public Bitmap d;
    public boolean g;
    public float j;
    public float k;
    public vc5 a = vc5.NO_SCALE;
    public tc5 b = tc5.LEFT;
    public uc5 c = uc5.TOP;
    public final Paint e = new Paint(3);
    public final Matrix f = new Matrix();
    public float h = 1.0f;
    public float i = 1.0f;

    /* JADX WARN: Code duplicated, block: B:38:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x009b  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a1  */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int iOrdinal;
        float f4;
        float f5;
        canvas.save();
        Bitmap bitmap = this.d;
        int width = bitmap != null ? bitmap.getWidth() : 0;
        Bitmap bitmap2 = this.d;
        int height = bitmap2 != null ? bitmap2.getHeight() : 0;
        if (height <= 0 || width <= 0) {
            Bitmap bitmap3 = this.d;
            if (bitmap3 != null) {
                canvas.drawBitmap(bitmap3, this.f, this.e);
            }
            canvas.restore();
            return;
        }
        if (this.g) {
            float fWidth = getBounds().width();
            float fHeight = getBounds().height();
            float f6 = width;
            this.h = fWidth / f6;
            float f7 = height;
            this.i = fHeight / f7;
            int iOrdinal2 = this.a.ordinal();
            if (iOrdinal2 == 0) {
                this.h = 1.0f;
                this.i = 1.0f;
            } else if (iOrdinal2 == 1) {
                float f8 = this.h;
                float f9 = this.i;
                if (f8 > f9) {
                    f8 = f9;
                }
                this.h = f8;
                this.i = f8;
            } else if (iOrdinal2 == 2) {
                float f10 = this.h;
                float f11 = this.i;
                if (f10 < f11) {
                    f10 = f11;
                }
                this.h = f10;
                this.i = f10;
            }
            float f12 = f6 * this.h;
            float f13 = f7 * this.i;
            int iOrdinal3 = this.b.ordinal();
            float f14 = 0.0f;
            if (iOrdinal3 != 1) {
                if (iOrdinal3 != 2) {
                    f3 = 0.0f;
                } else {
                    f = fWidth - f12;
                    f2 = this.h;
                }
                this.j = f3;
                iOrdinal = this.c.ordinal();
                if (iOrdinal != 1) {
                    if (iOrdinal == 2) {
                        f4 = fHeight - f13;
                        f5 = this.i;
                    }
                    this.k = f14;
                    this.g = false;
                } else {
                    f4 = (fHeight - f13) / 2.0f;
                    f5 = this.i;
                }
                f14 = f4 / f5;
                this.k = f14;
                this.g = false;
            } else {
                f = (fWidth - f12) / 2.0f;
                f2 = this.h;
            }
            f3 = f / f2;
            this.j = f3;
            iOrdinal = this.c.ordinal();
            if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    f4 = fHeight - f13;
                    f5 = this.i;
                }
                this.k = f14;
                this.g = false;
            } else {
                f4 = (fHeight - f13) / 2.0f;
                f5 = this.i;
            }
            f14 = f4 / f5;
            this.k = f14;
            this.g = false;
        }
        canvas.scale(this.h, this.i);
        canvas.translate(this.j, this.k);
        Bitmap bitmap4 = this.d;
        if (bitmap4 != null) {
            canvas.drawBitmap(bitmap4, this.f, this.e);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.e.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.g = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.e.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
