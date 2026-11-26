package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import java.security.MessageDigest;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes3.dex */
public final class ak1 extends lj0 {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(kf4.a);

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // defpackage.lj0
    public final Bitmap c(ij0 ij0Var, Bitmap bitmap, int i, int i2) {
        Paint paint = w19.a;
        int iMin = Math.min(i, i2);
        float f = iMin;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float fMax = Math.max(f / width, f / height);
        float f3 = width * fMax;
        float f4 = fMax * height;
        float f5 = (f - f3) / 2.0f;
        float f6 = (f - f4) / 2.0f;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap bitmapC = w19.c(ij0Var, bitmap);
        Bitmap.Config config = Bitmap.Config.RGBA_F16;
        if (!config.equals(bitmap.getConfig())) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapE = ij0Var.e(iMin, iMin, config);
        bitmapE.setHasAlpha(true);
        Lock lock = w19.d;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmapE);
            canvas.drawCircle(f2, f2, f2, w19.b);
            canvas.drawBitmap(bitmapC, (Rect) null, rectF, w19.c);
            canvas.setBitmap(null);
            lock.unlock();
            if (!bitmapC.equals(bitmap)) {
                ij0Var.c(bitmapC);
            }
            return bitmapE;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        return obj instanceof ak1;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return 1101716364;
    }
}
