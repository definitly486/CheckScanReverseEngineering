package defpackage;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class s81 extends lj0 {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(kf4.a);

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // defpackage.lj0
    public final Bitmap c(ij0 ij0Var, Bitmap bitmap, int i, int i2) {
        float width;
        float fB;
        Paint paint = w19.a;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float fB2 = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = i2 / bitmap.getHeight();
            fB2 = n7.b(bitmap.getWidth(), width, i, 0.5f);
            fB = 0.0f;
        } else {
            width = i / bitmap.getWidth();
            fB = n7.b(bitmap.getHeight(), width, i2, 0.5f);
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (fB2 + 0.5f), (int) (fB + 0.5f));
        Bitmap bitmapE = ij0Var.e(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapE.setHasAlpha(bitmap.hasAlpha());
        w19.a(bitmap, bitmapE, matrix);
        return bitmapE;
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        return obj instanceof s81;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return -599754482;
    }
}
