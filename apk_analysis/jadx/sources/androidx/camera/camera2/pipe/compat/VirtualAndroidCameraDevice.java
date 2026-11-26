package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.view.Surface;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.j59;
import defpackage.ne4;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class VirtualAndroidCameraDevice implements CameraDeviceWrapper {
    private final AndroidCameraDevice androidCameraDevice;
    private boolean disconnected;
    private final Object lock;

    public VirtualAndroidCameraDevice(AndroidCameraDevice androidCameraDevice) {
        androidCameraDevice.getClass();
        this.androidCameraDevice = androidCameraDevice;
        this.lock = new Object();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: createCaptureRequest-2PPcXtw */
    public CaptureRequest.Builder mo732createCaptureRequest2PPcXtw(int i) {
        CaptureRequest.Builder builderMo732createCaptureRequest2PPcXtw;
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createCaptureRequest failed: Virtual device disconnected");
                    }
                    builderMo732createCaptureRequest2PPcXtw = null;
                } else {
                    builderMo732createCaptureRequest2PPcXtw = this.androidCameraDevice.mo732createCaptureRequest2PPcXtw(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return builderMo732createCaptureRequest2PPcXtw;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(SessionConfigData sessionConfigData) {
        boolean zCreateCaptureSession;
        sessionConfigData.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createCaptureSession failed: Virtual device disconnected");
                    }
                    sessionConfigData.getStateCallback().onSessionFinalized();
                    zCreateCaptureSession = false;
                } else {
                    zCreateCaptureSession = this.androidCameraDevice.createCaptureSession(sessionConfigData);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSessionByOutputConfigurations(List<? extends OutputConfigurationWrapper> list, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateCaptureSessionByOutputConfigurations;
        list.getClass();
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createCaptureSessionByOutputConfigurations failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateCaptureSessionByOutputConfigurations = false;
                } else {
                    zCreateCaptureSessionByOutputConfigurations = this.androidCameraDevice.createCaptureSessionByOutputConfigurations(list, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateCaptureSessionByOutputConfigurations;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createConstrainedHighSpeedCaptureSession(List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateConstrainedHighSpeedCaptureSession;
        list.getClass();
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createConstrainedHighSpeedCaptureSession failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateConstrainedHighSpeedCaptureSession = false;
                } else {
                    zCreateConstrainedHighSpeedCaptureSession = this.androidCameraDevice.createConstrainedHighSpeedCaptureSession(list, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateConstrainedHighSpeedCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createExtensionSession(ExtensionSessionConfigData extensionSessionConfigData) {
        boolean zCreateExtensionSession;
        extensionSessionConfigData.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createExtensionSession failed: Virtual device disconnected");
                    }
                    CameraExtensionSessionWrapper.StateCallback extensionStateCallback = extensionSessionConfigData.getExtensionStateCallback();
                    extensionStateCallback.getClass();
                    extensionStateCallback.onSessionFinalized();
                    zCreateExtensionSession = false;
                } else {
                    zCreateExtensionSession = this.androidCameraDevice.createExtensionSession(extensionSessionConfigData);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateExtensionSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult) {
        CaptureRequest.Builder builderCreateReprocessCaptureRequest;
        totalCaptureResult.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createReprocessCaptureRequest failed: Virtual device disconnected");
                    }
                    builderCreateReprocessCaptureRequest = null;
                } else {
                    builderCreateReprocessCaptureRequest = this.androidCameraDevice.createReprocessCaptureRequest(totalCaptureResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return builderCreateReprocessCaptureRequest;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createReprocessableCaptureSession(InputConfiguration inputConfiguration, List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateReprocessableCaptureSession;
        inputConfiguration.getClass();
        list.getClass();
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createReprocessableCaptureSession failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateReprocessableCaptureSession = false;
                } else {
                    zCreateReprocessableCaptureSession = this.androidCameraDevice.createReprocessableCaptureSession(inputConfiguration, list, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateReprocessableCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfigData, List<? extends OutputConfigurationWrapper> list, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateReprocessableCaptureSessionByConfigurations;
        inputConfigData.getClass();
        list.getClass();
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createReprocessableCaptureSessionByConfigurations failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateReprocessableCaptureSessionByConfigurations = false;
                } else {
                    zCreateReprocessableCaptureSessionByConfigurations = this.androidCameraDevice.createReprocessableCaptureSessionByConfigurations(inputConfigData, list, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateReprocessableCaptureSessionByConfigurations;
    }

    public final void disconnect$camera_camera2_pipe() {
        synchronized (this.lock) {
            this.disconnected = true;
            j59 j59Var = j59.a;
        }
    }

    public final AndroidCameraDevice getAndroidCameraDevice$camera_camera2_pipe() {
        return this.androidCameraDevice;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraAudioRestriction-_b5Q8KE */
    public int mo733getCameraAudioRestriction_b5Q8KE() {
        return this.androidCameraDevice.mo733getCameraAudioRestriction_b5Q8KE();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8 */
    public String mo734getCameraIdDz_R5H8() {
        return this.androidCameraDevice.mo734getCameraIdDz_R5H8();
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController.Listener
    /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU */
    public void mo735onCameraAudioRestrictionUpdatedLwUUkyU(int i) {
        this.androidCameraDevice.mo735onCameraAudioRestrictionUpdatedLwUUkyU(i);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosed() {
        this.androidCameraDevice.onDeviceClosed();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosing() {
        this.androidCameraDevice.onDeviceClosing();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        ne4Var.getClass();
        return (T) this.androidCameraDevice.unwrapAs(ne4Var);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(List<? extends Surface> list, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateCaptureSession;
        list.getClass();
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "createCaptureSession failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateCaptureSession = false;
                } else {
                    zCreateCaptureSession = this.androidCameraDevice.createCaptureSession(list, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateCaptureSession;
    }
}
