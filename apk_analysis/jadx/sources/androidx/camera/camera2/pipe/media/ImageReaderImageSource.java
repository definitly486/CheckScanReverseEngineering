package androidx.camera.camera2.pipe.media;

import android.content.res.TypedArray;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.Surface;
import androidx.camera.camera2.pipe.media.ImageReaderImageSource;
import defpackage.g03;
import defpackage.h03;
import defpackage.ht;
import defpackage.jh2;
import defpackage.kt;
import defpackage.lt;
import defpackage.mi2;
import defpackage.ne4;
import defpackage.ot;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ImageReaderImageSource implements ImageSource {
    public static final Companion Companion = new Companion(null);
    public static final int IMAGE_SOURCE_CAPACITY = 52;
    public static final int IMAGE_SOURCE_CAPACITY_MARGIN = 2;
    private final ot expectedOutputsListener$delegate;
    private final lt imageCount;
    private final ot imageListener$delegate;
    private final ImageReaderWrapper imageReader;
    private final int maxImages;
    private final ot<State> state;
    private final Surface surface;

    public enum State {
        ACTIVE,
        CLOSING,
        CLOSED;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<State> getEntries() {
            return $ENTRIES;
        }
    }

    public ImageReaderImageSource(ImageReaderWrapper imageReaderWrapper, int i) {
        imageReaderWrapper.getClass();
        this.imageReader = imageReaderWrapper;
        this.maxImages = i;
        this.state = kt.d(State.ACTIVE);
        this.imageCount = kt.b(0);
        this.surface = imageReaderWrapper.getSurface();
        this.imageListener$delegate = kt.d(null);
        this.expectedOutputsListener$delegate = kt.d(null);
        imageReaderWrapper.setOnImageListener(new ImageReaderWrapper.OnImageListener() { // from class: androidx.camera.camera2.pipe.media.ImageReaderImageSource.1
            @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper.OnImageListener
            /* JADX INFO: renamed from: onImage-AQuxepk, reason: not valid java name */
            public final void mo984onImageAQuxepk(int i2, int i3, ImageWrapper imageWrapper) throws Exception {
                imageWrapper.getClass();
                ImageReaderImageSource.this.m983onImageAQuxepk(i2, i3, imageWrapper);
            }
        });
        imageReaderWrapper.setOnExpectedOutputsListener(new ImageReaderWrapper.OnExpectedOutputsListener() { // from class: a24
            @Override // androidx.camera.camera2.pipe.media.ImageReaderWrapper.OnExpectedOutputsListener
            public final void onExpectedOutputs(long j, Set set) {
                ImageReaderImageSource._init_$lambda$0(this.a, j, set);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(ImageReaderImageSource imageReaderImageSource, long j, Set set) {
        set.getClass();
        ExpectedOutputsListener expectedOutputsListener = imageReaderImageSource.getExpectedOutputsListener();
        if (expectedOutputsListener != null) {
            expectedOutputsListener.onExpectedOutputs(j, set);
        }
    }

    private final void flushOrCloseIfEmpty() throws Exception {
        boolean zIsTerminated;
        State state = this.state.b;
        State state2 = State.CLOSED;
        if (state == state2) {
            return;
        }
        if (this.imageCount.a != 0) {
            this.imageReader.flush();
            return;
        }
        if (this.state.a(State.CLOSING, state2)) {
            AutoCloseable autoCloseable = this.imageReader;
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onImage-AQuxepk, reason: not valid java name */
    public final void m983onImageAQuxepk(int i, int i2, ImageWrapper imageWrapper) throws Exception {
        int iB = this.imageCount.b();
        ImageListener imageListener = getImageListener();
        if (imageListener == null) {
            closeAndDecrementImageCount$camera_camera2_pipe(imageWrapper);
            return;
        }
        if (iB <= this.maxImages && this.state.b == State.ACTIVE) {
            imageListener.mo936onImage2cgRUCs(i, i2, imageWrapper.getTimestamp(), new TrackedOutputImage(this, imageWrapper, i, i2, null));
            return;
        }
        long timestamp = imageWrapper.getTimestamp();
        closeAndDecrementImageCount$camera_camera2_pipe(imageWrapper);
        imageListener.mo936onImage2cgRUCs(i, i2, timestamp, null);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        if (this.state.a(State.ACTIVE, State.CLOSING)) {
            flushOrCloseIfEmpty();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void closeAndDecrementImageCount$camera_camera2_pipe(ImageWrapper imageWrapper) throws Exception {
        boolean zIsTerminated;
        imageWrapper.getClass();
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
                return;
            }
            ((MediaDrm) imageWrapper).release();
        }
        this.imageCount.a();
        if (this.state.b != State.ACTIVE) {
            flushOrCloseIfEmpty();
        }
    }

    @Override // androidx.camera.camera2.pipe.media.ImageSource
    public ExpectedOutputsListener getExpectedOutputsListener() {
        return (ExpectedOutputsListener) this.expectedOutputsListener$delegate.b;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageSource
    public ImageListener getImageListener() {
        return (ImageListener) this.imageListener$delegate.b;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageSource
    public Surface getSurface() {
        return this.surface;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageSource
    public void setExpectedOutputsListener(ExpectedOutputsListener expectedOutputsListener) {
        this.expectedOutputsListener$delegate.c(expectedOutputsListener);
    }

    @Override // androidx.camera.camera2.pipe.media.ImageSource
    public void setImageListener(ImageListener imageListener) {
        this.imageListener$delegate.c(imageListener);
    }

    public String toString() {
        return "ImageSource(" + this.imageReader + ')';
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        ne4Var.getClass();
        return (T) this.imageReader.unwrapAs(ne4Var);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ImageSource create(ImageReaderWrapper imageReaderWrapper) {
            imageReaderWrapper.getClass();
            return new ImageReaderImageSource(imageReaderWrapper, imageReaderWrapper.getCapacity() - 2);
        }

        private Companion() {
        }
    }

    public final class TrackedOutputImage implements ImageWrapper, OutputImage {
        private final ht closed;
        private final ImageWrapper image;
        private final int outputId;
        private final int streamId;
        final /* synthetic */ ImageReaderImageSource this$0;

        private TrackedOutputImage(ImageReaderImageSource imageReaderImageSource, ImageWrapper imageWrapper, int i, int i2) {
            imageWrapper.getClass();
            this.this$0 = imageReaderImageSource;
            this.image = imageWrapper;
            this.streamId = i;
            this.outputId = i2;
            this.closed = kt.a(false);
        }

        @Override // java.lang.AutoCloseable
        public void close() throws Exception {
            if (this.closed.a()) {
                this.this$0.closeAndDecrementImageCount$camera_camera2_pipe(this.image);
            }
        }

        public final void finalize() throws Exception {
            close();
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
        /* JADX INFO: renamed from: getOutputId-4LaLFng, reason: not valid java name */
        public int mo985getOutputId4LaLFng() {
            return this.outputId;
        }

        @Override // androidx.camera.camera2.pipe.media.ImageWrapper
        public List<ImagePlane> getPlanes() {
            return this.image.getPlanes();
        }

        @Override // androidx.camera.camera2.pipe.media.OutputImage
        /* JADX INFO: renamed from: getStreamId-ptHMqGs, reason: not valid java name */
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
            return "OutputImage-s" + mo986getStreamIdptHMqGs() + "_o" + mo985getOutputId4LaLFng() + "-t" + getTimestamp();
        }

        @Override // androidx.camera.camera2.pipe.UnsafeWrapper
        public <T> T unwrapAs(ne4<T> ne4Var) {
            ne4Var.getClass();
            return (T) this.image.unwrapAs(ne4Var);
        }

        public /* synthetic */ TrackedOutputImage(ImageReaderImageSource imageReaderImageSource, ImageWrapper imageWrapper, int i, int i2, jh2 jh2Var) {
            this(imageReaderImageSource, imageWrapper, i, i2);
        }
    }
}
