package yads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class g73 implements al2 {
    @Override // yads.al2
    public final Drawable a(byte[] bArr, Context context) throws IOException {
        if (Build.VERSION.SDK_INT >= 28) {
            Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(ByteBuffer.wrap(bArr)));
            if (defpackage.js2.e(drawableDecodeDrawable)) {
                ((AnimatedImageDrawable) drawableDecodeDrawable).start();
            }
            return drawableDecodeDrawable;
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (bitmapDecodeByteArray != null) {
            return new BitmapDrawable(context.getResources(), bitmapDecodeByteArray);
        }
        defpackage.fg.c("Cannot decode bitmap from data");
        return null;
    }
}
