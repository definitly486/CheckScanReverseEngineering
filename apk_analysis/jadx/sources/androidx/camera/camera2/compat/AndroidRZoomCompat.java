package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.util.Range;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.b36;
import defpackage.fg;
import defpackage.j59;
import defpackage.mk2;
import defpackage.n05;
import defpackage.u96;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidRZoomCompat implements ZoomCompat {
    private final CameraProperties cameraProperties;
    private final Range<Float> range;

    public AndroidRZoomCompat(CameraProperties cameraProperties, Range<Float> range) {
        cameraProperties.getClass();
        range.getClass();
        this.cameraProperties = cameraProperties;
        this.range = range;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public mk2<j59> applyAsync(float f, UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        float minZoomRatio = getMinZoomRatio();
        if (f > getMaxZoomRatio() || minZoomRatio > f) {
            fg.c("Failed requirement.");
            return null;
        }
        LinkedHashMap linkedHashMapF = n05.f(new b36(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(f)));
        if (Build.VERSION.SDK_INT >= 34 && CameraMetadata.Companion.getSupportsZoomOverride(this.cameraProperties.getMetadata())) {
            Api34Compat.setSettingsOverrideZoom(linkedHashMapF);
        }
        return UseCaseCameraRequestControl.setParametersAsync$default(useCaseCameraRequestControl, linkedHashMapF, null, null, 6, null);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Rect getCropSensorRegion() {
        CameraMetadata metadata = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        key.getClass();
        Object obj = metadata.get((CameraCharacteristics.Key<Object>) key);
        obj.getClass();
        return (Rect) obj;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        Object upper = this.range.getUpper();
        upper.getClass();
        return ((Number) upper).floatValue();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        Object lower = this.range.getLower();
        lower.getClass();
        return ((Number) lower).floatValue();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public mk2<j59> resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        CaptureRequest.Key key = CaptureRequest.CONTROL_ZOOM_RATIO;
        key.getClass();
        ArrayList arrayListK = u96.k(key);
        if (Build.VERSION.SDK_INT >= 34) {
            CaptureRequest.Key key2 = CaptureRequest.CONTROL_SETTINGS_OVERRIDE;
            key2.getClass();
            arrayListK.add(key2);
        }
        return UseCaseCameraRequestControl.removeParametersAsync$default(useCaseCameraRequestControl, arrayListK, null, 2, null);
    }
}
