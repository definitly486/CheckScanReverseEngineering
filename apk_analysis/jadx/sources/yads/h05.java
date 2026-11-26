package yads;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes6.dex */
public final class h05 {
    public final Bitmap a(Bitmap bitmap, rd3 rd3Var) {
        if (bitmap.getWidth() != 0 && bitmap.getHeight() != 0 && rd3Var.a != 0 && rd3Var.b != 0) {
            if (bitmap.getWidth() * rd3Var.b != bitmap.getHeight() * rd3Var.a) {
                ql5 ql5Var = new ql5(bitmap.getWidth(), bitmap.getHeight());
                if (bitmap.getWidth() != 0 && bitmap.getHeight() != 0 && rd3Var.a != 0 && rd3Var.b != 0) {
                    defpackage.x74 it = new defpackage.y74(bitmap.getWidth(), Math.max(bitmap.getWidth(), Math.min(100, (rd3Var.a * 100) / rd3Var.b)), 1).iterator();
                    double d = 1.0d;
                    while (it.d) {
                        int iNextInt = it.nextInt();
                        int i = rd3Var.b * iNextInt;
                        int i2 = rd3Var.a;
                        if (i % i2 == 0) {
                            ql5Var = new ql5(iNextInt, i / i2);
                            break;
                        }
                        double d2 = ((double) i) / ((double) i2);
                        int iA = defpackage.w65.a(d2);
                        double dAbs = Math.abs(((double) iA) - d2) / d2;
                        if (dAbs < d) {
                            ql5Var = new ql5(iNextInt, iA);
                            d = dAbs;
                        }
                    }
                }
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int i3 = ql5Var.b;
                ql5 ql5Var2 = new ql5(i3, (i3 * height) / width);
                int i4 = ql5Var.c;
                ql5 ql5Var3 = (ql5) defpackage.pp1.c(ql5Var2, new ql5((width * i4) / height, i4));
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, ql5Var3.b, ql5Var3.c, false);
                int width2 = (bitmapCreateScaledBitmap.getWidth() - ql5Var.b) / 2;
                int height2 = bitmapCreateScaledBitmap.getHeight();
                int i5 = ql5Var.c;
                return Bitmap.createBitmap(bitmapCreateScaledBitmap, width2, (height2 - i5) / 2, ql5Var.b, i5, (Matrix) null, false);
            }
        }
        return bitmap;
    }
}
