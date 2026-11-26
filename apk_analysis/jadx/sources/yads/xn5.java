package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class xn5 {
    public final Matrix a = new Matrix();
    public final Paint b;
    public final Rect c;

    public xn5() {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor("#2E7D32"));
        paint.setStrokeWidth(10.0f);
        this.b = paint;
        this.c = new Rect();
    }

    public final void a(ImageView imageView, Bitmap bitmap, rn5 rn5Var) {
        float f;
        float fFloatValue;
        Float fValueOf;
        float fFloatValue2;
        float width = imageView.getWidth();
        float height = imageView.getHeight();
        float width2 = bitmap.getWidth();
        float height2 = bitmap.getHeight();
        Float fValueOf2 = Float.valueOf(0.0f);
        if (height == 0.0f || height2 == 0.0f) {
            return;
        }
        boolean z = width / height > width2 / height2;
        float f2 = z ? width / width2 : height / height2;
        float f3 = width2 * f2;
        float f4 = height2 * f2;
        if (z) {
            fFloatValue = 0.0f;
            f = 0.0f;
        } else {
            f = 0.0f;
            fFloatValue = (width / 2.0f) - (((rn5Var.c / 2) + rn5Var.a) * f2);
            if (fFloatValue > 0.0f) {
                fValueOf = fValueOf2;
            } else {
                fValueOf = fFloatValue + f3 < width ? Float.valueOf(width - f3) : null;
            }
            if (fValueOf != null) {
                fFloatValue = fValueOf.floatValue();
            }
        }
        if (z) {
            float f5 = (height / 2.0f) - (((rn5Var.d / 2) + rn5Var.b) * f2);
            if (f5 <= f) {
                fValueOf2 = f5 + f4 < height ? Float.valueOf(height - f4) : null;
            }
            fFloatValue2 = fValueOf2 != null ? fValueOf2.floatValue() : f5;
        } else {
            fFloatValue2 = f;
        }
        this.a.setScale(f2, f2);
        this.a.postTranslate(fFloatValue, fFloatValue2);
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageMatrix(this.a);
        if (((av3) bv3.a(imageView.getContext(), "YadPreferenceFile")).a("preference_smart_centers_debug_enabled", false)) {
            Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
            Canvas canvas = new Canvas(bitmapCopy);
            Rect rect = this.c;
            int i = rn5Var.a;
            int i2 = rn5Var.b;
            rect.set(i, i2, rn5Var.c + i, rn5Var.d + i2);
            canvas.drawRect(rect, this.b);
            imageView.setImageBitmap(bitmapCopy);
        }
    }
}
