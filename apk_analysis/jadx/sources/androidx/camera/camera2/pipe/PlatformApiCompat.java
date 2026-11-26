package androidx.camera.camera2.pipe;

import android.hardware.camera2.MultiResolutionImageReader;
import android.hardware.camera2.params.MultiResolutionStreamConfigurationMap;
import android.hardware.camera2.params.MultiResolutionStreamInfo;
import java.util.Collection;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface PlatformApiCompat {
    default MultiResolutionImageReader buildMultiResolutionImageReader(Collection<? extends MultiResolutionStreamInfo> collection, int i, int i2, Long l, Boolean bool) {
        collection.getClass();
        throw new UnsupportedOperationException("API not supported on current platform");
    }

    default boolean isConcurrentReadersSupported(MultiResolutionStreamConfigurationMap multiResolutionStreamConfigurationMap, int i) {
        multiResolutionStreamConfigurationMap.getClass();
        throw new UnsupportedOperationException("API not supported on current platform");
    }

    default boolean isMultiResolutionConcurrentReadersEnabled() {
        return false;
    }

    default void setOnActiveOutputSurfacesListener(MultiResolutionImageReader multiResolutionImageReader, Executor executor, CameraOnActiveOutputSurfacesListener cameraOnActiveOutputSurfacesListener) {
        multiResolutionImageReader.getClass();
        executor.getClass();
        cameraOnActiveOutputSurfacesListener.getClass();
        throw new UnsupportedOperationException("API not supported on current platform");
    }
}
