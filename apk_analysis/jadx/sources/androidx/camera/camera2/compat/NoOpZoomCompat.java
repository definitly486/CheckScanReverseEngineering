package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import defpackage.ga1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mk2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class NoOpZoomCompat implements ZoomCompat {
    public static final Companion Companion = new Companion(null);
    private static final List<CameraCharacteristics.Key<Rect>> requiredCharacteristics = u96.h(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
    private final CameraProperties cameraProperties;
    private final float maxZoomRatio;
    private final float minZoomRatio;

    public NoOpZoomCompat(CameraProperties cameraProperties) {
        cameraProperties.getClass();
        this.cameraProperties = cameraProperties;
        this.minZoomRatio = 1.0f;
        this.maxZoomRatio = 1.0f;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public mk2<j59> applyAsync(float f, UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        return ga1.a(j59.a);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Rect getCropSensorRegion() {
        return CameraMetadataSafeGetterKt.getActiveArraySizeSafely(this.cameraProperties.getMetadata());
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        return this.maxZoomRatio;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        return this.minZoomRatio;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public mk2<j59> resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        return ga1.a(j59.a);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<CameraCharacteristics.Key<Rect>> getRequiredCharacteristics() {
            return NoOpZoomCompat.requiredCharacteristics;
        }

        private Companion() {
        }
    }
}
