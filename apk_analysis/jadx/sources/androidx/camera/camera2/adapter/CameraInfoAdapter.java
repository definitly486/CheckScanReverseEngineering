package androidx.camera.camera2.adapter;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ZslDisablerQuirk;
import androidx.camera.camera2.compat.workaround.FlashAvailabilityCheckerKt;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.DeviceInfoLogger;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraState;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ExposureState;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.DynamicRanges;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.internal.StreamSpecsCalculator;
import androidx.core.util.Consumer;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import defpackage.b11;
import defpackage.cl4;
import defpackage.f80;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.k57;
import defpackage.kx2;
import defpackage.l1;
import defpackage.m05;
import defpackage.ne4;
import defpackage.ox2;
import defpackage.uj;
import defpackage.vh;
import defpackage.x07;
import defpackage.yr;
import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraInfoAdapter implements CameraInfoInternal, UnsafeWrapper {
    public static final Companion Companion = new Companion(null);
    private final cl4 _physicalCameraInfos$delegate;
    private final cl4 camera2CameraInfo$delegate;
    private final CameraCallbackMap cameraCallbackMap;
    private final CameraConfig cameraConfig;
    private final CameraControlStateAdapter cameraControlStateAdapter;
    private final CameraProperties cameraProperties;
    private final CameraQuirks cameraQuirks;
    private final CameraStateAdapter cameraStateAdapter;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private final FocusMeteringControl focusMeteringControl;
    private final IntrinsicZoomCalculator intrinsicZoomCalculator;
    private final cl4 isLegacyDevice$delegate;
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;
    private final StreamSpecsCalculator streamSpecsCalculator;

    public CameraInfoAdapter(CameraProperties cameraProperties, CameraConfig cameraConfig, CameraStateAdapter cameraStateAdapter, CameraControlStateAdapter cameraControlStateAdapter, CameraCallbackMap cameraCallbackMap, FocusMeteringControl focusMeteringControl, CameraQuirks cameraQuirks, EncoderProfilesProvider encoderProfilesProvider, StreamConfigurationMapCompat streamConfigurationMapCompat, IntrinsicZoomCalculator intrinsicZoomCalculator, StreamSpecsCalculator streamSpecsCalculator) {
        cameraProperties.getClass();
        cameraConfig.getClass();
        cameraStateAdapter.getClass();
        cameraControlStateAdapter.getClass();
        cameraCallbackMap.getClass();
        focusMeteringControl.getClass();
        cameraQuirks.getClass();
        encoderProfilesProvider.getClass();
        streamConfigurationMapCompat.getClass();
        intrinsicZoomCalculator.getClass();
        streamSpecsCalculator.getClass();
        this.cameraProperties = cameraProperties;
        this.cameraConfig = cameraConfig;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraControlStateAdapter = cameraControlStateAdapter;
        this.cameraCallbackMap = cameraCallbackMap;
        this.focusMeteringControl = focusMeteringControl;
        this.cameraQuirks = cameraQuirks;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        this.intrinsicZoomCalculator = intrinsicZoomCalculator;
        this.streamSpecsCalculator = streamSpecsCalculator;
        DeviceInfoLogger.INSTANCE.logDeviceInfo(cameraProperties);
        int i = 1;
        this._physicalCameraInfos$delegate = new fh8(new uj(this, i));
        this.isLegacyDevice$delegate = new fh8(new f80(this, i));
        this.camera2CameraInfo$delegate = new fh8(new b11(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _physicalCameraInfos_delegate$lambda$0(CameraInfoAdapter cameraInfoAdapter) {
        Set<CameraId> physicalCameraIds = cameraInfoAdapter.cameraProperties.getMetadata().getPhysicalCameraIds();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = physicalCameraIds.iterator();
        while (it.hasNext()) {
            String strM358unboximpl = ((CameraId) it.next()).m358unboximpl();
            linkedHashSet.add(new PhysicalCameraInfoAdapter(new CameraPipeCameraProperties(new CameraConfig(strM358unboximpl, null), cameraInfoAdapter.cameraProperties.getMetadata().mo369awaitPhysicalMetadataEfqyGwQ(strM358unboximpl))));
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Camera2CameraInfo camera2CameraInfo_delegate$lambda$0(CameraInfoAdapter cameraInfoAdapter) {
        return Camera2CameraInfo.Companion.create(cameraInfoAdapter.cameraProperties);
    }

    public static /* synthetic */ void getCamera2CameraInfo$camera_camera2$annotations() {
    }

    private final int getCameraSelectorLensFacing(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled(Log.TAG)) {
            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Unrecognized lens facing: " + i + '!');
        }
        return -1;
    }

    private final Set<CameraInfo> get_physicalCameraInfos() {
        return (Set) this._physicalCameraInfos$delegate.getValue();
    }

    private final boolean isLegacyDevice() {
        return ((Boolean) this.isLegacyDevice$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLegacyDevice_delegate$lambda$0(CameraInfoAdapter cameraInfoAdapter) {
        return CameraMetadata.Companion.isHardwareLevelLegacy(cameraInfoAdapter.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.CameraInfo
    public void addCameraStateListener(Executor executor, Consumer<CameraState> consumer) {
        executor.getClass();
        consumer.getClass();
        this.cameraStateAdapter.addCameraStateListener$camera_camera2(executor, consumer);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public void addSessionCaptureCallback(Executor executor, CameraCaptureCallback cameraCaptureCallback) {
        executor.getClass();
        cameraCaptureCallback.getClass();
        this.cameraCallbackMap.addCaptureCallback(cameraCaptureCallback, executor);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set<Integer> getAvailableCapabilities() {
        int length;
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key.getClass();
        int[] iArr = (int[]) metadata.get(key);
        if (iArr == null || (length = iArr.length) == 0) {
            return ox2.b;
        }
        if (length == 1) {
            return l1.f(Integer.valueOf(iArr[0]));
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(m05.b(iArr.length));
        yr.b0(iArr, linkedHashSet);
        return linkedHashSet;
    }

    public final Camera2CameraInfo getCamera2CameraInfo$camera_camera2() {
        return (Camera2CameraInfo) this.camera2CameraInfo$delegate.getValue();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public CameraCharacteristics getCameraCharacteristics() {
        Object objUnwrapAs = this.cameraProperties.getMetadata().unwrapAs(x07.a(CameraCharacteristics.class));
        objUnwrapAs.getClass();
        return (CameraCharacteristics) objUnwrapAs;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public String getCameraId() {
        return this.cameraConfig.m39getCameraIdDz_R5H8();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Quirks getCameraQuirks() {
        return this.cameraQuirks.getQuirks();
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<CameraState> getCameraState() {
        return this.cameraStateAdapter.getCameraState$camera_camera2();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public EncoderProfilesProvider getEncoderProfilesProvider() {
        return this.encoderProfilesProvider;
    }

    @Override // androidx.camera.core.CameraInfo
    public ExposureState getExposureState() {
        return this.cameraControlStateAdapter.getExposureState();
    }

    @Override // androidx.camera.core.CameraInfo
    public String getImplementationType() {
        return isLegacyDevice() ? CameraInfo.IMPLEMENTATION_TYPE_CAMERA2_LEGACY : CameraInfo.IMPLEMENTATION_TYPE_CAMERA2;
    }

    @Override // androidx.camera.core.CameraInfo
    public float getIntrinsicZoomRatio() {
        Float fCalculateIntrinsicZoomRatio = this.intrinsicZoomCalculator.calculateIntrinsicZoomRatio(this.cameraProperties.getMetadata());
        if (fCalculateIntrinsicZoomRatio != null) {
            return fCalculateIntrinsicZoomRatio.floatValue();
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (!Logger.isWarnEnabled(Log.TAG)) {
            return 1.0f;
        }
        android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to calculate intrinsic zoom ratio for " + ((Object) CameraId.m357toStringimpl(this.cameraProperties.mo57getCameraIdDz_R5H8())));
        return 1.0f;
    }

    @Override // androidx.camera.core.CameraInfo
    public int getLensFacing() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
        key.getClass();
        Object obj = metadata.get((CameraCharacteristics.Key<Object>) key);
        obj.getClass();
        return getCameraSelectorLensFacing(((Number) obj).intValue());
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<Integer> getLowLightBoostState() {
        return this.cameraControlStateAdapter.getLowLightBoostState();
    }

    @Override // androidx.camera.core.CameraInfo
    public int getMaxTorchStrengthLevel() {
        if (isTorchStrengthSupported()) {
            return CameraMetadata.Companion.getMaxTorchStrengthLevel(this.cameraProperties.getMetadata());
        }
        return 0;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Object getPhysicalCameraCharacteristics(String str) {
        str.getClass();
        String strM352constructorimpl = CameraId.m352constructorimpl(str);
        if (this.cameraProperties.getMetadata().getPhysicalCameraIds().contains(CameraId.m351boximpl(strM352constructorimpl))) {
            return this.cameraProperties.getMetadata().mo369awaitPhysicalMetadataEfqyGwQ(strM352constructorimpl).unwrapAs(x07.a(CameraCharacteristics.class));
        }
        return null;
    }

    @Override // androidx.camera.core.CameraInfo
    public Set<CameraInfo> getPhysicalCameraInfos() {
        return get_physicalCameraInfos();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Rect getSensorRect() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        key.getClass();
        Rect rect = (Rect) metadata.get(key);
        if ("robolectric".equals(Build.FINGERPRINT) && rect == null) {
            return new Rect(0, 0, MapTrimmers.DEFAULT_VALUE_MAX_LENGTH, 3000);
        }
        rect.getClass();
        return rect;
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees(int i) {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_ORIENTATION;
        key.getClass();
        Object obj = metadata.get((CameraCharacteristics.Key<Object>) key);
        obj.getClass();
        return CameraOrientationUtil.getRelativeImageRotation(CameraOrientationUtil.surfaceRotationToDegrees(i), ((Number) obj).intValue(), 1 == getLensFacing());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set<DynamicRange> getSupportedDynamicRanges() {
        return DynamicRangeProfilesCompat.Companion.fromCameraMetaData(this.cameraProperties.getMetadata()).getSupportedDynamicRanges();
    }

    @Override // androidx.camera.core.CameraInfo
    public Set<Range<Integer>> getSupportedFrameRateRanges() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES;
        key.getClass();
        Range[] rangeArr = (Range[]) metadata.get(key);
        return rangeArr != null ? yr.k0(rangeArr) : ox2.b;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List<Size> getSupportedHighResolutions(int i) {
        Size[] highResolutionOutputSizes = this.streamConfigurationMapCompat.getHighResolutionOutputSizes(i);
        return highResolutionOutputSizes != null ? yr.h0(highResolutionOutputSizes) : kx2.b;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set<Range<Integer>> getSupportedHighSpeedFrameRateRanges() {
        Range<Integer>[] highSpeedVideoFpsRanges = this.streamConfigurationMapCompat.getHighSpeedVideoFpsRanges();
        return highSpeedVideoFpsRanges != null ? yr.k0(highSpeedVideoFpsRanges) : ox2.b;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set<Range<Integer>> getSupportedHighSpeedFrameRateRangesFor(Size size) {
        Object aVar;
        size.getClass();
        try {
            Range<Integer>[] highSpeedVideoFpsRangesFor = this.streamConfigurationMapCompat.getHighSpeedVideoFpsRangesFor(size);
            aVar = highSpeedVideoFpsRangesFor != null ? yr.k0(highSpeedVideoFpsRangesFor) : null;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Set<Range<Integer>> set = (Set) (aVar instanceof k57.a ? null : aVar);
        return set == null ? ox2.b : set;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List<Size> getSupportedHighSpeedResolutions() {
        Size[] highSpeedVideoSizes = this.streamConfigurationMapCompat.getHighSpeedVideoSizes();
        return highSpeedVideoSizes != null ? yr.h0(highSpeedVideoSizes) : kx2.b;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List<Size> getSupportedHighSpeedResolutionsFor(Range<Integer> range) {
        Object aVar;
        range.getClass();
        try {
            Size[] highSpeedVideoSizesFor = this.streamConfigurationMapCompat.getHighSpeedVideoSizesFor(range);
            aVar = highSpeedVideoSizesFor != null ? yr.h0(highSpeedVideoSizesFor) : null;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        List<Size> list = (List) (aVar instanceof k57.a ? null : aVar);
        return list == null ? kx2.b : list;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set<Integer> getSupportedOutputFormats() {
        Integer[] outputFormats = this.streamConfigurationMapCompat.getOutputFormats();
        return outputFormats != null ? yr.k0(outputFormats) : ox2.b;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List<Size> getSupportedResolutions(int i) {
        Size[] outputSizes = this.streamConfigurationMapCompat.getOutputSizes(i);
        return outputSizes != null ? yr.h0(outputSizes) : kx2.b;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Timebase getTimebase() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE;
        key.getClass();
        Object obj = metadata.get((CameraCharacteristics.Key<Object>) key);
        obj.getClass();
        int iIntValue = ((Number) obj).intValue();
        if (iIntValue != 0 && iIntValue == 1) {
            return Timebase.REALTIME;
        }
        return Timebase.UPTIME;
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<Integer> getTorchState() {
        return this.cameraControlStateAdapter.getTorchStateLiveData();
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<Integer> getTorchStrengthLevel() {
        return isTorchStrengthSupported() ? this.cameraControlStateAdapter.getTorchStrengthLiveData() : new MutableLiveData(0);
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<ZoomState> getZoomState() {
        return this.cameraControlStateAdapter.getZoomStateLiveData();
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean hasFlashUnit() {
        return FlashAvailabilityCheckerKt.isFlashAvailable$default(this.cameraProperties, false, 1, null);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isExternalCamera() {
        if (getLensFacing() == 2) {
            return true;
        }
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        key.getClass();
        Integer num = (Integer) metadata.get(key);
        return num != null && num.intValue() == 4;
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isFocusMeteringSupported(FocusMeteringAction focusMeteringAction) {
        focusMeteringAction.getClass();
        return this.focusMeteringControl.isFocusMeteringSupported(focusMeteringAction);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isHighSpeedSupported() {
        return CameraMetadata.Companion.getSupportsHighSpeedVideo(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isLogicalMultiCameraSupported() {
        return CameraMetadata.Companion.getSupportsLogicalMultiCamera(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isLowLightBoostSupported() {
        return CameraMetadata.Companion.getSupportsLowLightBoost(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isPreviewStabilizationSupported() {
        return CameraMetadata.Companion.getSupportsPreviewStabilization(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isPrivateReprocessingSupported() {
        return CameraMetadata.Companion.getSupportsPrivateReprocessing(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isTorchStrengthSupported() {
        return CameraMetadata.Companion.getSupportsTorchStrength(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isUseCaseCombinationSupported(List<? extends UseCase> list, int i, boolean z, androidx.camera.core.impl.CameraConfig cameraConfig) {
        list.getClass();
        cameraConfig.getClass();
        try {
            StreamSpecsCalculator.calculateSuggestedStreamSpecs$default(this.streamSpecsCalculator, i, this, list, null, cameraConfig, 0, null, z, false, 360, null);
            return true;
        } catch (IllegalArgumentException e) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isDebugEnabled(Log.TAG)) {
                return false;
            }
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CameraInfoAdapter#isUseCaseCombinationSupported: calculateSuggestedStreamSpecs failed", e);
            return false;
        }
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isVideoStabilizationSupported() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES;
        key.getClass();
        int[] iArr = (int[]) metadata.get(key);
        return iArr != null && yr.C(iArr, 1);
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isZslSupported() {
        return isPrivateReprocessingSupported() && DeviceQuirks.INSTANCE.get(ZslDisablerQuirk.class) == null;
    }

    @Override // androidx.camera.core.CameraInfo
    public Set<DynamicRange> querySupportedDynamicRanges(Set<DynamicRange> set) {
        set.getClass();
        return DynamicRanges.findAllPossibleMatches(set, getSupportedDynamicRanges());
    }

    @Override // androidx.camera.core.CameraInfo
    public void removeCameraStateListener(Consumer<CameraState> consumer) {
        consumer.getClass();
        this.cameraStateAdapter.removeCameraStateListener$camera_camera2(consumer);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public void removeSessionCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
        cameraCaptureCallback.getClass();
        this.cameraCallbackMap.removeCaptureCallback(cameraCaptureCallback);
    }

    public String toString() {
        return "CameraInfoAdapter<" + this.cameraConfig + ".cameraId>";
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, Camera2CameraInfo.class)) {
            T t = (T) getCamera2CameraInfo$camera_camera2();
            t.getClass();
            return t;
        }
        if (ne4Var.equals(x07.a(CameraProperties.class))) {
            T t2 = (T) this.cameraProperties;
            t2.getClass();
            return t2;
        }
        boolean zEquals = ne4Var.equals(x07.a(CameraMetadata.class));
        CameraProperties cameraProperties = this.cameraProperties;
        if (!zEquals) {
            return (T) cameraProperties.getMetadata().unwrapAs(ne4Var);
        }
        T t3 = (T) cameraProperties.getMetadata();
        t3.getClass();
        return t3;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCameraId-zjxgSG8, reason: not valid java name */
        public final String m3getCameraIdzjxgSG8(CameraInfo cameraInfo) {
            cameraInfo.getClass();
            CameraMetadata cameraMetadata = (CameraMetadata) unwrapAs(cameraInfo, x07.a(CameraMetadata.class));
            if (cameraMetadata != null) {
                return cameraMetadata.mo370getCameraDz_R5H8();
            }
            return null;
        }

        public final <T> T unwrapAs(CameraInfo cameraInfo, ne4<T> ne4Var) {
            cameraInfo.getClass();
            ne4Var.getClass();
            if (cameraInfo instanceof UnsafeWrapper) {
                return (T) ((UnsafeWrapper) cameraInfo).unwrapAs(ne4Var);
            }
            if (cameraInfo instanceof CameraInfoInternal) {
                CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfo;
                if (cameraInfoInternal.getImplementation() != cameraInfo) {
                    CameraInfoInternal implementation = cameraInfoInternal.getImplementation();
                    implementation.getClass();
                    return (T) unwrapAs(implementation, ne4Var);
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees() {
        return getSensorRotationDegrees(0);
    }
}
