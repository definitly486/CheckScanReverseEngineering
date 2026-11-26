package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.utils.ExifData;
import java.nio.BufferUnderflowException;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureResultAdapterKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData.AeMode getAeMode(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.CONTROL_AE_MODE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData.AeMode.OFF;
        }
        if (num != null && num.intValue() == 1) {
            return CameraCaptureMetaData.AeMode.ON;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData.AeMode.ON_AUTO_FLASH;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData.AeMode.ON_ALWAYS_FLASH;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData.AeMode.ON_AUTO_FLASH_REDEYE;
        }
        if (num == null) {
            return CameraCaptureMetaData.AeMode.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AE mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData.AeMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData.AeState getAeState(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.CONTROL_AE_STATE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData.AeState.INACTIVE;
        }
        if ((num != null && num.intValue() == 1) || (num != null && num.intValue() == 5)) {
            return CameraCaptureMetaData.AeState.SEARCHING;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData.AeState.FLASH_REQUIRED;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData.AeState.CONVERGED;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData.AeState.LOCKED;
        }
        if (num == null) {
            return CameraCaptureMetaData.AeState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AE state (" + num.intValue() + ") for " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData.AeState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData.AfMode getAfMode(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.CONTROL_AF_MODE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if ((num != null && num.intValue() == 0) || (num != null && num.intValue() == 5)) {
            return CameraCaptureMetaData.AfMode.OFF;
        }
        if ((num != null && num.intValue() == 1) || (num != null && num.intValue() == 2)) {
            return CameraCaptureMetaData.AfMode.ON_MANUAL_AUTO;
        }
        if ((num != null && num.intValue() == 4) || (num != null && num.intValue() == 3)) {
            return CameraCaptureMetaData.AfMode.ON_CONTINUOUS_AUTO;
        }
        if (num == null) {
            return CameraCaptureMetaData.AfMode.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AF mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData.AfMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData.AfState getAfState(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.CONTROL_AF_STATE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData.AfState.INACTIVE;
        }
        if ((num != null && num.intValue() == 3) || (num != null && num.intValue() == 1)) {
            return CameraCaptureMetaData.AfState.SCANNING;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData.AfState.LOCKED_FOCUSED;
        }
        if (num != null && num.intValue() == 5) {
            return CameraCaptureMetaData.AfState.LOCKED_NOT_FOCUSED;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData.AfState.PASSIVE_FOCUSED;
        }
        if (num != null && num.intValue() == 6) {
            return CameraCaptureMetaData.AfState.PASSIVE_NOT_FOCUSED;
        }
        if (num == null) {
            return CameraCaptureMetaData.AfState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AF state (" + num.intValue() + ") for " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData.AfState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData.AwbMode getAwbMode(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.CONTROL_AWB_MODE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData.AwbMode.OFF;
        }
        if (num != null && num.intValue() == 1) {
            return CameraCaptureMetaData.AwbMode.AUTO;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData.AwbMode.INCANDESCENT;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData.AwbMode.FLUORESCENT;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData.AwbMode.WARM_FLUORESCENT;
        }
        if (num != null && num.intValue() == 5) {
            return CameraCaptureMetaData.AwbMode.DAYLIGHT;
        }
        if (num != null && num.intValue() == 6) {
            return CameraCaptureMetaData.AwbMode.CLOUDY_DAYLIGHT;
        }
        if (num != null && num.intValue() == 7) {
            return CameraCaptureMetaData.AwbMode.TWILIGHT;
        }
        if (num != null && num.intValue() == 8) {
            return CameraCaptureMetaData.AwbMode.SHADE;
        }
        if (num == null) {
            return CameraCaptureMetaData.AwbMode.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AWB mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData.AwbMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData.AwbState getAwbState(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.CONTROL_AWB_STATE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData.AwbState.INACTIVE;
        }
        if (num != null && num.intValue() == 1) {
            return CameraCaptureMetaData.AwbState.METERING;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData.AwbState.CONVERGED;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData.AwbState.LOCKED;
        }
        if (num == null) {
            return CameraCaptureMetaData.AwbState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AWB state (" + num.intValue() + ") for " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData.AwbState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData.FlashState getFlashState(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.FLASH_STATE;
        key.getClass();
        Integer num = (Integer) frameMetadata.get(key);
        if ((num != null && num.intValue() == 0) || (num != null && num.intValue() == 1)) {
            return CameraCaptureMetaData.FlashState.NONE;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData.FlashState.READY;
        }
        if ((num != null && num.intValue() == 3) || (num != null && num.intValue() == 4)) {
            return CameraCaptureMetaData.FlashState.FIRED;
        }
        if (num == null) {
            return CameraCaptureMetaData.FlashState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown flash state (" + num.intValue() + ") for " + ((Object) FrameNumber.m468toStringimpl(frameMetadata.mo462getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData.FlashState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long getTimestamp(FrameMetadata frameMetadata) {
        CaptureResult.Key key = CaptureResult.SENSOR_TIMESTAMP;
        key.getClass();
        Object orDefault = frameMetadata.getOrDefault((CaptureResult.Key<long>) key, -1L);
        orDefault.getClass();
        return ((Number) orDefault).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void populateExifData(FrameMetadata frameMetadata, ExifData.Builder builder) {
        try {
            CaptureResult.Key key = CaptureResult.JPEG_ORIENTATION;
            key.getClass();
            Integer num = (Integer) frameMetadata.get(key);
            if (num != null) {
                builder.setOrientationDegrees(num.intValue());
            }
        } catch (BufferUnderflowException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to get JPEG orientation.");
            }
        }
        CaptureResult.Key key2 = CaptureResult.SENSOR_EXPOSURE_TIME;
        key2.getClass();
        Long l = (Long) frameMetadata.get(key2);
        if (l != null) {
            builder.setExposureTimeNanos(l.longValue());
        }
        CaptureResult.Key key3 = CaptureResult.LENS_APERTURE;
        key3.getClass();
        Float f = (Float) frameMetadata.get(key3);
        if (f != null) {
            builder.setLensFNumber(f.floatValue());
        }
        CaptureResult.Key key4 = CaptureResult.SENSOR_SENSITIVITY;
        key4.getClass();
        Integer num2 = (Integer) frameMetadata.get(key4);
        if (num2 != null) {
            int iIntValue = num2.intValue();
            builder.setIso(iIntValue);
            CaptureResult.Key key5 = CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST;
            key5.getClass();
            Integer num3 = (Integer) frameMetadata.get(key5);
            if (num3 != null) {
                builder.setIso(iIntValue * ((int) (num3.intValue() / 100.0f)));
            }
        }
        CaptureResult.Key key6 = CaptureResult.LENS_FOCAL_LENGTH;
        key6.getClass();
        Float f2 = (Float) frameMetadata.get(key6);
        if (f2 != null) {
            builder.setFocalLength(f2.floatValue());
        }
        CaptureResult.Key key7 = CaptureResult.CONTROL_AWB_MODE;
        key7.getClass();
        Integer num4 = (Integer) frameMetadata.get(key7);
        if (num4 != null) {
            int iIntValue2 = num4.intValue();
            ExifData.WhiteBalanceMode whiteBalanceMode = ExifData.WhiteBalanceMode.AUTO;
            if (iIntValue2 == 0) {
                whiteBalanceMode = ExifData.WhiteBalanceMode.MANUAL;
            }
            builder.setWhiteBalanceMode(whiteBalanceMode);
        }
    }
}
