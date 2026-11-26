package androidx.camera.camera2.pipe.media;

import androidx.camera.camera2.pipe.UnsafeWrapper;

/* JADX INFO: loaded from: classes.dex */
public interface ImageWriterWrapper extends UnsafeWrapper, AutoCloseable {

    public interface Builder {
        ImageWriterWrapper build();
    }

    public interface OnImageReleasedListener {
        /* JADX INFO: renamed from: onImageReleased-I45lehc, reason: not valid java name */
        void m987onImageReleasedI45lehc(int i);
    }

    ImageWrapper dequeueInputImage();

    int getFormat();

    int getMaxImages();

    boolean queueInputImage(ImageWrapper imageWrapper);

    void setOnImageReleasedListener(OnImageReleasedListener onImageReleasedListener);
}
