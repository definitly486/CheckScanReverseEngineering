package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Range;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraState;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ExposureState;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.lifecycle.LiveData;
import defpackage.cl4;
import defpackage.fg;
import defpackage.fh8;
import defpackage.kv2;
import defpackage.l31;
import defpackage.ne4;
import defpackage.vh;
import defpackage.x07;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class PhysicalCameraInfoAdapter implements CameraInfo, UnsafeWrapper {
    private final cl4 camera2CameraInfo$delegate;
    private final CameraProperties cameraProperties;

    public PhysicalCameraInfoAdapter(CameraProperties cameraProperties) {
        cameraProperties.getClass();
        this.cameraProperties = cameraProperties;
        this.camera2CameraInfo$delegate = new fh8(new l31(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Camera2CameraInfo camera2CameraInfo_delegate$lambda$0(PhysicalCameraInfoAdapter physicalCameraInfoAdapter) {
        return Camera2CameraInfo.Companion.create(physicalCameraInfoAdapter.cameraProperties);
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
        fg.c(kv2.b(i, "The specified lens facing integer ", " can not be recognized."));
        return 0;
    }

    public final Camera2CameraInfo getCamera2CameraInfo$camera_camera2() {
        return (Camera2CameraInfo) this.camera2CameraInfo$delegate.getValue();
    }

    @Override // androidx.camera.core.CameraInfo
    public CameraIdentifier getCameraIdentifier() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public CameraSelector getCameraSelector() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<CameraState> getCameraState() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public ExposureState getExposureState() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public String getImplementationType() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public float getIntrinsicZoomRatio() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
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
    public Set<CameraInfo> getPhysicalCameraInfos() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
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

    @Override // androidx.camera.core.CameraInfo
    public Set<Range<Integer>> getSupportedFrameRateRanges() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<Integer> getTorchState() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<ZoomState> getZoomState() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean hasFlashUnit() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isFocusMeteringSupported(FocusMeteringAction focusMeteringAction) {
        focusMeteringAction.getClass();
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isLogicalMultiCameraSupported() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isPrivateReprocessingSupported() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean isZslSupported() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public Set<DynamicRange> querySupportedDynamicRanges(Set<DynamicRange> set) {
        set.getClass();
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
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
        boolean zEquals = ne4Var.equals(x07.a(android.hardware.camera2.CameraMetadata.class));
        CameraProperties cameraProperties = this.cameraProperties;
        if (!zEquals) {
            return (T) cameraProperties.getMetadata().unwrapAs(ne4Var);
        }
        T t3 = (T) cameraProperties.getMetadata();
        t3.getClass();
        return t3;
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees() {
        return getSensorRotationDegrees(0);
    }
}
