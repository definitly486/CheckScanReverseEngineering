package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.internal.ZoomMath;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import defpackage.j59;
import defpackage.mk2;
import defpackage.u96;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CropRegionZoomCompat implements ZoomCompat {
    private final CameraProperties cameraProperties;
    private Rect currentCropRect;
    private final Rect sensorRect;

    public CropRegionZoomCompat(CameraProperties cameraProperties) {
        cameraProperties.getClass();
        this.cameraProperties = cameraProperties;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        key.getClass();
        Object obj = metadata.get((CameraCharacteristics.Key<Object>) key);
        obj.getClass();
        this.sensorRect = (Rect) obj;
    }

    private final Rect computeCropRect(Rect rect, float f) {
        if (ZoomMath.INSTANCE.nearZero$camera_camera2(f)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "ZoomCompat: Invalid zoom ratio of 0.0f passed in, defaulting to 1.0f");
            }
            f = 1.0f;
        }
        float fWidth = rect.width() / f;
        float fHeight = rect.height() / f;
        float fWidth2 = (rect.width() - fWidth) / 2.0f;
        float fHeight2 = (rect.height() - fHeight) / 2.0f;
        return new Rect((int) fWidth2, (int) fHeight2, (int) (fWidth2 + fWidth), (int) (fHeight2 + fHeight));
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public mk2<j59> applyAsync(float f, UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        Rect rectComputeCropRect = computeCropRect(this.sensorRect, f);
        this.currentCropRect = rectComputeCropRect;
        CaptureRequest.Key key = CaptureRequest.SCALER_CROP_REGION;
        rectComputeCropRect.getClass();
        Map mapSingletonMap = Collections.singletonMap(key, rectComputeCropRect);
        mapSingletonMap.getClass();
        return UseCaseCameraRequestControl.setParametersAsync$default(useCaseCameraRequestControl, mapSingletonMap, null, null, 6, null);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Rect getCropSensorRegion() {
        Rect rect = this.currentCropRect;
        return rect == null ? this.sensorRect : rect;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM;
        key.getClass();
        Float f = (Float) metadata.getOrDefault((CameraCharacteristics.Key<Float>) key, Float.valueOf(getMinZoomRatio()));
        ZoomMath zoomMath = ZoomMath.INSTANCE;
        f.getClass();
        if (!zoomMath.nearZero$camera_camera2(f.floatValue())) {
            return f.floatValue();
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (!Logger.isWarnEnabled(Log.TAG)) {
            return 1.0f;
        }
        android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid max zoom ratio of " + f + " detected, defaulting to 1.0f");
        return 1.0f;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        return 1.0f;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public mk2<j59> resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        return UseCaseCameraRequestControl.removeParametersAsync$default(useCaseCameraRequestControl, u96.h(CaptureRequest.SCALER_CROP_REGION), null, 2, null);
    }
}
