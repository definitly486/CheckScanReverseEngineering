package androidx.camera.camera2.pipe.media;

import android.view.Surface;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface ImageReaderWrapper extends UnsafeWrapper, AutoCloseable {

    public interface OnExpectedOutputsListener {
        void onExpectedOutputs(long j, Set<OutputId> set);
    }

    public interface OnImageListener {
        /* JADX INFO: renamed from: onImage-AQuxepk */
        void mo984onImageAQuxepk(int i, int i2, ImageWrapper imageWrapper);
    }

    void flush();

    int getCapacity();

    OnExpectedOutputsListener getOnExpectedOutputsListener();

    OnImageListener getOnImageListener();

    Surface getSurface();

    void setOnExpectedOutputsListener(OnExpectedOutputsListener onExpectedOutputsListener);

    void setOnImageListener(OnImageListener onImageListener);
}
