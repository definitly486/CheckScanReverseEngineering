package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class s54 implements i47<InputStream, Bitmap> {
    public final fj0 a = new fj0();

    @Override // defpackage.i47
    public final e47<Bitmap> a(InputStream inputStream, int i, int i2, xz5 xz5Var) {
        return this.a.c(ImageDecoder.createSource(ax0.b(inputStream)), i, i2, xz5Var);
    }

    @Override // defpackage.i47
    public final boolean b(InputStream inputStream, xz5 xz5Var) {
        return true;
    }
}
