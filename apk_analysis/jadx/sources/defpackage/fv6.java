package defpackage;

import android.graphics.Bitmap;
import com.google.zxing.WriterException;

/* JADX INFO: loaded from: classes5.dex */
public final class fv6 {
    public static Bitmap a(int i, String str) {
        str.getClass();
        Bitmap bitmapCreateBitmap = null;
        try {
            qi0 qi0VarA = qc4.a(str, qc0.QR_CODE, i, i);
            bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.RGB_565);
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < i; i3++) {
                    bitmapCreateBitmap.getClass();
                    bitmapCreateBitmap.setPixel(i2, i3, qi0VarA.c(i2, i3) ? -16777216 : -1);
                }
            }
        } catch (WriterException unused) {
        }
        return bitmapCreateBitmap;
    }
}
