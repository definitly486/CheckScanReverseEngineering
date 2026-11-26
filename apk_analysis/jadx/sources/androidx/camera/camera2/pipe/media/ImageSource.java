package androidx.camera.camera2.pipe.media;

import android.view.Surface;
import androidx.camera.camera2.pipe.UnsafeWrapper;

/* JADX INFO: loaded from: classes.dex */
public interface ImageSource extends UnsafeWrapper, AutoCloseable {
    ExpectedOutputsListener getExpectedOutputsListener();

    ImageListener getImageListener();

    Surface getSurface();

    void setExpectedOutputsListener(ExpectedOutputsListener expectedOutputsListener);

    void setImageListener(ImageListener imageListener);
}
