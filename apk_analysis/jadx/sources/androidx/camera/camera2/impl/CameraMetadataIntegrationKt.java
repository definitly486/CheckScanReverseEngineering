package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.rr;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraMetadataIntegrationKt {
    public static final List<Integer> getAvailableAeModes(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
        key.getClass();
        Object orDefault = cameraMetadata.getOrDefault((CameraCharacteristics.Key<int[]>) key, new int[]{0});
        orDefault.getClass();
        return new rr((int[]) orDefault);
    }

    public static final List<Integer> getAvailableAfModes(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
        key.getClass();
        Object orDefault = cameraMetadata.getOrDefault((CameraCharacteristics.Key<int[]>) key, new int[]{0});
        orDefault.getClass();
        return new rr((int[]) orDefault);
    }

    public static final List<Integer> getAvailableAwbModes(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES;
        key.getClass();
        Object orDefault = cameraMetadata.getOrDefault((CameraCharacteristics.Key<int[]>) key, new int[]{0});
        orDefault.getClass();
        return new rr((int[]) orDefault);
    }

    public static final <T> T getOrDefault(CameraMetadata cameraMetadata, CameraCharacteristics.Key<T> key, T t) {
        T t2;
        key.getClass();
        return (cameraMetadata == null || (t2 = (T) cameraMetadata.getOrDefault(key, t)) == null) ? t : t2;
    }

    public static final int getSupportedAeMode(CameraMetadata cameraMetadata, int i) {
        cameraMetadata.getClass();
        if (getAvailableAeModes(cameraMetadata).contains(Integer.valueOf(i))) {
            return i;
        }
        return getAvailableAeModes(cameraMetadata).contains(1) ? 1 : 0;
    }

    public static final int getSupportedAfMode(CameraMetadata cameraMetadata, int i) {
        cameraMetadata.getClass();
        if (getAvailableAfModes(cameraMetadata).contains(Integer.valueOf(i))) {
            return i;
        }
        if (getAvailableAfModes(cameraMetadata).contains(4)) {
            return 4;
        }
        return getAvailableAfModes(cameraMetadata).contains(1) ? 1 : 0;
    }

    public static final int getSupportedAwbMode(CameraMetadata cameraMetadata, int i) {
        cameraMetadata.getClass();
        if (getAvailableAwbModes(cameraMetadata).contains(Integer.valueOf(i))) {
            return i;
        }
        return getAvailableAwbModes(cameraMetadata).contains(1) ? 1 : 0;
    }

    private static final boolean isAeModeSupported(CameraMetadata cameraMetadata, int i) {
        return getSupportedAeMode(cameraMetadata, i) == i;
    }

    public static final boolean isExternalFlashAeModeSupported(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        return Build.VERSION.SDK_INT >= 28 && isAeModeSupported(cameraMetadata, 5);
    }
}
