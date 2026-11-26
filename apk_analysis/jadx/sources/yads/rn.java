package yads;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public final class rn {
    public final DisplayMetrics a;
    public final o92 b;
    public final h92 c;
    public final Canvas d;
    public final fs2 e;
    public final Paint f;
    public final float[] g;

    public rn(DisplayMetrics displayMetrics, o92 o92Var, h92 h92Var, Canvas canvas, fs2 fs2Var) {
        as2 as2Var;
        this.a = displayMetrics;
        this.b = o92Var;
        this.c = h92Var;
        this.d = canvas;
        this.e = fs2Var;
        Paint paint = new Paint();
        this.f = paint;
        if (o92Var == null) {
            this.g = null;
            return;
        }
        as2 as2Var2 = o92Var.a;
        float fA = uq.a(as2Var2 != null ? (Long) as2Var2.a(fs2Var) : null, displayMetrics);
        this.g = new float[]{fA, fA, fA, fA, fA, fA, fA, fA};
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(n51.a(o92Var.b, fs2Var, displayMetrics));
        l42 l42Var = o92Var.b;
        if (l42Var == null || (as2Var = l42Var.a) == null) {
            return;
        }
        paint.setColor(((Number) as2Var.a(fs2Var)).intValue());
    }

    public final void a(float[] fArr, float f, float f2, float f3, float f4) {
        RectF rectF = new RectF();
        rectF.set(f, f2, f3, f4);
        h92 h92Var = this.c;
        Object objA = h92Var != null ? h92Var.a() : null;
        if (objA instanceof t22) {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(((Number) ((t22) objA).a.a(this.e)).intValue());
            Canvas canvas = this.d;
            Path path = new Path();
            path.reset();
            if (fArr == null) {
                path.addRect(rectF, Path.Direction.CW);
            } else {
                path.addRoundRect(rectF, fArr, Path.Direction.CW);
            }
            path.close();
            canvas.drawPath(path, paint);
        }
        o92 o92Var = this.b;
        if ((o92Var != null ? o92Var.b : null) == null) {
            return;
        }
        RectF rectF2 = new RectF();
        l42 l42Var = this.b.b;
        l42Var.getClass();
        float fA = n51.a(l42Var, this.e, this.a) / 2.0f;
        rectF2.set(Math.max(0.0f, f + fA), Math.max(0.0f, f2 + fA), Math.max(0.0f, f3 - fA), Math.max(0.0f, f4 - fA));
        float[] fArr2 = fArr != null ? (float[]) fArr.clone() : null;
        if (fArr2 != null) {
            int length = fArr2.length;
            for (int i = 0; i < length; i++) {
                fArr2[i] = Math.max(0.0f, fArr[i] - fA);
            }
        }
        Canvas canvas2 = this.d;
        Path path2 = new Path();
        path2.reset();
        if (fArr2 == null) {
            path2.addRect(rectF2, Path.Direction.CW);
        } else {
            path2.addRoundRect(rectF2, fArr2, Path.Direction.CW);
        }
        path2.close();
        canvas2.drawPath(path2, this.f);
    }
}
