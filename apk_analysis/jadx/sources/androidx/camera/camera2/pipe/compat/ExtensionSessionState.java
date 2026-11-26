package androidx.camera.camera2.pipe.compat;

/* JADX INFO: loaded from: classes.dex */
public final class ExtensionSessionState implements CameraExtensionSessionWrapper.StateCallback {
    private final CaptureSessionState captureSessionState;

    public ExtensionSessionState(CaptureSessionState captureSessionState) {
        captureSessionState.getClass();
        this.captureSessionState = captureSessionState;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper.StateCallback
    public void onClosed(CameraExtensionSessionWrapper cameraExtensionSessionWrapper) {
        cameraExtensionSessionWrapper.getClass();
        this.captureSessionState.onClosed(cameraExtensionSessionWrapper);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper.StateCallback
    public void onConfigureFailed(CameraExtensionSessionWrapper cameraExtensionSessionWrapper) {
        cameraExtensionSessionWrapper.getClass();
        this.captureSessionState.onConfigureFailed(cameraExtensionSessionWrapper);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper.StateCallback
    public void onConfigured(CameraExtensionSessionWrapper cameraExtensionSessionWrapper) {
        cameraExtensionSessionWrapper.getClass();
        this.captureSessionState.onConfigured(cameraExtensionSessionWrapper);
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionDisconnected() {
        this.captureSessionState.onSessionDisconnected();
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionFinalized() {
        this.captureSessionState.onSessionFinalized();
    }
}
