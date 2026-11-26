package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.core.impl.SessionConfig;
import defpackage.kt;
import defpackage.kx2;
import defpackage.ot;
import defpackage.qn1;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraInteropStateCallbackRepository {
    private final CameraDeviceStateCallbacks _deviceStateCallback = new CameraDeviceStateCallbacks();
    private final CaptureSessionStateCallbacks _sessionStateCallback = new CaptureSessionStateCallbacks();

    public static final class CameraDeviceStateCallbacks extends CameraDevice.StateCallback {
        private ot<List<CameraDevice.StateCallback>> callbacks = kt.d(kx2.b);

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            cameraDevice.getClass();
            Iterator<CameraDevice.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onClosed(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            cameraDevice.getClass();
            Iterator<CameraDevice.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onDisconnected(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            cameraDevice.getClass();
            Iterator<CameraDevice.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onError(cameraDevice, i);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            cameraDevice.getClass();
            Iterator<CameraDevice.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onOpened(cameraDevice);
            }
        }

        public final void updateCallbacks$camera_camera2(SessionConfig sessionConfig) {
            sessionConfig.getClass();
            ot<List<CameraDevice.StateCallback>> otVar = this.callbacks;
            List<CameraDevice.StateCallback> deviceStateCallbacks = sessionConfig.getDeviceStateCallbacks();
            deviceStateCallbacks.getClass();
            otVar.c(qn1.t0(deviceStateCallbacks));
        }
    }

    public static final class CaptureSessionStateCallbacks implements CameraInterop.CaptureSessionListener {
        private final RejectOperationCameraCaptureSession placeholderSession = new RejectOperationCameraCaptureSession();
        private ot<List<CameraCaptureSession.StateCallback>> callbacks = kt.d(kx2.b);

        public static final class Api26CompatImpl {
            public static final Api26CompatImpl INSTANCE = new Api26CompatImpl();

            private Api26CompatImpl() {
            }

            public static final void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession, ot<List<CameraCaptureSession.StateCallback>> otVar) {
                cameraCaptureSession.getClass();
                otVar.getClass();
                Iterator<CameraCaptureSession.StateCallback> it = otVar.b.iterator();
                while (it.hasNext()) {
                    it.next().onCaptureQueueEmpty(cameraCaptureSession);
                }
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onActive-rphkYDA, reason: not valid java name */
        public void mo50onActiverphkYDA(String str, int i) {
            str.getClass();
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onActive(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onCaptureQueueEmpty-rphkYDA, reason: not valid java name */
        public void mo51onCaptureQueueEmptyrphkYDA(String str, int i) {
            str.getClass();
            Api26CompatImpl.onCaptureQueueEmpty(this.placeholderSession, this.callbacks);
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onClosed-rphkYDA, reason: not valid java name */
        public void mo52onClosedrphkYDA(String str, int i) {
            str.getClass();
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onClosed(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onConfigureFailed-rphkYDA, reason: not valid java name */
        public void mo53onConfigureFailedrphkYDA(String str, int i) {
            str.getClass();
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onConfigureFailed(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onConfigured-rphkYDA, reason: not valid java name */
        public void mo54onConfiguredrphkYDA(String str, int i) {
            str.getClass();
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onConfigured(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onReady-rphkYDA, reason: not valid java name */
        public void mo55onReadyrphkYDA(String str, int i) {
            str.getClass();
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onReady(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onSurfacePrepared-GyX_H3Q, reason: not valid java name */
        public void mo56onSurfacePreparedGyX_H3Q(String str, int i, Surface surface) {
            str.getClass();
            surface.getClass();
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.b.iterator();
            while (it.hasNext()) {
                it.next().onSurfacePrepared(this.placeholderSession, surface);
            }
        }

        public final void updateCallbacks$camera_camera2(SessionConfig sessionConfig) {
            sessionConfig.getClass();
            ot<List<CameraCaptureSession.StateCallback>> otVar = this.callbacks;
            List<CameraCaptureSession.StateCallback> sessionStateCallbacks = sessionConfig.getSessionStateCallbacks();
            sessionStateCallbacks.getClass();
            otVar.c(qn1.t0(sessionStateCallbacks));
        }
    }

    public final CameraDeviceStateCallbacks getDeviceStateCallback() {
        return this._deviceStateCallback;
    }

    public final CameraInterop.CaptureSessionListener getSessionStateCallback() {
        return this._sessionStateCallback;
    }

    public final void updateCallbacks(SessionConfig sessionConfig) {
        sessionConfig.getClass();
        this._deviceStateCallback.updateCallbacks$camera_camera2(sessionConfig);
        this._sessionStateCallback.updateCallbacks$camera_camera2(sessionConfig);
    }
}
