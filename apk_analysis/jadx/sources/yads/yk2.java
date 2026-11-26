package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class yk2 implements bu {
    public final sc5 a;
    public final gu b;

    public yk2() {
        sc5 sc5Var = new sc5();
        gu guVar = new gu();
        this.a = sc5Var;
        this.b = guVar;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // yads.bu
    public final boolean a(Drawable drawable, Bitmap bitmap) {
        int intrinsicWidth;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmap2;
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                bitmap2 = bitmapDrawable.getBitmap();
            } else {
                this.a.getClass();
                intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth > 0 || intrinsicHeight <= 0) {
                    bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                } else {
                    bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
                }
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                bitmap2 = bitmapCreateBitmap;
            }
        } else {
            this.a.getClass();
            intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight2 = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0) {
                bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            }
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas2.getWidth(), canvas2.getHeight());
            drawable.draw(canvas2);
            bitmap2 = bitmapCreateBitmap;
        }
        this.b.getClass();
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap2, 1, 1, true);
        this.b.getClass();
        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmap, 1, 1, true);
        int pixel = bitmapCreateScaledBitmap.getPixel(0, 0);
        int iAlpha = Color.alpha(pixel);
        int iRed = Color.red(pixel);
        int iGreen = Color.green(pixel);
        int iBlue = Color.blue(pixel);
        int pixel2 = bitmapCreateScaledBitmap2.getPixel(0, 0);
        return Math.abs(iAlpha - Color.alpha(pixel2)) <= 20 && Math.abs(iRed - Color.red(pixel2)) <= 20 && Math.abs(iGreen - Color.green(pixel2)) <= 20 && Math.abs(iBlue - Color.blue(pixel2)) <= 20;
    }
}
