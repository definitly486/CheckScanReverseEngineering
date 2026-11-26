package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes3.dex */
public final class ss2 {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
    
        if (r3 == 1.0d) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap a(Drawable drawable, Bitmap.Config config, t18 t18Var, md7 md7Var, t18 t18Var2, boolean z) {
        Bitmap.Config config2 = config;
        md7 md7Var2 = md7Var;
        t18 t18Var3 = t18Var2;
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap.getConfig() == ((config2 == null || config2 == Bitmap.Config.HARDWARE) ? Bitmap.Config.ARGB_8888 : config2)) {
                if (!z) {
                    long jA = rd2.a(bitmap.getWidth(), bitmap.getHeight(), t18Var, md7Var2, t18Var3);
                    double dB = rd2.b(bitmap.getWidth(), bitmap.getHeight(), (int) (jA >> 32), (int) (jA & MuxerUtil.UNSIGNED_INT_MAX_VALUE), md7Var, t18Var3);
                    md7Var2 = md7Var;
                    t18Var3 = t18Var3;
                }
                return bitmap;
            }
        }
        Drawable drawableMutate = drawable.mutate();
        int iB = sb9.b(drawableMutate);
        if (iB <= 0) {
            iB = 512;
        }
        int iA = sb9.a(drawableMutate);
        int i = iA > 0 ? iA : 512;
        long jA2 = rd2.a(iB, i, t18Var, md7Var2, t18Var3);
        int i2 = i;
        int i3 = iB;
        double dB2 = rd2.b(i3, i2, (int) (jA2 >> 32), (int) (jA2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE), md7Var2, t18Var3);
        int iA2 = w65.a(((double) i3) * dB2);
        int iA3 = w65.a(dB2 * ((double) i2));
        if (config2 == null || config2 == Bitmap.Config.HARDWARE) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iA2, iA3, config2);
        Rect bounds = drawableMutate.getBounds();
        int i4 = bounds.left;
        int i5 = bounds.top;
        int i6 = bounds.right;
        int i7 = bounds.bottom;
        drawableMutate.setBounds(0, 0, iA2, iA3);
        drawableMutate.draw(new Canvas(bitmapCreateBitmap));
        drawableMutate.setBounds(i4, i5, i6, i7);
        return bitmapCreateBitmap;
    }
}
