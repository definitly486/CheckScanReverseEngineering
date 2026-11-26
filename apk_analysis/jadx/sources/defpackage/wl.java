package defpackage;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class wl {
    public final ArrayList a;
    public final pr b;

    public static final class a implements e47<Drawable> {
        public final AnimatedImageDrawable b;

        public a(AnimatedImageDrawable animatedImageDrawable) {
            this.b = animatedImageDrawable;
        }

        @Override // defpackage.e47
        public final Class<Drawable> a() {
            return Drawable.class;
        }

        @Override // defpackage.e47
        public final Drawable get() {
            return this.b;
        }

        @Override // defpackage.e47
        public final int getSize() {
            return eb9.d(Bitmap.Config.ARGB_8888) * this.b.getIntrinsicHeight() * this.b.getIntrinsicWidth() * 2;
        }

        @Override // defpackage.e47
        public final void recycle() {
            this.b.stop();
            this.b.clearAnimationCallbacks();
        }
    }

    public static final class b implements i47<ByteBuffer, Drawable> {
        public final wl a;

        public b(wl wlVar) {
            this.a = wlVar;
        }

        @Override // defpackage.i47
        public final e47<Drawable> a(ByteBuffer byteBuffer, int i, int i2, xz5 xz5Var) {
            return wl.a(ImageDecoder.createSource(byteBuffer), i, i2, xz5Var);
        }

        @Override // defpackage.i47
        public final boolean b(ByteBuffer byteBuffer, xz5 xz5Var) {
            ImageHeaderParser.ImageType imageTypeC = com.bumptech.glide.load.a.c(this.a.a, byteBuffer);
            if (imageTypeC != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                return Build.VERSION.SDK_INT >= 31 && imageTypeC == ImageHeaderParser.ImageType.ANIMATED_AVIF;
            }
            return true;
        }
    }

    public static final class c implements i47<InputStream, Drawable> {
        public final wl a;

        public c(wl wlVar) {
            this.a = wlVar;
        }

        @Override // defpackage.i47
        public final e47<Drawable> a(InputStream inputStream, int i, int i2, xz5 xz5Var) {
            return wl.a(ImageDecoder.createSource(ax0.b(inputStream)), i, i2, xz5Var);
        }

        @Override // defpackage.i47
        public final boolean b(InputStream inputStream, xz5 xz5Var) throws IOException {
            wl wlVar = this.a;
            ImageHeaderParser.ImageType imageTypeB = com.bumptech.glide.load.a.b(wlVar.a, inputStream, wlVar.b);
            if (imageTypeB != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                return Build.VERSION.SDK_INT >= 31 && imageTypeB == ImageHeaderParser.ImageType.ANIMATED_AVIF;
            }
            return true;
        }
    }

    public wl(ArrayList arrayList, pr prVar) {
        this.a = arrayList;
        this.b = prVar;
    }

    public static a a(ImageDecoder.Source source, int i, int i2, xz5 xz5Var) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new di2(i, i2, xz5Var));
        if (drawableDecodeDrawable instanceof AnimatedImageDrawable) {
            return new a((AnimatedImageDrawable) drawableDecodeDrawable);
        }
        av.c(drawableDecodeDrawable, "Received unexpected drawable type for animated image, failing: ");
        return null;
    }
}
