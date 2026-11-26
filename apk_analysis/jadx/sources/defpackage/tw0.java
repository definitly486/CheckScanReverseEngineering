package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class tw0 implements i47<ByteBuffer, Bitmap> {
    public final fj0 a = new fj0();

    @Override // defpackage.i47
    public final e47<Bitmap> a(ByteBuffer byteBuffer, int i, int i2, xz5 xz5Var) {
        return this.a.c(ImageDecoder.createSource(byteBuffer), i, i2, xz5Var);
    }

    @Override // defpackage.i47
    public final boolean b(ByteBuffer byteBuffer, xz5 xz5Var) {
        return true;
    }
}
