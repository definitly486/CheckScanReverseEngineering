package defpackage;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class dc3 extends lj0 {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(kf4.a);

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // defpackage.lj0
    public final Bitmap c(ij0 ij0Var, Bitmap bitmap, int i, int i2) {
        return w19.b(ij0Var, bitmap, i, i2);
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        return obj instanceof dc3;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return 1572326941;
    }
}
