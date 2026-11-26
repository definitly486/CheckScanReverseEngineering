package defpackage;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class ui0 implements v47<Bitmap, byte[]> {
    @Override // defpackage.v47
    public final e47<byte[]> a(e47<Bitmap> e47Var, xz5 xz5Var) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        e47Var.get().compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        e47Var.recycle();
        return new ix0(byteArrayOutputStream.toByteArray());
    }
}
