package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.ReplaceWith;
import defpackage.fg;

/* JADX INFO: loaded from: classes2.dex */
public final class BitmapCompat {

    public static class Api27Impl {
        private Api27Impl() {
        }

        public static Bitmap copyBitmapIfHardware(Bitmap bitmap) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                return bitmap;
            }
            Bitmap.Config hardwareBitmapConfig = Bitmap.Config.ARGB_8888;
            if (Build.VERSION.SDK_INT >= 31) {
                hardwareBitmapConfig = Api31Impl.getHardwareBitmapConfig(bitmap);
            }
            return bitmap.copy(hardwareBitmapConfig, true);
        }

        public static Bitmap createBitmapWithSourceColorspace(int i, int i2, Bitmap bitmap, boolean z) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config = Api31Impl.getHardwareBitmapConfig(bitmap);
                }
            }
            return Bitmap.createBitmap(i, i2, config, bitmap.hasAlpha(), colorSpace);
        }

        public static boolean isAlreadyF16AndLinear(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }
    }

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static void setPaintBlendMode(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }
    }

    public static class Api31Impl {
        private Api31Impl() {
        }

        public static Bitmap.Config getHardwareBitmapConfig(Bitmap bitmap) {
            return bitmap.getHardwareBuffer().getFormat() == 22 ? Bitmap.Config.RGBA_F16 : Bitmap.Config.ARGB_8888;
        }
    }

    private BitmapCompat() {
    }

    public static Bitmap createScaledBitmap(Bitmap bitmap, int i, int i2, Rect rect, boolean z) {
        Paint paint;
        int i3;
        boolean z2;
        char c;
        if (i <= 0 || i2 <= 0) {
            fg.c("dstW and dstH must be > 0!");
            return null;
        }
        if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
            fg.c("srcRect must be contained by srcBm!");
            return null;
        }
        int i4 = Build.VERSION.SDK_INT;
        Bitmap bitmapCopyBitmapIfHardware = i4 >= 27 ? Api27Impl.copyBitmapIfHardware(bitmap) : bitmap;
        int iWidth = rect != null ? rect.width() : bitmap.getWidth();
        int iHeight = rect != null ? rect.height() : bitmap.getHeight();
        float f = i / iWidth;
        float f2 = i2 / iHeight;
        int i5 = rect != null ? rect.left : 0;
        int i6 = rect != null ? rect.top : 0;
        if (i5 == 0 && i6 == 0 && i == bitmap.getWidth() && i2 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == bitmapCopyBitmapIfHardware) ? bitmap.copy(bitmap.getConfig(), true) : bitmapCopyBitmapIfHardware;
        }
        Paint paint2 = new Paint(1);
        paint2.setFilterBitmap(true);
        Bitmap bitmap2 = null;
        if (i4 >= 29) {
            Api29Impl.setPaintBlendMode(paint2);
        } else {
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        if (iWidth == i && iHeight == i2) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, bitmapCopyBitmapIfHardware.getConfig());
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCopyBitmapIfHardware, -i5, -i6, paint2);
            return bitmapCreateBitmap;
        }
        double dLog = Math.log(2.0d);
        int iCeil = (int) (f > 1.0f ? Math.ceil(Math.log(f) / dLog) : Math.floor(Math.log(f) / dLog));
        int iCeil2 = (int) (f2 > 1.0f ? Math.ceil(Math.log(f2) / dLog) : Math.floor(Math.log(f2) / dLog));
        if (!z || i4 < 27 || Api27Impl.isAlreadyF16AndLinear(bitmap)) {
            paint = paint2;
            i3 = 0;
        } else {
            Bitmap bitmapCreateBitmapWithSourceColorspace = Api27Impl.createBitmapWithSourceColorspace(iCeil > 0 ? sizeAtStep(iWidth, i, 1, iCeil) : iWidth, iCeil2 > 0 ? sizeAtStep(iHeight, i2, 1, iCeil2) : iHeight, bitmap, true);
            paint = paint2;
            new Canvas(bitmapCreateBitmapWithSourceColorspace).drawBitmap(bitmapCopyBitmapIfHardware, -i5, -i6, paint);
            bitmap2 = bitmapCopyBitmapIfHardware;
            i6 = 0;
            i5 = 0;
            bitmapCopyBitmapIfHardware = bitmapCreateBitmapWithSourceColorspace;
            i3 = 1;
        }
        Rect rect2 = new Rect(i5, i6, iWidth, iHeight);
        Rect rect3 = new Rect();
        Bitmap bitmap3 = bitmapCopyBitmapIfHardware;
        int i7 = iCeil;
        Bitmap bitmapCreateBitmap2 = bitmap2;
        int i8 = iCeil2;
        while (true) {
            if (i7 == 0 && i8 == 0) {
                break;
            }
            if (i7 < 0) {
                i7++;
            } else if (i7 > 0) {
                i7--;
            }
            if (i8 < 0) {
                i8++;
            } else if (i8 > 0) {
                i8--;
            }
            int i9 = i8;
            int i10 = i3;
            i8 = i9;
            rect3.set(0, 0, sizeAtStep(iWidth, i, i7, iCeil), sizeAtStep(iHeight, i2, i9, iCeil2));
            boolean z3 = i7 == 0 && i8 == 0;
            boolean z4 = bitmapCreateBitmap2 != null && bitmapCreateBitmap2.getWidth() == i && bitmapCreateBitmap2.getHeight() == i2;
            if (bitmapCreateBitmap2 == null || bitmapCreateBitmap2 == bitmap) {
                z2 = z3;
            } else {
                if (z) {
                    z2 = z3;
                    if (Build.VERSION.SDK_INT < 27 || Api27Impl.isAlreadyF16AndLinear(bitmapCreateBitmap2)) {
                    }
                    new Canvas(bitmapCreateBitmap2).drawBitmap(bitmap3, rect2, rect3, paint);
                    rect2.set(rect3);
                    Bitmap bitmap4 = bitmap3;
                    bitmap3 = bitmapCreateBitmap2;
                    bitmapCreateBitmap2 = bitmap4;
                    i3 = i10;
                } else {
                    z2 = z3;
                }
                if (!z2 || (z4 && i10 == 0)) {
                    c = 27;
                }
                new Canvas(bitmapCreateBitmap2).drawBitmap(bitmap3, rect2, rect3, paint);
                rect2.set(rect3);
                Bitmap bitmap5 = bitmap3;
                bitmap3 = bitmapCreateBitmap2;
                bitmapCreateBitmap2 = bitmap5;
                i3 = i10;
            }
            if (bitmapCreateBitmap2 != bitmap && bitmapCreateBitmap2 != null) {
                bitmapCreateBitmap2.recycle();
            }
            int iSizeAtStep = sizeAtStep(iWidth, i, i7 > 0 ? i10 : i7, iCeil);
            int iSizeAtStep2 = sizeAtStep(iHeight, i2, i8 > 0 ? i10 : i8, iCeil2);
            c = 27;
            if (Build.VERSION.SDK_INT >= 27) {
                bitmapCreateBitmap2 = Api27Impl.createBitmapWithSourceColorspace(iSizeAtStep, iSizeAtStep2, bitmap, z && !z2);
            } else {
                bitmapCreateBitmap2 = Bitmap.createBitmap(iSizeAtStep, iSizeAtStep2, bitmap3.getConfig());
            }
            new Canvas(bitmapCreateBitmap2).drawBitmap(bitmap3, rect2, rect3, paint);
            rect2.set(rect3);
            Bitmap bitmap6 = bitmap3;
            bitmap3 = bitmapCreateBitmap2;
            bitmapCreateBitmap2 = bitmap6;
            i3 = i10;
        }
        if (bitmapCreateBitmap2 != bitmap && bitmapCreateBitmap2 != null) {
            bitmapCreateBitmap2.recycle();
        }
        return bitmap3;
    }

    @ReplaceWith(expression = "bitmap.getAllocationByteCount()")
    @Deprecated
    public static int getAllocationByteCount(Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    @ReplaceWith(expression = "bitmap.hasMipMap()")
    @Deprecated
    public static boolean hasMipMap(Bitmap bitmap) {
        return bitmap.hasMipMap();
    }

    @ReplaceWith(expression = "bitmap.setHasMipMap(hasMipMap)")
    @Deprecated
    public static void setHasMipMap(Bitmap bitmap, boolean z) {
        bitmap.setHasMipMap(z);
    }

    public static int sizeAtStep(int i, int i2, int i3, int i4) {
        if (i3 == 0) {
            return i2;
        }
        return i3 > 0 ? i * (1 << (i4 - i3)) : i2 << ((-i3) - 1);
    }
}
