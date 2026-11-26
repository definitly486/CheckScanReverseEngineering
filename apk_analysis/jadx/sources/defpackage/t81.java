package defpackage;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.Log;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class t81 extends lj0 {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(kf4.a);

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // defpackage.lj0
    public final Bitmap c(ij0 ij0Var, Bitmap bitmap, int i, int i2) {
        Paint paint = w19.a;
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return w19.b(ij0Var, bitmap, i, i2);
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        return obj instanceof t81;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return -670243078;
    }
}
