package androidx.camera.camera2.config;

import android.content.Context;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraThreadConfig;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig {
    private final CameraInteropStateCallbackRepository camera2InteropCallbacks;
    private final CameraCoordinator cameraCoordinator;
    private final CameraPipe cameraPipe;
    private final CameraThreadConfig cameraThreadConfig;
    private final CameraXConfig cameraXConfig;
    private final Context context;

    public CameraAppConfig(Context context, CameraThreadConfig cameraThreadConfig, CameraPipe cameraPipe, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository, CameraCoordinator cameraCoordinator, CameraXConfig cameraXConfig) {
        context.getClass();
        cameraThreadConfig.getClass();
        cameraPipe.getClass();
        cameraInteropStateCallbackRepository.getClass();
        cameraCoordinator.getClass();
        cameraXConfig.getClass();
        this.context = context;
        this.cameraThreadConfig = cameraThreadConfig;
        this.cameraPipe = cameraPipe;
        this.camera2InteropCallbacks = cameraInteropStateCallbackRepository;
        this.cameraCoordinator = cameraCoordinator;
        this.cameraXConfig = cameraXConfig;
    }

    public final CameraInteropStateCallbackRepository provideCamera2InteropCallbacks() {
        return this.camera2InteropCallbacks;
    }

    public final CameraCoordinator provideCameraCoordinator() {
        return this.cameraCoordinator;
    }

    public final CameraPipe provideCameraPipe() {
        return this.cameraPipe;
    }

    public final CameraThreadConfig provideCameraThreadConfig() {
        return this.cameraThreadConfig;
    }

    public final CameraXConfig provideCameraXConfig() {
        return this.cameraXConfig;
    }

    public final Context provideContext() {
        return this.context;
    }

    public final DisplayInfoManager provideDisplayInfoManager(Context context) {
        context.getClass();
        return DisplayInfoManager.Companion.getInstance(context);
    }
}
