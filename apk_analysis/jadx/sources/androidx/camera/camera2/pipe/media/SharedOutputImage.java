package androidx.camera.camera2.pipe.media;

import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.media.Image;
import defpackage.ah;
import defpackage.ht;
import defpackage.kt;
import defpackage.ne4;
import defpackage.x07;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface SharedOutputImage extends OutputImage {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public static final class SharedOutputImageImpl implements OutputImage, SharedOutputImage {
            private final ht closed;
            private final OutputImage outputImage;
            private final SharedReference<OutputImage> sharedReference;

            public SharedOutputImageImpl(OutputImage outputImage, SharedReference<OutputImage> sharedReference) {
                outputImage.getClass();
                sharedReference.getClass();
                this.outputImage = outputImage;
                this.sharedReference = sharedReference;
                this.closed = kt.a(false);
            }

            @Override // androidx.camera.camera2.pipe.media.SharedOutputImage
            public SharedOutputImage acquire() {
                SharedOutputImage sharedOutputImageAcquireOrNull = acquireOrNull();
                if (sharedOutputImageAcquireOrNull != null) {
                    return sharedOutputImageAcquireOrNull;
                }
                ah.f("Required value was null.");
                return null;
            }

            @Override // androidx.camera.camera2.pipe.media.SharedOutputImage
            public SharedOutputImage acquireOrNull() {
                if (this.closed.b() || this.sharedReference.acquireOrNull() == null) {
                    return null;
                }
                return new SharedOutputImageImpl(this.outputImage, this.sharedReference);
            }

            @Override // java.lang.AutoCloseable
            public void close() {
                if (this.closed.a()) {
                    this.sharedReference.decrement();
                }
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public Rect getCropRect() {
                return this.outputImage.getCropRect();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public int getFormat() {
                return this.outputImage.getFormat();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public HardwareBuffer getHardwareBuffer() {
                return this.outputImage.getHardwareBuffer();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public int getHeight() {
                return this.outputImage.getHeight();
            }

            @Override // androidx.camera.camera2.pipe.media.OutputImage
            /* JADX INFO: renamed from: getOutputId-4LaLFng */
            public int mo985getOutputId4LaLFng() {
                return this.outputImage.mo985getOutputId4LaLFng();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public List<ImagePlane> getPlanes() {
                return this.outputImage.getPlanes();
            }

            @Override // androidx.camera.camera2.pipe.media.OutputImage
            /* JADX INFO: renamed from: getStreamId-ptHMqGs */
            public int mo986getStreamIdptHMqGs() {
                return this.outputImage.mo986getStreamIdptHMqGs();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public long getTimestamp() {
                return this.outputImage.getTimestamp();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public int getWidth() {
                return this.outputImage.getWidth();
            }

            @Override // androidx.camera.camera2.pipe.media.ImageWrapper
            public void setCropRect(Rect rect) {
                rect.getClass();
                this.outputImage.setCropRect(rect);
            }

            @Override // androidx.camera.camera2.pipe.media.SharedOutputImage
            public void setFinalizer(Finalizer<? super OutputImage> finalizer) {
                finalizer.getClass();
                if (this.closed.b()) {
                    finalizer.finalize(null);
                } else {
                    this.sharedReference.setFinalizer(finalizer);
                }
            }

            public String toString() {
                return this.outputImage.toString();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public <T> T unwrapAs(ne4<T> ne4Var) {
                ne4Var.getClass();
                if (this.closed.b()) {
                    return null;
                }
                if (ne4Var.equals(x07.a(SharedOutputImage.class)) || ne4Var.equals(x07.a(OutputImage.class)) || ne4Var.equals(x07.a(ImageWrapper.class))) {
                    return this;
                }
                if (!ne4Var.equals(x07.a(Image.class))) {
                    return (T) this.outputImage.unwrapAs(ne4Var);
                }
                throw new UnsupportedOperationException("Cannot unwrap " + this + " as android.media.Image. Use setFinalizerinstead and close all outstanding references.");
            }
        }

        private Companion() {
        }

        public final SharedOutputImage from(OutputImage outputImage) {
            outputImage.getClass();
            if (outputImage instanceof SharedOutputImage) {
                return ((SharedOutputImage) outputImage).acquire();
            }
            SharedOutputImage sharedOutputImage = (SharedOutputImage) outputImage.unwrapAs(x07.a(SharedOutputImage.class));
            return sharedOutputImage != null ? sharedOutputImage.acquire() : new SharedOutputImageImpl(outputImage, new SharedReference(outputImage, ClosingFinalizer.INSTANCE));
        }
    }

    SharedOutputImage acquire();

    SharedOutputImage acquireOrNull();

    void setFinalizer(Finalizer<? super OutputImage> finalizer);
}
