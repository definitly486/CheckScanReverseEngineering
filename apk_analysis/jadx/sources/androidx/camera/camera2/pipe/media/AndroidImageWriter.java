package androidx.camera.camera2.pipe.media;

import android.content.res.TypedArray;
import android.media.Image;
import android.media.ImageWriter;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import androidx.camera.camera2.pipe.InputStreamId;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.Api29Compat;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.c9;
import defpackage.fg;
import defpackage.jh2;
import defpackage.kt;
import defpackage.kv2;
import defpackage.mi2;
import defpackage.ne4;
import defpackage.ot;
import defpackage.vh;
import defpackage.x07;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidImageWriter implements ImageWriterWrapper, ImageWriter.OnImageReleasedListener {
    public static final Companion Companion = new Companion(null);
    private final int format;
    private final ImageWriter imageWriter;
    private final int inputStreamId;
    private final int maxImages;
    private final ot<ImageWriterWrapper.OnImageReleasedListener> onImageReleasedListener;

    private AndroidImageWriter(ImageWriter imageWriter, int i) {
        this.imageWriter = imageWriter;
        this.inputStreamId = i;
        this.onImageReleasedListener = kt.d(null);
        this.maxImages = imageWriter.getMaxImages();
        this.format = imageWriter.getFormat();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.imageWriter.close();
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWriterWrapper
    public ImageWrapper dequeueInputImage() {
        Image imageDequeueInputImage = this.imageWriter.dequeueInputImage();
        imageDequeueInputImage.getClass();
        return new AndroidImage(imageDequeueInputImage);
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWriterWrapper
    public int getFormat() {
        return this.format;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWriterWrapper
    public int getMaxImages() {
        return this.maxImages;
    }

    @Override // android.media.ImageWriter.OnImageReleasedListener
    public void onImageReleased(ImageWriter imageWriter) {
        ImageWriterWrapper.OnImageReleasedListener onImageReleasedListener = this.onImageReleasedListener.b;
        if (onImageReleasedListener != null) {
            onImageReleasedListener.m987onImageReleasedI45lehc(this.inputStreamId);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.media.ImageWriterWrapper
    public boolean queueInputImage(ImageWrapper imageWrapper) throws Exception {
        boolean zIsTerminated;
        imageWrapper.getClass();
        try {
            Image image = (Image) imageWrapper.unwrapAs(x07.a(Image.class));
            if (image != null) {
                this.imageWriter.queueInputImage(image);
                return true;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to unwrap image wrapper " + imageWrapper);
                return false;
            }
            return false;
        } catch (Throwable th) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to queue image to " + this + " due to error " + th.getMessage() + ". Ignoring failure and closing " + imageWrapper);
            }
            if (imageWrapper instanceof AutoCloseable) {
                imageWrapper.close();
            } else if (imageWrapper instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) imageWrapper;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else if (imageWrapper instanceof TypedArray) {
                ((TypedArray) imageWrapper).recycle();
            } else if (imageWrapper instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) imageWrapper).release();
            } else {
                if (!(imageWrapper instanceof MediaDrm)) {
                    mi2.b();
                    return false;
                }
                ((MediaDrm) imageWrapper).release();
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWriterWrapper
    public void setOnImageReleasedListener(ImageWriterWrapper.OnImageReleasedListener onImageReleasedListener) {
        onImageReleasedListener.getClass();
        this.onImageReleasedListener.c(onImageReleasedListener);
    }

    public String toString() {
        return "ImageWriter-" + StreamFormat.m682getNameimpl(StreamFormat.m678constructorimpl(this.imageWriter.getFormat())) + '-' + ((Object) InputStreamId.m488toStringimpl(this.inputStreamId));
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, ImageWriter.class)) {
            return (T) this.imageWriter;
        }
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: create-U86x6Zg, reason: not valid java name */
        public final ImageWriterWrapper m980createU86x6Zg(Surface surface, int i, int i2, StreamFormat streamFormat, Handler handler) {
            ImageWriter imageWriterNewInstance;
            surface.getClass();
            handler.getClass();
            jh2 jh2Var = null;
            if (i2 <= 0) {
                c9.f(kv2.b(i2, "Max images (", ") must be > 0"));
                return null;
            }
            if (i2 > 54) {
                fg.c("Max images for ImageWriters is restricted to 54 to prevent overloading downstream consumer components.");
                return null;
            }
            int i3 = Build.VERSION.SDK_INT;
            if (i3 < 29 || streamFormat == null) {
                if (streamFormat != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Ignoring format (" + ((Object) StreamFormat.m684toStringimpl(streamFormat.m685unboximpl())) + ") for " + ((Object) InputStreamId.m488toStringimpl(i)) + ". Android " + i3 + " does not support creating ImageWriters with formats. This may lead to unexpected behaviors.");
                }
                imageWriterNewInstance = ImageWriter.newInstance(surface, i2);
                imageWriterNewInstance.getClass();
            } else {
                imageWriterNewInstance = Api29Compat.imageWriterNewInstance(surface, i2, streamFormat.m685unboximpl());
            }
            AndroidImageWriter androidImageWriter = new AndroidImageWriter(imageWriterNewInstance, i, jh2Var);
            imageWriterNewInstance.setOnImageReleasedListener(androidImageWriter, handler);
            return androidImageWriter;
        }

        private Companion() {
        }
    }

    public /* synthetic */ AndroidImageWriter(ImageWriter imageWriter, int i, jh2 jh2Var) {
        this(imageWriter, i);
    }
}
