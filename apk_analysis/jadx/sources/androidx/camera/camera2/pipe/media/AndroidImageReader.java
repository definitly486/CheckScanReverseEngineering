package androidx.camera.camera2.pipe.media;

import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.Api28Compat;
import androidx.camera.camera2.pipe.compat.Api29Compat;
import androidx.camera.camera2.pipe.compat.Api33Compat;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.c9;
import defpackage.fg;
import defpackage.ga1;
import defpackage.jh2;
import defpackage.kt;
import defpackage.kv2;
import defpackage.l1;
import defpackage.ne4;
import defpackage.ot;
import defpackage.vh;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidImageReader implements ImageReaderWrapper, ImageReader.OnImageAvailableListener {
    public static final Companion Companion = new Companion(null);
    public static final int IMAGEREADER_MAX_CAPACITY = 54;
    private final int capacity;
    private final ImageReader imageReader;
    private final ot onExpectedOutputsListener$delegate;
    private final ot onImageListener$delegate;
    private final int outputId;
    private final Set<OutputId> outputIdSet;
    private final int streamId;
    private final Surface surface;

    private AndroidImageReader(ImageReader imageReader, int i, int i2, int i3) {
        this.imageReader = imageReader;
        this.capacity = i;
        this.streamId = i2;
        this.outputId = i3;
        this.outputIdSet = l1.f(OutputId.m503boximpl(i3));
        Surface surface = imageReader.getSurface();
        surface.getClass();
        this.surface = surface;
        this.onImageListener$delegate = kt.d(null);
        this.onExpectedOutputsListener$delegate = kt.d(null);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.imageReader.close();
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public void flush() {
        Image imageAcquireLatestImage = this.imageReader.acquireLatestImage();
        if (imageAcquireLatestImage != null) {
            imageAcquireLatestImage.close();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            Api28Compat.discardFreeBuffers(this.imageReader);
        }
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public int getCapacity() {
        return this.capacity;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public ImageReaderWrapper.OnExpectedOutputsListener getOnExpectedOutputsListener() {
        return (ImageReaderWrapper.OnExpectedOutputsListener) this.onExpectedOutputsListener$delegate.b;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public ImageReaderWrapper.OnImageListener getOnImageListener() {
        return (ImageReaderWrapper.OnImageListener) this.onImageListener$delegate.b;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public Surface getSurface() {
        return this.surface;
    }

    @Override // android.media.ImageReader.OnImageAvailableListener
    public void onImageAvailable(ImageReader imageReader) {
        Image imageAcquireNextImage = imageReader != null ? imageReader.acquireNextImage() : null;
        if (imageAcquireNextImage != null) {
            ImageReaderWrapper.OnImageListener onImageListener = getOnImageListener();
            if (onImageListener == null) {
                imageAcquireNextImage.close();
                return;
            }
            ImageReaderWrapper.OnExpectedOutputsListener onExpectedOutputsListener = getOnExpectedOutputsListener();
            if (onExpectedOutputsListener != null) {
                onExpectedOutputsListener.onExpectedOutputs(imageAcquireNextImage.getTimestamp(), this.outputIdSet);
            }
            onImageListener.mo984onImageAQuxepk(this.streamId, this.outputId, new AndroidImage(imageAcquireNextImage));
        }
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public void setOnExpectedOutputsListener(ImageReaderWrapper.OnExpectedOutputsListener onExpectedOutputsListener) {
        this.onExpectedOutputsListener$delegate.c(onExpectedOutputsListener);
    }

    @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper
    public void setOnImageListener(ImageReaderWrapper.OnImageListener onImageListener) {
        this.onImageListener$delegate.c(onImageListener);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ImageReader@");
        int iHashCode = hashCode();
        ga1.b(16);
        String string = Integer.toString(iHashCode, 16);
        string.getClass();
        sb.append(string);
        sb.append('-');
        sb.append(StreamFormat.m682getNameimpl(StreamFormat.m678constructorimpl(this.imageReader.getImageFormat())));
        sb.append("-w");
        sb.append(this.imageReader.getWidth());
        sb.append('h');
        sb.append(this.imageReader.getHeight());
        return sb.toString();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, ImageReader.class)) {
            return (T) this.imageReader;
        }
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: create-fE-0t4g, reason: not valid java name */
        public final ImageReaderWrapper m979createfE0t4g(int i, int i2, int i3, int i4, Long l, Integer num, Integer num2, int i5, int i6, Handler handler) {
            ImageReader imageReaderNewInstance;
            int i7;
            int i8;
            int i9;
            handler.getClass();
            if (i <= 0) {
                c9.f(kv2.b(i, "Width (", ") must be > 0"));
                return null;
            }
            if (i2 <= 0) {
                c9.f(kv2.b(i2, "Height (", ") must be > 0"));
                return null;
            }
            if (i4 <= 0) {
                c9.f(kv2.b(i4, "Capacity (", ") must be > 0"));
                return null;
            }
            if (i4 > 54) {
                fg.c("Capacity for creating new ImageSources is restricted to 54. Android has undocumented internal limits that are different depending on which device the ImageReader is created on.");
                return null;
            }
            if (l != null && (i9 = Build.VERSION.SDK_INT) < 29 && Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Ignoring ImageReader usage (" + l.longValue() + ") for " + ((Object) OutputId.m508toStringimpl(i6)) + ". Android " + i9 + " does not support creating ImageReaders with usage flags. This may lead to unexpected behaviors.");
            }
            if (num != null && (i8 = Build.VERSION.SDK_INT) < 33 && Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Ignoring defaultDataSpace (" + num.intValue() + ") for " + ((Object) OutputId.m508toStringimpl(i6)) + ". Android " + i8 + " does not support creating ImageReaders with defaultDataSpace. This may lead to unexpected behaviors.");
            }
            if (num2 != null && (i7 = Build.VERSION.SDK_INT) < 33 && Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Ignoring defaultHardwareBufferFormat (" + num2.intValue() + ") for " + ((Object) OutputId.m508toStringimpl(i6)) + ". Android " + i7 + " does not support creating ImageReaders with defaultHardwareBufferFormat. This may lead to unexpected behaviors.");
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 33) {
                imageReaderNewInstance = Api33Compat.newImageReaderFromImageReaderBuilder(i, i2, Integer.valueOf(i3), Integer.valueOf(i4), l, num, num2);
            } else if (i10 < 29) {
                imageReaderNewInstance = ImageReader.newInstance(i, i2, i3, i4);
                imageReaderNewInstance.getClass();
            } else if (l != null) {
                imageReaderNewInstance = Api29Compat.imageReaderNewInstance(i, i2, i3, i4, l.longValue());
            } else {
                imageReaderNewInstance = ImageReader.newInstance(i, i2, i3, i4);
                imageReaderNewInstance.getClass();
            }
            ImageReader imageReader = imageReaderNewInstance;
            AndroidImageReader androidImageReader = new AndroidImageReader(imageReader, i4, i5, i6, null);
            imageReader.setOnImageAvailableListener(androidImageReader, handler);
            return androidImageReader;
        }

        private Companion() {
        }
    }

    public /* synthetic */ AndroidImageReader(ImageReader imageReader, int i, int i2, int i3, jh2 jh2Var) {
        this(imageReader, i, i2, i3);
    }
}
