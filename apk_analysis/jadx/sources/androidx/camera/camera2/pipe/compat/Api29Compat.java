package androidx.camera.camera2.pipe.compat;

import android.media.ImageReader;
import android.media.ImageWriter;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public final class Api29Compat {
    public static final Api29Compat INSTANCE = new Api29Compat();

    private Api29Compat() {
    }

    public static final ImageReader imageReaderNewInstance(int i, int i2, int i3, int i4, long j) {
        ImageReader imageReaderNewInstance = ImageReader.newInstance(i, i2, i3, i4, j);
        imageReaderNewInstance.getClass();
        return imageReaderNewInstance;
    }

    public static final ImageWriter imageWriterNewInstance(Surface surface, int i, int i2) {
        surface.getClass();
        ImageWriter imageWriterNewInstance = ImageWriter.newInstance(surface, i, i2);
        imageWriterNewInstance.getClass();
        return imageWriterNewInstance;
    }
}
