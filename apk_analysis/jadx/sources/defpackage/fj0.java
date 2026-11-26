package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class fj0 implements i47<ImageDecoder.Source, Bitmap> {
    public final jj0 a = new jj0();

    @Override // defpackage.i47
    public final /* bridge */ /* synthetic */ e47<Bitmap> a(ImageDecoder.Source source, int i, int i2, xz5 xz5Var) {
        return c(ej0.d(source), i, i2, xz5Var);
    }

    @Override // defpackage.i47
    public final boolean b(ImageDecoder.Source source, xz5 xz5Var) {
        ej0.d(source);
        return true;
    }

    public final kj0 c(ImageDecoder.Source source, int i, int i2, xz5 xz5Var) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new di2(i, i2, xz5Var));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i + "x" + i2 + "]");
        }
        return new kj0(this.a, bitmapDecodeBitmap);
    }
}
