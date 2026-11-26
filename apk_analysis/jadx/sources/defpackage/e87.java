package defpackage;

import android.graphics.Bitmap;
import android.graphics.Paint;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class e87 extends lj0 {
    public static final byte[] c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(kf4.a);
    public final int b;

    public e87(int i) {
        r96.a(i > 0, "roundingRadius must be greater than 0.");
        this.b = i;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    @Override // defpackage.lj0
    public final Bitmap c(ij0 ij0Var, Bitmap bitmap, int i, int i2) {
        Paint paint = w19.a;
        int i3 = this.b;
        r96.a(i3 > 0, "roundingRadius must be greater than 0.");
        return w19.d(ij0Var, bitmap, new u19(i3));
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        return (obj instanceof e87) && this.b == ((e87) obj).b;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return eb9.h(-569625254, eb9.h(this.b, 17));
    }
}
