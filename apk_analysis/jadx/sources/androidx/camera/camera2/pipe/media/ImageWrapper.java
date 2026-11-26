package androidx.camera.camera2.pipe.media;

import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ImageWrapper extends UnsafeWrapper, AutoCloseable {
    Rect getCropRect();

    int getFormat();

    default HardwareBuffer getHardwareBuffer() {
        return null;
    }

    int getHeight();

    List<ImagePlane> getPlanes();

    long getTimestamp();

    int getWidth();

    void setCropRect(Rect rect);
}
