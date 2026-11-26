package androidx.camera.camera2.pipe.media;

import android.content.res.TypedArray;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import defpackage.jh2;
import defpackage.mi2;
import defpackage.ne4;
import defpackage.vh;
import defpackage.x07;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public interface OutputImage extends ImageWrapper {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: renamed from: getOutputId-4LaLFng */
    int mo985getOutputId4LaLFng();

    /* JADX INFO: renamed from: getStreamId-ptHMqGs */
    int mo986getStreamIdptHMqGs();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX INFO: renamed from: from-AQuxepk, reason: not valid java name */
        public final OutputImage m988fromAQuxepk(int i, int i2, ImageWrapper imageWrapper) {
            imageWrapper.getClass();
            return imageWrapper instanceof OutputImage ? (OutputImage) imageWrapper : new OutputImageImpl(i, i2, imageWrapper, null);
        }

        public final String toLogString$camera_camera2_pipe(OutputImage outputImage) {
            outputImage.getClass();
            return "OutputImage-s" + outputImage.mo986getStreamIdptHMqGs() + "_o" + outputImage.mo985getOutputId4LaLFng() + "-t" + outputImage.getTimestamp();
        }

        public static final class OutputImageImpl implements ImageWrapper, OutputImage {
            private final ImageWrapper image;
            private final int outputId;
            private final int streamId;

            private OutputImageImpl(int i, int i2, ImageWrapper imageWrapper) {
                imageWrapper.getClass();
                this.streamId = i;
                this.outputId = i2;
                this.image = imageWrapper;
            }

            @Override // java.lang.AutoCloseable
            public void close() throws Exception {
                boolean zIsTerminated;
                AutoCloseable autoCloseable = this.image;
                if (autoCloseable instanceof AutoCloseable) {
                    autoCloseable.close();
                    return;
                }
                if (!(autoCloseable instanceof ExecutorService)) {
                    if (autoCloseable instanceof TypedArray) {
                        ((TypedArray) autoCloseable).recycle();
                        return;
                    }
                    if (autoCloseable instanceof MediaMetadataRetriever) {
                        ((MediaMetadataRetriever) autoCloseable).release();
                        return;
                    } else if (autoCloseable instanceof MediaDrm) {
                        ((MediaDrm) autoCloseable).release();
                        return;
                    } else {
                        mi2.b();
                        return;
                    }
                }
                ExecutorService executorService = (ExecutorService) autoCloseable;
                if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                    return;
                }
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

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public Rect getCropRect() {
                return this.image.getCropRect();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public int getFormat() {
                return this.image.getFormat();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public HardwareBuffer getHardwareBuffer() {
                return this.image.getHardwareBuffer();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public int getHeight() {
                return this.image.getHeight();
            }

            @Override // androidx.camera.camera2.pipe.media.OutputImage
            /* JADX INFO: renamed from: getOutputId-4LaLFng */
            public int mo985getOutputId4LaLFng() {
                return this.outputId;
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public List<ImagePlane> getPlanes() {
                return this.image.getPlanes();
            }

            @Override // androidx.camera.camera2.pipe.media.OutputImage
            /* JADX INFO: renamed from: getStreamId-ptHMqGs */
            public int mo986getStreamIdptHMqGs() {
                return this.streamId;
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public long getTimestamp() {
                return this.image.getTimestamp();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public int getWidth() {
                return this.image.getWidth();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public void setCropRect(Rect rect) {
                rect.getClass();
                this.image.setCropRect(rect);
            }

            public String toString() {
                Companion companion = Companion.$$INSTANCE;
                return "OutputImage-s" + mo986getStreamIdptHMqGs() + "_o" + mo985getOutputId4LaLFng() + "-t" + getTimestamp();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public <T> T unwrapAs(ne4<T> ne4Var) {
                return (vh.g(ne4Var, OutputImage.class) || ne4Var.equals(x07.a(ImageWrapper.class))) ? this : (T) this.image.unwrapAs(ne4Var);
            }

            public /* synthetic */ OutputImageImpl(int i, int i2, ImageWrapper imageWrapper, jh2 jh2Var) {
                this(i, i2, imageWrapper);
            }
        }
    }
}
