package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes4.dex */
public abstract class pha {
    public static void a(float f, int i, Paint paint, Canvas canvas) {
        float f2 = 3.0f * f;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setColor(-2013265920);
        float f3 = i;
        canvas.drawOval(new RectF(0.0f, 0.0f, f3, f3), paint2);
        Paint paint3 = new Paint();
        paint3.setAntiAlias(true);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setStrokeWidth(f2);
        paint3.setColor(-1);
        float f4 = f3 / 2.0f;
        canvas.drawCircle(f4, f4, f4 - (f2 / 2.0f), paint3);
        paint.setStrokeWidth(f2);
        paint.setColor(-1);
        paint.setAntiAlias(true);
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        float f5 = 23.0f * f;
        float f6 = 38.0f * f;
        path.moveTo(f5, f6);
        float f7 = 60.0f * f;
        path.lineTo(f5, f7);
        path.lineTo(f6, f7);
        path.lineTo(f6, f6);
        float f8 = 56.0f * f;
        path.lineTo(f8, 27.0f * f);
        path.lineTo(f8, f * 71.0f);
        path.lineTo(f6, f7);
        path.moveTo(f6, f6);
        path.lineTo(f5, f6);
        path.close();
        canvas.drawPath(path, paint);
    }
}
