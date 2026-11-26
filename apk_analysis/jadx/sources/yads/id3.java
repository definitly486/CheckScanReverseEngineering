package yads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class id3 extends r75 {
    public static final Object y = new Object();
    public final Object s;
    public tc3 t;
    public final Bitmap.Config u;
    public final int v;
    public final int w;
    public final ImageView.ScaleType x;

    public id3(String str, tc3 tc3Var, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, uc3 uc3Var) {
        super(0, str, uc3Var);
        this.s = new Object();
        this.o = new am0(1000, 2.0f, 2);
        this.t = tc3Var;
        this.u = config;
        this.v = i;
        this.w = i2;
        this.x = scaleType;
    }

    public static int a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i != 0 || i2 != 0) {
            if (scaleType != ImageView.ScaleType.FIT_XY) {
                if (i == 0) {
                    return (int) (((double) i3) * (((double) i2) / ((double) i4)));
                }
                if (i2 == 0) {
                    return i;
                }
                double d = ((double) i4) / ((double) i3);
                if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                    double d2 = i2;
                    return ((double) i) * d < d2 ? (int) (d2 / d) : i;
                }
                double d3 = i2;
                return ((double) i) * d > d3 ? (int) (d3 / d) : i;
            }
            if (i != 0) {
                return i;
            }
        }
        return i3;
    }

    public final z85 b(en4 en4Var) {
        Bitmap bitmapCreateScaledBitmap;
        byte[] bArr = en4Var.b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.v == 0 && this.w == 0) {
            options.inPreferredConfig = this.u;
            bitmapCreateScaledBitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int iA = a(this.v, this.w, i, i2, this.x);
            int iA2 = a(this.w, this.v, i2, i, this.x);
            options.inJustDecodeBounds = false;
            float f = 1.0f;
            while (true) {
                float f2 = 2.0f * f;
                if (f2 > Math.min(((double) i) / ((double) iA), ((double) i2) / ((double) iA2))) {
                    break;
                }
                f = f2;
            }
            options.inSampleSize = (int) f;
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray == null || (bitmapDecodeByteArray.getWidth() <= iA && bitmapDecodeByteArray.getHeight() <= iA2)) {
                bitmapCreateScaledBitmap = bitmapDecodeByteArray;
            } else {
                bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iA, iA2, true);
                bitmapDecodeByteArray.recycle();
            }
        }
        return bitmapCreateScaledBitmap == null ? new z85(new rs4(en4Var)) : new z85(bitmapCreateScaledBitmap, pa3.a(en4Var));
    }

    @Override // yads.r75
    public final int f() {
        return 1;
    }

    @Override // yads.r75
    public final void a(Object obj) {
        tc3 tc3Var;
        Bitmap bitmap = (Bitmap) obj;
        synchronized (this.s) {
            tc3Var = this.t;
        }
        if (tc3Var != null) {
            tc3Var.a(bitmap);
        }
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        z85 z85VarB;
        synchronized (y) {
            try {
                try {
                    z85VarB = b(en4Var);
                } catch (OutOfMemoryError e) {
                    int length = en4Var.b.length;
                    boolean z = li6.a;
                    return new z85(new rs4(e));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z85VarB;
    }

    @Override // yads.r75
    public final void a() {
        super.a();
        synchronized (this.s) {
            this.t = null;
        }
    }
}
