package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;

/* JADX INFO: loaded from: classes3.dex */
public final class fs2 implements u83 {
    public final Drawable a;
    public final zz5 b;

    public static final class a implements u83.a<Drawable> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            return new fs2((Drawable) obj, zz5Var);
        }
    }

    public fs2(Drawable drawable, zz5 zz5Var) {
        this.a = drawable;
        this.b = zz5Var;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        Bitmap.Config[] configArr = sb9.a;
        Drawable bitmapDrawable = this.a;
        boolean z = (bitmapDrawable instanceof VectorDrawable) || (bitmapDrawable instanceof VectorDrawableCompat);
        if (z) {
            zz5 zz5Var = this.b;
            Bitmap.Config configA = f24.a(zz5Var);
            t18 t18Var = zz5Var.b;
            boolean z2 = true;
            md7 md7Var = zz5Var.c;
            t18 t18Var2 = (t18) c53.b(zz5Var, d24.b);
            if (zz5Var.d != re6.INEXACT) {
                z2 = false;
            }
            bitmapDrawable = new BitmapDrawable(zz5Var.a.getResources(), ss2.a(bitmapDrawable, configA, t18Var, md7Var, t18Var2, z2));
        }
        return new k14(n24.b(bitmapDrawable), z, z82.MEMORY);
    }
}
