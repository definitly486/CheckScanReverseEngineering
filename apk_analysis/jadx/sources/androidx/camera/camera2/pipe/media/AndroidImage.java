package androidx.camera.camera2.pipe.media;

import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.os.Build;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.Api28Compat;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ne4;
import defpackage.vh;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidImage implements ImageWrapper {
    private volatile List<? extends ImagePlane> _planes;
    private final int format;
    private final int height;
    private final Image image;
    private final Object lock;
    private final long timestamp;
    private final int width;

    public static final class Plane implements ImagePlane {
        private final ByteBuffer buffer;
        private final Image.Plane imagePlane;
        private final int pixelStride;
        private final int rowStride;

        public Plane(Image.Plane plane) {
            plane.getClass();
            this.imagePlane = plane;
            this.pixelStride = plane.getPixelStride();
            this.rowStride = plane.getRowStride();
            ByteBuffer buffer = plane.getBuffer();
            buffer.getClass();
            this.buffer = buffer;
        }

        @Override // androidx.camera.camera2.pipe.media.ImagePlane
        public ByteBuffer getBuffer() {
            return this.buffer;
        }

        @Override // androidx.camera.camera2.pipe.media.ImagePlane
        public int getPixelStride() {
            return this.pixelStride;
        }

        @Override // androidx.camera.camera2.pipe.media.ImagePlane
        public int getRowStride() {
            return this.rowStride;
        }

        @Override // androidx.camera.camera2.pipe.UnsafeWrapper
        public <T> T unwrapAs(ne4<T> ne4Var) {
            if (!vh.g(ne4Var, Image.Plane.class)) {
                return null;
            }
            T t = (T) this.imagePlane;
            t.getClass();
            return t;
        }
    }

    public AndroidImage(Image image) {
        image.getClass();
        this.image = image;
        this.lock = new Object();
        this.format = image.getFormat();
        this.width = image.getWidth();
        this.height = image.getHeight();
        this.timestamp = image.getTimestamp();
    }

    private final List<ImagePlane> readPlanes() {
        List list;
        List list2 = this._planes;
        if (list2 != null) {
            return list2;
        }
        synchronized (this.lock) {
            try {
                list = this._planes;
                if (list == null) {
                    Image.Plane[] planes = this.image.getPlanes();
                    if (planes != null) {
                        List arrayList = new ArrayList(planes.length);
                        for (Image.Plane plane : planes) {
                            plane.getClass();
                            arrayList.add(new Plane(plane));
                        }
                        list = arrayList;
                    } else {
                        list = kx2.b;
                    }
                    this._planes = list;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.image.close();
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public Rect getCropRect() {
        Rect cropRect = this.image.getCropRect();
        cropRect.getClass();
        return cropRect;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public int getFormat() {
        return this.format;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public HardwareBuffer getHardwareBuffer() {
        if (Build.VERSION.SDK_INT > 27) {
            return Api28Compat.getHardwareBuffer(this.image);
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public int getHeight() {
        return this.height;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public List<ImagePlane> getPlanes() {
        return readPlanes();
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public long getTimestamp() {
        return this.timestamp;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public int getWidth() {
        return this.width;
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWrapper
    public void setCropRect(Rect rect) {
        rect.getClass();
        this.image.setCropRect(rect);
    }

    public String toString() {
        return "Image-" + StreamFormat.m682getNameimpl(StreamFormat.m678constructorimpl(getFormat())) + "-w" + getWidth() + 'h' + getHeight() + "-t" + getTimestamp();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, Image.class)) {
            T t = (T) this.image;
            t.getClass();
            return t;
        }
        if (Build.VERSION.SDK_INT > 27) {
            return (T) Api28Compat.unwrapAsHardwareBuffer(this.image, ne4Var);
        }
        return null;
    }
}
