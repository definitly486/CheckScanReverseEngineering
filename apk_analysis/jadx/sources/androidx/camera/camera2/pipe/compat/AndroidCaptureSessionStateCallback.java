package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.os.Handler;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.jh2;
import defpackage.kt;
import defpackage.ot;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidCaptureSessionStateCallback extends CameraCaptureSession.StateCallback {
    private final ot<SessionStateCallback> _lastStateCallback;
    private final Handler callbackHandler;
    private final CameraErrorListener cameraErrorListener;
    private final ot<CameraCaptureSessionWrapper> captureSession;
    private final CameraDeviceWrapper device;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public AndroidCaptureSessionStateCallback(CameraDeviceWrapper cameraDeviceWrapper, CameraCaptureSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Handler handler) {
        cameraDeviceWrapper.getClass();
        stateCallback.getClass();
        cameraErrorListener.getClass();
        handler.getClass();
        this.device = cameraDeviceWrapper;
        this.stateCallback = stateCallback;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.callbackHandler = handler;
        this._lastStateCallback = kt.d(sessionStateCallback);
        this.captureSession = kt.d(null);
    }

    private final void finalizeLastSession() {
        SessionStateCallback sessionStateCallbackB = this._lastStateCallback.b(null);
        if (sessionStateCallbackB != null) {
            sessionStateCallbackB.onSessionFinalized();
        }
    }

    private final void finalizeSession() {
        finalizeLastSession();
        this.stateCallback.onSessionFinalized();
    }

    private final CameraCaptureSessionWrapper getWrapped(CameraCaptureSession cameraCaptureSession, CameraErrorListener cameraErrorListener) {
        CameraCaptureSessionWrapper cameraCaptureSessionWrapper = this.captureSession.b;
        if (cameraCaptureSessionWrapper != null) {
            return cameraCaptureSessionWrapper;
        }
        CameraCaptureSessionWrapper cameraCaptureSessionWrapperWrapSession = wrapSession(cameraCaptureSession, cameraErrorListener);
        if (this.captureSession.a(null, cameraCaptureSessionWrapperWrapSession)) {
            return cameraCaptureSessionWrapperWrapSession;
        }
        CameraCaptureSessionWrapper cameraCaptureSessionWrapper2 = this.captureSession.b;
        cameraCaptureSessionWrapper2.getClass();
        return cameraCaptureSessionWrapper2;
    }

    private final CameraCaptureSessionWrapper wrapSession(CameraCaptureSession cameraCaptureSession, CameraErrorListener cameraErrorListener) {
        boolean z = cameraCaptureSession instanceof CameraConstrainedHighSpeedCaptureSession;
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        return z ? new AndroidCameraConstrainedHighSpeedCaptureSession(cameraDeviceWrapper, (CameraConstrainedHighSpeedCaptureSession) cameraCaptureSession, cameraErrorListener, this.callbackHandler) : new AndroidCameraCaptureSession(cameraDeviceWrapper, cameraCaptureSession, cameraErrorListener, this.callbackHandler);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onActive(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onActive(getWrapped(cameraCaptureSession, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo50onActiverphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onCaptureQueueEmpty(getWrapped(cameraCaptureSession, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo51onCaptureQueueEmptyrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onClosed(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onClosed(getWrapped(cameraCaptureSession, this.cameraErrorListener));
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo52onClosedrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onConfigureFailed(wrapped);
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo53onConfigureFailedrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigured(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onConfigured(wrapped);
        finalizeLastSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo54onConfiguredrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onReady(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onReady(getWrapped(cameraCaptureSession, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo55onReadyrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    public /* synthetic */ AndroidCaptureSessionStateCallback(CameraDeviceWrapper cameraDeviceWrapper, CameraCaptureSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Handler handler, int i, jh2 jh2Var) {
        this(cameraDeviceWrapper, stateCallback, sessionStateCallback, cameraErrorListener, (i & 16) != 0 ? null : captureSessionListener, handler);
    }
}
