package defpackage;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.util.Size;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes3.dex */
public final class g78 implements ImageDecoder$OnHeaderDecodedListener {
    public final /* synthetic */ e78 a;
    public final /* synthetic */ n07 b;

    public g78(e78 e78Var, n07 n07Var) {
        this.a = e78Var;
        this.b = n07Var;
    }

    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        Size size = imageInfo.getSize();
        int width = size.getWidth();
        int height = size.getHeight();
        e78 e78Var = this.a;
        zz5 zz5Var = e78Var.c;
        t18 t18Var = zz5Var.b;
        md7 md7Var = zz5Var.c;
        b53.b<t18> bVar = d24.b;
        long jA = rd2.a(width, height, t18Var, md7Var, (t18) c53.b(zz5Var, bVar));
        int i = (int) (jA >> 32);
        int i2 = (int) (jA & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (width > 0 && height > 0 && (width != i || height != i2)) {
            zz5 zz5Var2 = e78Var.c;
            double dB = rd2.b(width, height, i, i2, zz5Var2.c, (t18) c53.b(zz5Var2, bVar));
            boolean z = dB < 1.0d;
            this.b.b = z;
            if (z || e78Var.c.d == re6.EXACT) {
                imageDecoder.setTargetSize(w65.a(((double) width) * dB), w65.a(dB * ((double) height)));
            }
        }
        imageDecoder.setOnPartialImageListener(new d78());
        zz5 zz5Var3 = e78Var.c;
        imageDecoder.setAllocator(f24.a(zz5Var3) == Bitmap.Config.HARDWARE ? 3 : 1);
        imageDecoder.setMemorySizePolicy(!((Boolean) c53.b(zz5Var3, f24.g)).booleanValue() ? 1 : 0);
        b53.b<ColorSpace> bVar2 = f24.c;
        if (((ColorSpace) c53.b(zz5Var3, bVar2)) != null) {
            imageDecoder.setTargetColorSpace((ColorSpace) c53.b(zz5Var3, bVar2));
        }
        imageDecoder.setUnpremultipliedRequired(!((Boolean) c53.b(zz5Var3, f24.d)).booleanValue());
    }
}
