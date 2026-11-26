package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.ColorSpaceProfiles;
import android.hardware.camera2.params.MultiResolutionStreamConfigurationMap;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import androidx.camera.camera2.pipe.compat.Api33Compat;
import androidx.camera.camera2.pipe.compat.Api34Compat;
import androidx.camera.camera2.pipe.compat.Api35Compat;
import androidx.camera.camera2.pipe.compat.Camera2ColorSpaceProfiles;
import androidx.camera.camera2.pipe.compat.Camera2MultiResolutionStreamConfigurationMap;
import defpackage.e02;
import defpackage.oz0;
import defpackage.x07;
import defpackage.xy;
import defpackage.yr;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraMetadata extends Metadata, UnsafeWrapper {
    public static final int CAPABILITIES_BURST_CAPTURE = 6;
    public static final int CAPABILITIES_COLOR_SPACE_PROFILES = 20;
    public static final int CAPABILITIES_CONSTRAINED_HIGH_SPEED_VIDEO = 9;
    public static final int CAPABILITIES_DEPTH_OUTPUT = 8;
    public static final int CAPABILITIES_DYNAMIC_RANGE_TEN_BIT = 18;
    public static final int CAPABILITIES_LOGICAL_MULTI_CAMERA = 11;
    public static final int CAPABILITIES_MANUAL_POST_PROCESSING = 2;
    public static final int CAPABILITIES_MANUAL_SENSOR = 1;
    public static final int CAPABILITIES_MONOCHROME = 12;
    public static final int CAPABILITIES_MOTION_TRACKING = 10;
    public static final int CAPABILITIES_OFFLINE_REPROCESSING = 15;
    public static final int CAPABILITIES_PRIVATE_REPROCESSING = 4;
    public static final int CAPABILITIES_RAW = 3;
    public static final int CAPABILITIES_READ_SENSOR_SETTINGS = 5;
    public static final int CAPABILITIES_REMOSAIC_REPROCESSING = 17;
    public static final int CAPABILITIES_SECURE_IMAGE_DATA = 13;
    public static final int CAPABILITIES_STREAM_USE_CASE = 19;
    public static final int CAPABILITIES_SYSTEM_CAMERA = 14;
    public static final int CAPABILITIES_ULTRA_HIGH_RESOLUTION_SENSOR = 16;
    public static final int CAPABILITIES_YUV_REPROCESSING = 7;
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Metadata.Key<CameraColorSpaceProfiles> CAMERA_AVAILABLE_COLOR_SPACE_PROFILES;
        private static final Metadata.Key<CameraMultiResolutionStreamConfigurationMap> CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP;
        private static final Metadata.Key<CameraStreamConfigurationMap> CAMERA_STREAM_CONFIGURATION_MAP;
        public static final int CAPABILITIES_BURST_CAPTURE = 6;
        public static final int CAPABILITIES_COLOR_SPACE_PROFILES = 20;
        public static final int CAPABILITIES_CONSTRAINED_HIGH_SPEED_VIDEO = 9;
        public static final int CAPABILITIES_DEPTH_OUTPUT = 8;
        public static final int CAPABILITIES_DYNAMIC_RANGE_TEN_BIT = 18;
        public static final int CAPABILITIES_LOGICAL_MULTI_CAMERA = 11;
        public static final int CAPABILITIES_MANUAL_POST_PROCESSING = 2;
        public static final int CAPABILITIES_MANUAL_SENSOR = 1;
        public static final int CAPABILITIES_MONOCHROME = 12;
        public static final int CAPABILITIES_MOTION_TRACKING = 10;
        public static final int CAPABILITIES_OFFLINE_REPROCESSING = 15;
        public static final int CAPABILITIES_PRIVATE_REPROCESSING = 4;
        public static final int CAPABILITIES_RAW = 3;
        public static final int CAPABILITIES_READ_SENSOR_SETTINGS = 5;
        public static final int CAPABILITIES_REMOSAIC_REPROCESSING = 17;
        public static final int CAPABILITIES_SECURE_IMAGE_DATA = 13;
        public static final int CAPABILITIES_STREAM_USE_CASE = 19;
        public static final int CAPABILITIES_SYSTEM_CAMERA = 14;
        public static final int CAPABILITIES_ULTRA_HIGH_RESOLUTION_SENSOR = 16;
        public static final int CAPABILITIES_YUV_REPROCESSING = 7;
        private static int[] EMPTY_INT_ARRAY;

        static {
            Metadata.Key.Companion companion = Metadata.Key.Companion;
            CAMERA_STREAM_CONFIGURATION_MAP = companion.create("androidx.camera.camera2.pipe.scalar.streamConfigurationMap", x07.a(CameraStreamConfigurationMap.class));
            CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP = companion.create("androidx.camera.camera2.pipe.scalar.multiResolutionStreamConfigurationMap", x07.a(CameraMultiResolutionStreamConfigurationMap.class));
            CAMERA_AVAILABLE_COLOR_SPACE_PROFILES = companion.create("androidx.camera.camera2.pipe.request.availableColorSpaceProfilesMap", x07.a(CameraColorSpaceProfiles.class));
            EMPTY_INT_ARRAY = new int[0];
        }

        private Companion() {
        }

        public static /* synthetic */ void getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES$annotations() {
        }

        public static /* synthetic */ void getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP$annotations() {
        }

        public static /* synthetic */ void getCAMERA_STREAM_CONFIGURATION_MAP$annotations() {
        }

        public final int[] getAvailableCapabilities(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
            key.getClass();
            int[] iArr = (int[]) cameraMetadata.get(key);
            return iArr == null ? EMPTY_INT_ARRAY : iArr;
        }

        public final CameraColorSpaceProfiles getAvailableColorSpaceProfiles(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraColorSpaceProfiles cameraColorSpaceProfiles = (CameraColorSpaceProfiles) cameraMetadata.get(CAMERA_AVAILABLE_COLOR_SPACE_PROFILES);
            if (cameraColorSpaceProfiles != null) {
                return cameraColorSpaceProfiles;
            }
            if (Build.VERSION.SDK_INT < 34) {
                return UnsupportedCameraColorSpaceProfiles.INSTANCE;
            }
            CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_COLOR_SPACE_PROFILES;
            key.getClass();
            ColorSpaceProfiles colorSpaceProfiles = (ColorSpaceProfiles) cameraMetadata.get(key);
            if (colorSpaceProfiles != null) {
                return new Camera2ColorSpaceProfiles(colorSpaceProfiles);
            }
            return null;
        }

        public final int[] getAvailableVideoStabilizationModes(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES;
            key.getClass();
            int[] iArr = (int[]) cameraMetadata.get(key);
            return iArr == null ? EMPTY_INT_ARRAY : iArr;
        }

        public final Metadata.Key<CameraColorSpaceProfiles> getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES() {
            return CAMERA_AVAILABLE_COLOR_SPACE_PROFILES;
        }

        public final Metadata.Key<CameraMultiResolutionStreamConfigurationMap> getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP() {
            return CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP;
        }

        public final Metadata.Key<CameraStreamConfigurationMap> getCAMERA_STREAM_CONFIGURATION_MAP() {
            return CAMERA_STREAM_CONFIGURATION_MAP;
        }

        public final int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            if (Build.VERSION.SDK_INT >= 35) {
                return Api35Compat.getDefaultTorchStrengthLevel(cameraMetadata);
            }
            return 1;
        }

        public final int[] getEMPTY_INT_ARRAY() {
            return EMPTY_INT_ARRAY;
        }

        public final int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            if (Build.VERSION.SDK_INT >= 35) {
                return Api35Compat.getMaxTorchStrengthLevel(cameraMetadata);
            }
            return 1;
        }

        public final CameraMultiResolutionStreamConfigurationMap getMultiResolutionStreamConfigurationMap(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraMultiResolutionStreamConfigurationMap cameraMultiResolutionStreamConfigurationMap = (CameraMultiResolutionStreamConfigurationMap) cameraMetadata.get(CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP);
            if (cameraMultiResolutionStreamConfigurationMap != null) {
                return cameraMultiResolutionStreamConfigurationMap;
            }
            if (Build.VERSION.SDK_INT >= 31) {
                CameraCharacteristics.Key key = CameraCharacteristics.SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP;
                key.getClass();
                MultiResolutionStreamConfigurationMap multiResolutionStreamConfigurationMap = (MultiResolutionStreamConfigurationMap) cameraMetadata.get(key);
                if (multiResolutionStreamConfigurationMap != null) {
                    return new Camera2MultiResolutionStreamConfigurationMap(multiResolutionStreamConfigurationMap);
                }
            }
            return null;
        }

        public final CameraStreamConfigurationMap getStreamConfigurationMap(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraStreamConfigurationMap cameraStreamConfigurationMap = (CameraStreamConfigurationMap) cameraMetadata.get(CAMERA_STREAM_CONFIGURATION_MAP);
            if (cameraStreamConfigurationMap != null) {
                return cameraStreamConfigurationMap;
            }
            CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
            key.getClass();
            StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(key);
            if (streamConfigurationMap != null) {
                return new oz0(streamConfigurationMap);
            }
            return null;
        }

        public final boolean getSupportsAutoFocusTrigger(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE;
            key.getClass();
            Float f = (Float) cameraMetadata.get(key);
            if (f != null) {
                return f.floatValue() > 0.0f;
            }
            CameraCharacteristics.Key key2 = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
            key2.getClass();
            int[] iArr = (int[]) cameraMetadata.get(key2);
            if (iArr == null) {
                return false;
            }
            return yr.C(iArr, 1) || yr.C(iArr, 2) || yr.C(iArr, 4) || yr.C(iArr, 3);
        }

        public final boolean getSupportsBurstCapture(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 6);
        }

        public final boolean getSupportsColorSpaceProfiles(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 20);
        }

        public final boolean getSupportsDepthOutput(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 8);
        }

        public final boolean getSupportsDynamicRangeTenBit(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 18);
        }

        public final boolean getSupportsHighSpeedVideo(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 9);
        }

        public final boolean getSupportsLogicalMultiCamera(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 11);
        }

        public final boolean getSupportsLowLightBoost(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
            key.getClass();
            int[] iArr = (int[]) cameraMetadata.get(key);
            if (iArr == null) {
                return false;
            }
            return yr.C(iArr, 6);
        }

        public final boolean getSupportsManualPostProcessing(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 2);
        }

        public final boolean getSupportsManualSensor(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 1);
        }

        public final boolean getSupportsMonochrome(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 12);
        }

        public final boolean getSupportsMotionTracking(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 10);
        }

        public final boolean getSupportsOfflineReprocessing(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 15);
        }

        public final boolean getSupportsPreviewStabilization(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                return Api33Compat.INSTANCE.supportsPreviewStabilization(cameraMetadata);
            }
            return false;
        }

        public final boolean getSupportsPrivateReprocessing(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 4);
        }

        public final boolean getSupportsRaw(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 3);
        }

        public final boolean getSupportsRemosaicProcessing(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 17);
        }

        public final boolean getSupportsSecureImageData(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 13);
        }

        public final boolean getSupportsSensorSettings(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 5);
        }

        public final boolean getSupportsStreamUseCase(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 19);
        }

        public final boolean getSupportsSystemCamera(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 14);
        }

        public final boolean getSupportsTorchStrength(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            return Build.VERSION.SDK_INT >= 35 && Api35Compat.isTorchStrengthSupported(cameraMetadata);
        }

        public final boolean getSupportsUltraHighResolutionSensor(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 16);
        }

        public final boolean getSupportsYuvReprocessing(CameraMetadata cameraMetadata) {
            return xy.g(cameraMetadata, this, cameraMetadata, 7);
        }

        public final boolean getSupportsZoomOverride(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            return Build.VERSION.SDK_INT >= 34 && Api34Compat.isZoomOverrideSupported(cameraMetadata);
        }

        public final boolean isHardwareLevel3(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 3;
        }

        public final boolean isHardwareLevelExternal(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 4;
        }

        public final boolean isHardwareLevelFull(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 1;
        }

        public final boolean isHardwareLevelLegacy(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 2;
        }

        public final boolean isHardwareLevelLimited(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 0;
        }

        public final void setEMPTY_INT_ARRAY(int[] iArr) {
            iArr.getClass();
            EMPTY_INT_ARRAY = iArr;
        }
    }

    static int[] getAvailableCapabilities(CameraMetadata cameraMetadata) {
        return Companion.getAvailableCapabilities(cameraMetadata);
    }

    static CameraColorSpaceProfiles getAvailableColorSpaceProfiles(CameraMetadata cameraMetadata) {
        return Companion.getAvailableColorSpaceProfiles(cameraMetadata);
    }

    static int[] getAvailableVideoStabilizationModes(CameraMetadata cameraMetadata) {
        return Companion.getAvailableVideoStabilizationModes(cameraMetadata);
    }

    static Metadata.Key<CameraColorSpaceProfiles> getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES() {
        return Companion.getCAMERA_AVAILABLE_COLOR_SPACE_PROFILES();
    }

    static Metadata.Key<CameraMultiResolutionStreamConfigurationMap> getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP() {
        return Companion.getCAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP();
    }

    static Metadata.Key<CameraStreamConfigurationMap> getCAMERA_STREAM_CONFIGURATION_MAP() {
        return Companion.getCAMERA_STREAM_CONFIGURATION_MAP();
    }

    static int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
        return Companion.getDefaultTorchStrengthLevel(cameraMetadata);
    }

    static int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
        return Companion.getMaxTorchStrengthLevel(cameraMetadata);
    }

    static CameraMultiResolutionStreamConfigurationMap getMultiResolutionStreamConfigurationMap(CameraMetadata cameraMetadata) {
        return Companion.getMultiResolutionStreamConfigurationMap(cameraMetadata);
    }

    static CameraStreamConfigurationMap getStreamConfigurationMap(CameraMetadata cameraMetadata) {
        return Companion.getStreamConfigurationMap(cameraMetadata);
    }

    static boolean getSupportsAutoFocusTrigger(CameraMetadata cameraMetadata) {
        return Companion.getSupportsAutoFocusTrigger(cameraMetadata);
    }

    static boolean getSupportsBurstCapture(CameraMetadata cameraMetadata) {
        return Companion.getSupportsBurstCapture(cameraMetadata);
    }

    static boolean getSupportsColorSpaceProfiles(CameraMetadata cameraMetadata) {
        return Companion.getSupportsColorSpaceProfiles(cameraMetadata);
    }

    static boolean getSupportsDepthOutput(CameraMetadata cameraMetadata) {
        return Companion.getSupportsDepthOutput(cameraMetadata);
    }

    static boolean getSupportsDynamicRangeTenBit(CameraMetadata cameraMetadata) {
        return Companion.getSupportsDynamicRangeTenBit(cameraMetadata);
    }

    static boolean getSupportsHighSpeedVideo(CameraMetadata cameraMetadata) {
        return Companion.getSupportsHighSpeedVideo(cameraMetadata);
    }

    static boolean getSupportsLogicalMultiCamera(CameraMetadata cameraMetadata) {
        return Companion.getSupportsLogicalMultiCamera(cameraMetadata);
    }

    static boolean getSupportsLowLightBoost(CameraMetadata cameraMetadata) {
        return Companion.getSupportsLowLightBoost(cameraMetadata);
    }

    static boolean getSupportsManualPostProcessing(CameraMetadata cameraMetadata) {
        return Companion.getSupportsManualPostProcessing(cameraMetadata);
    }

    static boolean getSupportsManualSensor(CameraMetadata cameraMetadata) {
        return Companion.getSupportsManualSensor(cameraMetadata);
    }

    static boolean getSupportsMonochrome(CameraMetadata cameraMetadata) {
        return Companion.getSupportsMonochrome(cameraMetadata);
    }

    static boolean getSupportsMotionTracking(CameraMetadata cameraMetadata) {
        return Companion.getSupportsMotionTracking(cameraMetadata);
    }

    static boolean getSupportsOfflineReprocessing(CameraMetadata cameraMetadata) {
        return Companion.getSupportsOfflineReprocessing(cameraMetadata);
    }

    static boolean getSupportsPreviewStabilization(CameraMetadata cameraMetadata) {
        return Companion.getSupportsPreviewStabilization(cameraMetadata);
    }

    static boolean getSupportsPrivateReprocessing(CameraMetadata cameraMetadata) {
        return Companion.getSupportsPrivateReprocessing(cameraMetadata);
    }

    static boolean getSupportsRaw(CameraMetadata cameraMetadata) {
        return Companion.getSupportsRaw(cameraMetadata);
    }

    static boolean getSupportsRemosaicProcessing(CameraMetadata cameraMetadata) {
        return Companion.getSupportsRemosaicProcessing(cameraMetadata);
    }

    static boolean getSupportsSecureImageData(CameraMetadata cameraMetadata) {
        return Companion.getSupportsSecureImageData(cameraMetadata);
    }

    static boolean getSupportsSensorSettings(CameraMetadata cameraMetadata) {
        return Companion.getSupportsSensorSettings(cameraMetadata);
    }

    static boolean getSupportsStreamUseCase(CameraMetadata cameraMetadata) {
        return Companion.getSupportsStreamUseCase(cameraMetadata);
    }

    static boolean getSupportsSystemCamera(CameraMetadata cameraMetadata) {
        return Companion.getSupportsSystemCamera(cameraMetadata);
    }

    static boolean getSupportsTorchStrength(CameraMetadata cameraMetadata) {
        return Companion.getSupportsTorchStrength(cameraMetadata);
    }

    static boolean getSupportsUltraHighResolutionSensor(CameraMetadata cameraMetadata) {
        return Companion.getSupportsUltraHighResolutionSensor(cameraMetadata);
    }

    static boolean getSupportsYuvReprocessing(CameraMetadata cameraMetadata) {
        return Companion.getSupportsYuvReprocessing(cameraMetadata);
    }

    static boolean getSupportsZoomOverride(CameraMetadata cameraMetadata) {
        return Companion.getSupportsZoomOverride(cameraMetadata);
    }

    static boolean isHardwareLevel3(CameraMetadata cameraMetadata) {
        return Companion.isHardwareLevel3(cameraMetadata);
    }

    static boolean isHardwareLevelExternal(CameraMetadata cameraMetadata) {
        return Companion.isHardwareLevelExternal(cameraMetadata);
    }

    static boolean isHardwareLevelFull(CameraMetadata cameraMetadata) {
        return Companion.isHardwareLevelFull(cameraMetadata);
    }

    static boolean isHardwareLevelLegacy(CameraMetadata cameraMetadata) {
        return Companion.isHardwareLevelLegacy(cameraMetadata);
    }

    static boolean isHardwareLevelLimited(CameraMetadata cameraMetadata) {
        return Companion.isHardwareLevelLimited(cameraMetadata);
    }

    CameraExtensionMetadata awaitExtensionMetadata(int i);

    /* JADX INFO: renamed from: awaitPhysicalMetadata-EfqyGwQ, reason: not valid java name */
    CameraMetadata mo369awaitPhysicalMetadataEfqyGwQ(String str);

    <T> T get(CameraCharacteristics.Key<T> key);

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String mo370getCameraDz_R5H8();

    Object getExtensionMetadata(int i, e02<? super CameraExtensionMetadata> e02Var);

    Set<CameraCharacteristics.Key<?>> getKeys();

    <T> T getOrDefault(CameraCharacteristics.Key<T> key, T t);

    Set<CameraId> getPhysicalCameraIds();

    /* JADX INFO: renamed from: getPhysicalMetadata-0r8Bogc, reason: not valid java name */
    Object mo371getPhysicalMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var);

    Set<CaptureRequest.Key<?>> getPhysicalRequestKeys();

    Set<CaptureRequest.Key<?>> getRequestKeys();

    Set<CaptureResult.Key<?>> getResultKeys();

    Set<CameraCharacteristics.Key<?>> getSessionCharacteristicsKeys();

    Set<CaptureRequest.Key<?>> getSessionKeys();

    Set<Integer> getSupportedExtensions();

    boolean isRedacted();
}
