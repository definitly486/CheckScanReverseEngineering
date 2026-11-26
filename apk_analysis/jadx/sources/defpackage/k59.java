package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public final class k59 implements i47<Bitmap, Bitmap> {

    public static final class a implements e47<Bitmap> {
        public final Bitmap b;

        public a(Bitmap bitmap) {
            this.b = bitmap;
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

        @Override // defpackage.e47
        public final void recycle() {
        }
    }

    @Override // defpackage.i47
    public final e47<Bitmap> a(Bitmap bitmap, int i, int i2, xz5 xz5Var) {
        return new a(bitmap);
    }

    @Override // defpackage.i47
    public final boolean b(Bitmap bitmap, xz5 xz5Var) {
        return true;
    }
}
