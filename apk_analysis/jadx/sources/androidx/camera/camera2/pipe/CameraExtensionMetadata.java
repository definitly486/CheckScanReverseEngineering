package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.util.Size;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraExtensionMetadata extends Metadata, UnsafeWrapper {
    <T> T get(CameraCharacteristics.Key<T> key);

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String mo301getCameraDz_R5H8();

    int getCameraExtension();

    Set<CameraCharacteristics.Key<?>> getKeys();

    <T> T getOrDefault(CameraCharacteristics.Key<T> key, T t);

    Set<Size> getOutputSizes(int i);

    Set<Size> getOutputSizes(Class<?> cls);

    Set<Size> getPostviewSizes(Size size, int i);

    Set<CaptureRequest.Key<?>> getRequestKeys();

    Set<CaptureResult.Key<?>> getResultKeys();

    boolean isCaptureProgressSupported();

    boolean isPostviewSupported();

    boolean isRedacted();
}
