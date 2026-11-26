package defpackage;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class ur3 extends lj0 {
    public static final byte[] f = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners".getBytes(kf4.a);
    public final float b;
    public final float c;
    public final float d;
    public final float e;

    public ur3(float f2, float f3, float f4, float f5) {
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f);
        messageDigest.update(ByteBuffer.allocate(16).putFloat(this.b).putFloat(this.c).putFloat(this.d).putFloat(this.e).array());
    }

    @Override // defpackage.lj0
    public final Bitmap c(ij0 ij0Var, Bitmap bitmap, int i, int i2) {
        return w19.d(ij0Var, bitmap, new v19(this.b, this.c, this.d, this.e));
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof ur3) {
            ur3 ur3Var = (ur3) obj;
            if (this.b == ur3Var.b && this.c == ur3Var.c && this.d == ur3Var.d && this.e == ur3Var.e) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return eb9.g(this.e, eb9.g(this.d, eb9.g(this.c, eb9.h(-2013597734, eb9.g(this.b, 17)))));
    }
}
