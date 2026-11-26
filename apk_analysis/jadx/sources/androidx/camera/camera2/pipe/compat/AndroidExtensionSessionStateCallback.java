package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CameraExtensionSession$StateCallback;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.jh2;
import defpackage.kt;
import defpackage.ot;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidExtensionSessionStateCallback extends CameraExtensionSession$StateCallback {
    private final ot<SessionStateCallback> _lastStateCallback;
    private final Executor callbackExecutor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraDeviceWrapper device;
    private final ot<CameraExtensionSessionWrapper> extensionSession;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final CameraExtensionSessionWrapper.StateCallback stateCallback;

    public AndroidExtensionSessionStateCallback(CameraDeviceWrapper cameraDeviceWrapper, CameraExtensionSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Executor executor) {
        cameraDeviceWrapper.getClass();
        stateCallback.getClass();
        cameraErrorListener.getClass();
        executor.getClass();
        this.device = cameraDeviceWrapper;
        this.stateCallback = stateCallback;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.callbackExecutor = executor;
        this._lastStateCallback = kt.d(sessionStateCallback);
        this.extensionSession = kt.d(null);
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

    private final CameraExtensionSessionWrapper getWrapped(CameraExtensionSession cameraExtensionSession, CameraErrorListener cameraErrorListener) {
        CameraExtensionSessionWrapper cameraExtensionSessionWrapper = this.extensionSession.b;
        if (cameraExtensionSessionWrapper != null) {
            return cameraExtensionSessionWrapper;
        }
        CameraExtensionSessionWrapper cameraExtensionSessionWrapperWrapSession = wrapSession(cameraExtensionSession, cameraErrorListener);
        if (this.extensionSession.a(null, cameraExtensionSessionWrapperWrapSession)) {
            return cameraExtensionSessionWrapperWrapSession;
        }
        CameraExtensionSessionWrapper cameraExtensionSessionWrapper2 = this.extensionSession.b;
        cameraExtensionSessionWrapper2.getClass();
        return cameraExtensionSessionWrapper2;
    }

    private final CameraExtensionSessionWrapper wrapSession(CameraExtensionSession cameraExtensionSession, CameraErrorListener cameraErrorListener) {
        return new AndroidCameraExtensionSession(this.device, cameraExtensionSession, cameraErrorListener, this.callbackExecutor);
    }

    public void onClosed(CameraExtensionSession cameraExtensionSession) {
        cameraExtensionSession.getClass();
        CameraExtensionSessionWrapper wrapped = getWrapped(cameraExtensionSession, this.cameraErrorListener);
        this.stateCallback.onClosed(getWrapped(cameraExtensionSession, this.cameraErrorListener));
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo52onClosedrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    public void onConfigureFailed(CameraExtensionSession cameraExtensionSession) {
        cameraExtensionSession.getClass();
        CameraExtensionSessionWrapper wrapped = getWrapped(cameraExtensionSession, this.cameraErrorListener);
        this.stateCallback.onConfigureFailed(wrapped);
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo53onConfigureFailedrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    public void onConfigured(CameraExtensionSession cameraExtensionSession) {
        cameraExtensionSession.getClass();
        CameraExtensionSessionWrapper wrapped = getWrapped(cameraExtensionSession, this.cameraErrorListener);
        this.stateCallback.onConfigured(wrapped);
        finalizeLastSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo54onConfiguredrphkYDA(this.device.mo734getCameraIdDz_R5H8(), wrapped.mo731getId159jkk4());
        }
    }

    public /* synthetic */ AndroidExtensionSessionStateCallback(CameraDeviceWrapper cameraDeviceWrapper, CameraExtensionSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Executor executor, int i, jh2 jh2Var) {
        this(cameraDeviceWrapper, stateCallback, sessionStateCallback, cameraErrorListener, (i & 16) != 0 ? null : captureSessionListener, executor);
    }
}
