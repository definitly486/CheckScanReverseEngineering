package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.ImageReader;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.yr;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Api33Compat {
    public static final Api33Compat INSTANCE = new Api33Compat();

    private Api33Compat() {
    }

    public static final Set<CaptureRequest.Key<Object>> getAvailableCaptureRequestKeys(CameraExtensionCharacteristics cameraExtensionCharacteristics, int i) {
        cameraExtensionCharacteristics.getClass();
        Set<CaptureRequest.Key<Object>> availableCaptureRequestKeys = cameraExtensionCharacteristics.getAvailableCaptureRequestKeys(i);
        availableCaptureRequestKeys.getClass();
        return availableCaptureRequestKeys;
    }

    public static final Set<CaptureResult.Key<Object>> getAvailableCaptureResultKeys(CameraExtensionCharacteristics cameraExtensionCharacteristics, int i) {
        cameraExtensionCharacteristics.getClass();
        Set<CaptureResult.Key<Object>> availableCaptureResultKeys = cameraExtensionCharacteristics.getAvailableCaptureResultKeys(i);
        availableCaptureResultKeys.getClass();
        return availableCaptureResultKeys;
    }

    public static final long[] getAvailableStreamUseCases(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
        key.getClass();
        return (long[]) cameraMetadata.get(key);
    }

    public static final long getDynamicRangeProfile(OutputConfiguration outputConfiguration) {
        outputConfiguration.getClass();
        return outputConfiguration.getDynamicRangeProfile();
    }

    public static final int getMirrorMode(OutputConfiguration outputConfiguration) {
        outputConfiguration.getClass();
        return outputConfiguration.getMirrorMode();
    }

    public static final long getStreamUseCase(OutputConfiguration outputConfiguration) {
        outputConfiguration.getClass();
        return outputConfiguration.getStreamUseCase();
    }

    public static final int getTimestampBase(OutputConfiguration outputConfiguration) {
        outputConfiguration.getClass();
        return outputConfiguration.getTimestampBase();
    }

    public static final ImageReader newImageReaderFromImageReaderBuilder(int i, int i2, Integer num, Integer num2, Long l, Integer num3, Integer num4) {
        ImageReader.Builder builder = new ImageReader.Builder(i, i2);
        if (num != null) {
            builder.setImageFormat(num.intValue());
        }
        if (num2 != null) {
            builder.setMaxImages(num2.intValue());
        }
        if (l != null) {
            builder.setUsage(l.longValue());
        }
        if (num3 != null) {
            builder.setDefaultDataSpace(num3.intValue());
        }
        if (num4 != null) {
            builder.setDefaultHardwareBufferFormat(num4.intValue());
        }
        ImageReader imageReaderBuild = builder.build();
        imageReaderBuild.getClass();
        return imageReaderBuild;
    }

    public static /* synthetic */ ImageReader newImageReaderFromImageReaderBuilder$default(int i, int i2, Integer num, Integer num2, Long l, Integer num3, Integer num4, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            num = null;
        }
        if ((i3 & 8) != 0) {
            num2 = null;
        }
        if ((i3 & 16) != 0) {
            l = null;
        }
        if ((i3 & 32) != 0) {
            num3 = null;
        }
        if ((i3 & 64) != 0) {
            num4 = null;
        }
        return newImageReaderFromImageReaderBuilder(i, i2, num, num2, l, num3, num4);
    }

    public static final void setDynamicRangeProfile(OutputConfiguration outputConfiguration, long j) {
        outputConfiguration.getClass();
        outputConfiguration.setDynamicRangeProfile(j);
    }

    public static final void setMirrorMode(OutputConfiguration outputConfiguration, int i) {
        outputConfiguration.getClass();
        outputConfiguration.setMirrorMode(i);
    }

    public static final void setStreamUseCase(OutputConfiguration outputConfiguration, long j) {
        outputConfiguration.getClass();
        outputConfiguration.setStreamUseCase(j);
    }

    public static final void setTimestampBase(OutputConfiguration outputConfiguration, int i) {
        outputConfiguration.getClass();
        outputConfiguration.setTimestampBase(i);
    }

    public final boolean supportsPreviewStabilization(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        return yr.C(CameraMetadata.Companion.getAvailableVideoStabilizationModes(cameraMetadata), 2);
    }
}
