package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.drawable.Drawable;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageDecoderKt {
    public static final Bitmap decodeBitmap(ImageDecoder.Source source, final dm3<? super ImageDecoder, ? super ImageDecoder.ImageInfo, ? super ImageDecoder.Source, j59> dm3Var) {
        return ImageDecoder.decodeBitmap(source, new ImageDecoder$OnHeaderDecodedListener() { // from class: androidx.core.graphics.ImageDecoderKt.decodeBitmap.1
            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source2) {
                dm3Var.invoke(imageDecoder, imageInfo, source2);
            }
        });
    }

    public static final Drawable decodeDrawable(ImageDecoder.Source source, final dm3<? super ImageDecoder, ? super ImageDecoder.ImageInfo, ? super ImageDecoder.Source, j59> dm3Var) {
        return ImageDecoder.decodeDrawable(source, new ImageDecoder$OnHeaderDecodedListener() { // from class: androidx.core.graphics.ImageDecoderKt.decodeDrawable.1
            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source2) {
                dm3Var.invoke(imageDecoder, imageInfo, source2);
            }
        });
    }
}
