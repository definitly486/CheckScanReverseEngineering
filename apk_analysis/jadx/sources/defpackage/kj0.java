package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public final class kj0 implements e47<Bitmap>, g54 {
    public final Bitmap b;
    public final ij0 c;

    public kj0(ij0 ij0Var, Bitmap bitmap) {
        r96.c(bitmap, "Bitmap must not be null");
        this.b = bitmap;
        r96.c(ij0Var, "BitmapPool must not be null");
        this.c = ij0Var;
    }

    public static kj0 b(ij0 ij0Var, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return new kj0(ij0Var, bitmap);
    }

    @Override // defpackage.e47
    public final Class<Bitmap> a() {
        return Bitmap.class;
    }

    @Override // defpackage.e47
    public final Bitmap get() {
        return this.b;
    }

    @Override // defpackage.e47
    public final int getSize() {
        return eb9.c(this.b);
    }

    @Override // defpackage.g54
    public final void initialize() {
        this.b.prepareToDraw();
    }

    @Override // defpackage.e47
    public final void recycle() {
        this.c.c(this.b);
    }
}
