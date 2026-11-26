package androidx.camera.camera2.pipe.compat;

import android.graphics.ColorSpace;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Api34Compat {
    public static final Api34Compat INSTANCE = new Api34Compat();

    private Api34Compat() {
    }

    public static final List<Size> getPostviewSupportedSizes(CameraExtensionCharacteristics cameraExtensionCharacteristics, int i, Size size, int i2) {
        cameraExtensionCharacteristics.getClass();
        size.getClass();
        List<Size> postviewSupportedSizes = cameraExtensionCharacteristics.getPostviewSupportedSizes(i, size, i2);
        postviewSupportedSizes.getClass();
        return postviewSupportedSizes;
    }

    public static final boolean isCaptureProcessProgressAvailable(CameraExtensionCharacteristics cameraExtensionCharacteristics, int i) {
        cameraExtensionCharacteristics.getClass();
        return cameraExtensionCharacteristics.isCaptureProcessProgressAvailable(i);
    }

    public static final boolean isPostviewAvailable(CameraExtensionCharacteristics cameraExtensionCharacteristics, int i) {
        cameraExtensionCharacteristics.getClass();
        return cameraExtensionCharacteristics.isPostviewAvailable(i);
    }

    public static final boolean isZoomOverrideSupported(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AVAILABLE_SETTINGS_OVERRIDES;
        key.getClass();
        int[] iArr = (int[]) cameraMetadata.get(key);
        return iArr != null && yr.C(iArr, 1);
    }

    public static final void setColorSpace(SessionConfiguration sessionConfiguration, ColorSpace.Named named) {
        sessionConfiguration.getClass();
        named.getClass();
        sessionConfiguration.setColorSpace(named);
    }

    public static final void setPostviewOutputConfiguration(ExtensionSessionConfiguration extensionSessionConfiguration, OutputConfiguration outputConfiguration) {
        extensionSessionConfiguration.getClass();
        outputConfiguration.getClass();
        extensionSessionConfiguration.setPostviewOutputConfiguration(outputConfiguration);
    }
}
