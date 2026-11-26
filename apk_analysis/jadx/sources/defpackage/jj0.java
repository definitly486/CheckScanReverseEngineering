package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public class jj0 implements ij0 {
    @Override // defpackage.ij0
    public final void a(int i) {
    }

    @Override // defpackage.ij0
    public final void b() {
    }

    @Override // defpackage.ij0
    public void c(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // defpackage.ij0
    public final Bitmap d(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // defpackage.ij0
    public final Bitmap e(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }
}
