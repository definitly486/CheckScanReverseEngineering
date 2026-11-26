package androidx.camera.core;

import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface CameraProvider {
    default void addCameraPresenceListener(Executor executor, CameraPresenceListener cameraPresenceListener) {
        executor.getClass();
        cameraPresenceListener.getClass();
        throw new UnsupportedOperationException("The camera provider is not implemented properly.");
    }

    List<CameraInfo> getAvailableCameraInfos();

    List<List<CameraInfo>> getAvailableConcurrentCameraInfos();

    default CameraInfo getCameraInfo(CameraSelector cameraSelector, SessionConfig sessionConfig) {
        cameraSelector.getClass();
        sessionConfig.getClass();
        throw new UnsupportedOperationException("The camera provider is not implemented properly.");
    }

    boolean hasCamera(CameraSelector cameraSelector);

    boolean isConcurrentCameraModeOn();

    default void removeCameraPresenceListener(CameraPresenceListener cameraPresenceListener) {
        cameraPresenceListener.getClass();
        throw new UnsupportedOperationException("The camera provider is not implemented properly.");
    }

    default CameraInfo getCameraInfo(CameraSelector cameraSelector) {
        cameraSelector.getClass();
        throw new UnsupportedOperationException("The camera provider is not implemented properly.");
    }
}
