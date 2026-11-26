package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.a;

/* JADX INFO: loaded from: classes3.dex */
public abstract class lj0 implements s19<Bitmap> {
    @Override // defpackage.s19
    public final e47<Bitmap> b(Context context, e47<Bitmap> e47Var, int i, int i2) {
        if (!eb9.j(i, i2)) {
            fg.c(ln.c(i, i2, "Cannot apply transformation on width: ", " or height: ", " less than or equal to zero and not Target.SIZE_ORIGINAL"));
            return null;
        }
        ij0 ij0Var = a.a(context).b;
        Bitmap bitmap = e47Var.get();
        if (i == Integer.MIN_VALUE) {
            i = bitmap.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(ij0Var, bitmap, i, i2);
        return bitmap.equals(bitmapC) ? e47Var : kj0.b(ij0Var, bitmapC);
    }

    public abstract Bitmap c(ij0 ij0Var, Bitmap bitmap, int i, int i2);
}
