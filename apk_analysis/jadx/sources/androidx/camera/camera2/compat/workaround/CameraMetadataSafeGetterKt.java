package androidx.camera.camera2.compat.workaround;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Range;
import androidx.camera.camera2.compat.quirk.ControlZoomRatioRangeAssertionErrorQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.ZoomMath;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;

/* JADX INFO: loaded from: classes.dex */
public final class CameraMetadataSafeGetterKt {
    public static final Rect getActiveArraySizeSafely(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        key.getClass();
        Rect rect = (Rect) cameraMetadata.get(key);
        if (rect != null) {
            return rect;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled(Log.TAG)) {
            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read SENSOR_INFO_ACTIVE_ARRAY_SIZE for " + ((Object) CameraId.m357toStringimpl(cameraMetadata.mo370getCameraDz_R5H8())) + '!');
        }
        return new Rect(0, 0, MapTrimmers.DEFAULT_VALUE_MAX_LENGTH, 3000);
    }

    public static final Range<Float> getControlZoomRatioRangeSafely(CameraMetadata cameraMetadata) {
        Float f;
        Float fValueOf = Float.valueOf(1.0f);
        cameraMetadata.getClass();
        try {
            CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE;
            key.getClass();
            Range range = (Range) cameraMetadata.get(key);
            if (range == null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read CONTROL_ZOOM_RATIO_RANGE for " + ((Object) CameraId.m357toStringimpl(cameraMetadata.mo370getCameraDz_R5H8())) + '!');
                }
                return new Range<>(fValueOf, fValueOf);
            }
            ZoomMath zoomMath = ZoomMath.INSTANCE;
            Object lower = range.getLower();
            lower.getClass();
            if (zoomMath.nearZero$camera_camera2(((Number) lower).floatValue()) || ((Number) range.getLower()).floatValue() < 0.0f) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid lower zoom range detected: " + range.getLower());
                }
                f = fValueOf;
            } else {
                f = (Float) range.getLower();
            }
            Object upper = range.getUpper();
            upper.getClass();
            if (zoomMath.nearZero$camera_camera2(((Number) upper).floatValue()) || ((Number) range.getUpper()).floatValue() < 0.0f) {
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid upper zoom range detected: " + range.getUpper());
                }
            } else {
                fValueOf = (Float) range.getUpper();
            }
            return new Range<>(f, fValueOf);
        } catch (AssertionError e) {
            if (DeviceQuirks.INSTANCE.get(ControlZoomRatioRangeAssertionErrorQuirk.class) != null) {
                Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Device is known to throw an exception while retrieving the value for CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE. CONTROL_ZOOM_RATIO_RANGE is not supported. [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "].");
                }
            } else {
                Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled(Log.TAG)) {
                    android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Exception thrown while retrieving the value for CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE on devices not known to throw exceptions during this operation. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "]. CONTROL_ZOOM_RATIO_RANGE is not available.", e);
                }
            }
            if (!Logger.isWarnEnabled(Log.TAG)) {
                return null;
            }
            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "AssertionError: failed to get CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE", e);
            return null;
        }
    }

    public static final <T> T getSafely(CameraMetadata cameraMetadata, CameraCharacteristics.Key<T> key) {
        cameraMetadata.getClass();
        key.getClass();
        if (Build.VERSION.SDK_INT < 30 || !key.equals(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)) {
            return key.equals(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) ? (T) getActiveArraySizeSafely(cameraMetadata) : (T) cameraMetadata.get(key);
        }
        return (T) getControlZoomRatioRangeSafely(cameraMetadata);
    }
}
