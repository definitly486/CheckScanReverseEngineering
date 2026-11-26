package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: loaded from: classes3.dex */
public final class dl4 implements e47<BitmapDrawable>, g54 {
    public final Resources b;
    public final e47<Bitmap> c;

    public dl4(Resources resources, e47<Bitmap> e47Var) {
        r96.c(resources, "Argument must not be null");
        this.b = resources;
        r96.c(e47Var, "Argument must not be null");
        this.c = e47Var;
    }

    @Override // defpackage.e47
    public final Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override // defpackage.e47
    public final BitmapDrawable get() {
        return new BitmapDrawable(this.b, this.c.get());
    }

    @Override // defpackage.e47
    public final int getSize() {
        return this.c.getSize();
    }

    @Override // defpackage.g54
    public final void initialize() {
        e47<Bitmap> e47Var = this.c;
        if (e47Var instanceof g54) {
            ((g54) e47Var).initialize();
        }
    }

    @Override // defpackage.e47
    public final void recycle() {
        this.c.recycle();
    }
}
