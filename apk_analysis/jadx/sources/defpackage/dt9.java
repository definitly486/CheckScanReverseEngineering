package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import androidx.core.graphics.PathParser;

/* JADX INFO: loaded from: classes4.dex */
public abstract class dt9 {
    public static Bitmap a(Context context, int i, int i2, String str) {
        Bitmap bitmapCreateBitmap;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused) {
            y14.r(null, "BaseResources: Cannot build icon - OOME");
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            return null;
        }
        Path pathCreatePathFromPathData = PathParser.createPathFromPathData(str);
        pathCreatePathFromPathData.setFillType(Path.FillType.EVEN_ODD);
        RectF rectF = new RectF();
        pathCreatePathFromPathData.computeBounds(rectF, true);
        Matrix matrix = new Matrix();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        matrix.postTranslate(-rectF.left, -rectF.top);
        float f = displayMetrics.density;
        matrix.postScale(f, f);
        float f2 = i;
        matrix.postTranslate((f2 - (rectF.width() * f)) / 2.0f, (f2 - (rectF.height() * f)) / 2.0f);
        pathCreatePathFromPathData.transform(matrix);
        Paint paint = new Paint();
        paint.setColor(i2);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        new Canvas(bitmapCreateBitmap).drawPath(pathCreatePathFromPathData, paint);
        return bitmapCreateBitmap;
    }
}
