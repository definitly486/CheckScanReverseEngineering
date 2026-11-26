package defpackage;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class sw0 implements i47<ByteBuffer, Bitmap> {
    public final vq2 a;

    public sw0(vq2 vq2Var) {
        this.a = vq2Var;
    }

    @Override // defpackage.i47
    public final e47<Bitmap> a(ByteBuffer byteBuffer, int i, int i2, xz5 xz5Var) {
        vq2 vq2Var = this.a;
        return vq2Var.a(new z14.a(byteBuffer, vq2Var.d, vq2Var.c), i, i2, xz5Var, vq2.k);
    }

    @Override // defpackage.i47
    public final boolean b(ByteBuffer byteBuffer, xz5 xz5Var) {
        return true;
    }
}
