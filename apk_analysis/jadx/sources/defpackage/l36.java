package defpackage;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes3.dex */
public final class l36 implements i47<ParcelFileDescriptor, Bitmap> {
    public final vq2 a;

    public l36(vq2 vq2Var) {
        this.a = vq2Var;
    }

    @Override // defpackage.i47
    public final e47<Bitmap> a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, xz5 xz5Var) {
        vq2 vq2Var = this.a;
        return vq2Var.a(new z14.c(parcelFileDescriptor, vq2Var.d, vq2Var.c), i, i2, xz5Var, vq2.k);
    }

    @Override // defpackage.i47
    public final boolean b(ParcelFileDescriptor parcelFileDescriptor, xz5 xz5Var) {
        ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
        String str = Build.MANUFACTURER;
        return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor2.getStatSize() <= 536870912) && !"robolectric".equals(Build.FINGERPRINT);
    }
}
