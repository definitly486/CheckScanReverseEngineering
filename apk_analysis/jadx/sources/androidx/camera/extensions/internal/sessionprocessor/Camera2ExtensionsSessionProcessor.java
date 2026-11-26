package androidx.camera.extensions.internal.sessionprocessor;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.util.Pair;
import android.util.Size;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.OutputSurfaceConfiguration;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.extensions.CameraExtensionsControl;
import androidx.camera.extensions.CameraExtensionsInfo;
import androidx.camera.extensions.internal.Camera2ExtensionsUtil;
import androidx.camera.extensions.internal.ExtensionsUtils;
import androidx.camera.extensions.internal.VendorExtender;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import defpackage.j59;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ExtensionsSessionProcessor implements SessionProcessor, CameraExtensionsInfo, CameraExtensionsControl {
    private final List<CaptureRequest.Key<?>> availableCaptureRequestKeys;
    private final int camera2ExtensionMode;
    private CameraCaptureCallback cameraCaptureCallback;
    private CameraInfoInternal cameraInfoInternal;
    private SessionProcessor.CaptureSessionRequestProcessor captureSessionRequestProcessor;
    private final AtomicInteger currentExtensionType;
    private MutableLiveData<Integer> currentExtensionTypeLiveData;
    private final AtomicInteger extensionStrength;
    private MutableLiveData<Integer> extensionStrengthLiveData;
    private final Object lock;
    private final int mode;
    private final Set<Integer> supportedCameraOperations;
    private final VendorExtender vendorExtender;

    /* JADX WARN: Multi-variable type inference failed */
    public Camera2ExtensionsSessionProcessor(List<? extends CaptureRequest.Key<?>> list, int i, VendorExtender vendorExtender) {
        list.getClass();
        vendorExtender.getClass();
        this.availableCaptureRequestKeys = list;
        this.mode = i;
        this.vendorExtender = vendorExtender;
        this.camera2ExtensionMode = Camera2ExtensionsUtil.INSTANCE.convertCameraXModeToCamera2Mode(i);
        this.extensionStrength = new AtomicInteger(100);
        this.currentExtensionType = new AtomicInteger(i);
        Set<Integer> supportedCameraOperations = ExtensionsUtils.getSupportedCameraOperations(list);
        supportedCameraOperations.getClass();
        this.supportedCameraOperations = supportedCameraOperations;
        this.lock = new Object();
        if (isCurrentExtensionModeAvailable()) {
            this.currentExtensionTypeLiveData = new MutableLiveData<>(Integer.valueOf(i));
        }
        if (isExtensionStrengthAvailable()) {
            this.extensionStrengthLiveData = new MutableLiveData<>(100);
        }
    }

    private static /* synthetic */ void getSupportedCameraOperations$annotations() {
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public void deInitSession() {
        CameraCaptureCallback cameraCaptureCallback;
        CameraInfoInternal cameraInfoInternal = this.cameraInfoInternal;
        if (cameraInfoInternal == null || (cameraCaptureCallback = this.cameraCaptureCallback) == null) {
            return;
        }
        cameraInfoInternal.removeSessionCaptureCallback(cameraCaptureCallback);
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public List<Pair<CameraCharacteristics.Key<?>, ? super Object>> getAvailableCharacteristicsKeyValues() {
        List<Pair<CameraCharacteristics.Key<?>, ? super Object>> availableCharacteristicsKeyValues = this.vendorExtender.getAvailableCharacteristicsKeyValues();
        availableCharacteristicsKeyValues.getClass();
        return availableCharacteristicsKeyValues;
    }

    @Override // androidx.camera.extensions.CameraExtensionsInfo
    public LiveData<Integer> getCurrentExtensionMode() {
        return this.currentExtensionTypeLiveData;
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public int[] getExtensionAvailableStabilizationModes() {
        return super.getExtensionAvailableStabilizationModes();
    }

    @Override // androidx.camera.extensions.CameraExtensionsInfo
    public LiveData<Integer> getExtensionStrength() {
        return this.extensionStrengthLiveData;
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public Pair<Integer, Integer> getImplementationType() {
        Pair<Integer, Integer> pairCreate = Pair.create(1, Integer.valueOf(this.camera2ExtensionMode));
        pairCreate.getClass();
        return pairCreate;
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public Pair<Long, Long> getRealtimeCaptureLatency() {
        Pair<Long, Long> realtimeStillCaptureLatency;
        synchronized (this.lock) {
            SessionProcessor.CaptureSessionRequestProcessor captureSessionRequestProcessor = this.captureSessionRequestProcessor;
            realtimeStillCaptureLatency = captureSessionRequestProcessor != null ? captureSessionRequestProcessor.getRealtimeStillCaptureLatency() : null;
        }
        return realtimeStillCaptureLatency;
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public Set<Integer> getSupportedCameraOperations() {
        return this.supportedCameraOperations;
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public Map<Integer, List<Size>> getSupportedPostviewSize(Size size) {
        size.getClass();
        Map<Integer, List<Size>> supportedPostviewResolutions = this.vendorExtender.getSupportedPostviewResolutions(size);
        supportedPostviewResolutions.getClass();
        return supportedPostviewResolutions;
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public SessionConfig initSession(CameraInfo cameraInfo, OutputSurfaceConfiguration outputSurfaceConfiguration) {
        cameraInfo.getClass();
        this.cameraInfoInternal = (CameraInfoInternal) cameraInfo;
        this.cameraCaptureCallback = new CameraCaptureCallback() { // from class: androidx.camera.extensions.internal.sessionprocessor.Camera2ExtensionsSessionProcessor.initSession.1
            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
                CaptureResult captureResult;
                Integer num;
                MutableLiveData mutableLiveData;
                CaptureResult captureResult2;
                Integer num2;
                MutableLiveData mutableLiveData2;
                cameraCaptureResult.getClass();
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 34 && Camera2ExtensionsSessionProcessor.this.isCurrentExtensionModeAvailable() && (captureResult2 = cameraCaptureResult.getCaptureResult()) != null && (num2 = (Integer) captureResult2.get(CaptureResult.EXTENSION_CURRENT_TYPE)) != null) {
                    Camera2ExtensionsSessionProcessor camera2ExtensionsSessionProcessor = Camera2ExtensionsSessionProcessor.this;
                    Integer numConvertCamera2ModeToCameraXMode = Camera2ExtensionsUtil.INSTANCE.convertCamera2ModeToCameraXMode(num2.intValue());
                    if (numConvertCamera2ModeToCameraXMode != null) {
                        int iIntValue = numConvertCamera2ModeToCameraXMode.intValue();
                        if (camera2ExtensionsSessionProcessor.currentExtensionType.getAndSet(iIntValue) != iIntValue && (mutableLiveData2 = camera2ExtensionsSessionProcessor.currentExtensionTypeLiveData) != null) {
                            mutableLiveData2.postValue(Integer.valueOf(iIntValue));
                        }
                    }
                }
                if (i2 < 34 || !Camera2ExtensionsSessionProcessor.this.isExtensionStrengthAvailable() || (captureResult = cameraCaptureResult.getCaptureResult()) == null || (num = (Integer) captureResult.get(CaptureResult.EXTENSION_STRENGTH)) == null) {
                    return;
                }
                Camera2ExtensionsSessionProcessor camera2ExtensionsSessionProcessor2 = Camera2ExtensionsSessionProcessor.this;
                int iIntValue2 = num.intValue();
                if (camera2ExtensionsSessionProcessor2.extensionStrength.getAndSet(iIntValue2) == iIntValue2 || (mutableLiveData = camera2ExtensionsSessionProcessor2.extensionStrengthLiveData) == null) {
                    return;
                }
                mutableLiveData.postValue(Integer.valueOf(iIntValue2));
            }
        };
        CameraInfoInternal cameraInfoInternal = this.cameraInfoInternal;
        cameraInfoInternal.getClass();
        Executor executorDirectExecutor = CameraXExecutors.directExecutor();
        CameraCaptureCallback cameraCaptureCallback = this.cameraCaptureCallback;
        cameraCaptureCallback.getClass();
        cameraInfoInternal.addSessionCaptureCallback(executorDirectExecutor, cameraCaptureCallback);
        return null;
    }

    @Override // androidx.camera.extensions.CameraExtensionsInfo
    public boolean isCurrentExtensionModeAvailable() {
        return this.vendorExtender.isCurrentExtensionModeAvailable();
    }

    @Override // androidx.camera.extensions.CameraExtensionsInfo
    public boolean isExtensionStrengthAvailable() {
        return this.vendorExtender.isExtensionStrengthAvailable();
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public void setCaptureSessionRequestProcessor(SessionProcessor.CaptureSessionRequestProcessor captureSessionRequestProcessor) {
        synchronized (this.lock) {
            this.captureSessionRequestProcessor = captureSessionRequestProcessor;
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.camera.extensions.CameraExtensionsControl
    public void setExtensionStrength(int i) {
        synchronized (this.lock) {
            SessionProcessor.CaptureSessionRequestProcessor captureSessionRequestProcessor = this.captureSessionRequestProcessor;
            if (captureSessionRequestProcessor != null) {
                captureSessionRequestProcessor.setExtensionStrength(i);
                j59 j59Var = j59.a;
            }
        }
    }
}
