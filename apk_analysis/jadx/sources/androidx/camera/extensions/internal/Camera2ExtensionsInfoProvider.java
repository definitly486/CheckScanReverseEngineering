package androidx.camera.extensions.internal;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.util.Size;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Camera2ExtensionsInfoProvider {
    CameraExtensionCharacteristics getExtensionCharacteristics(String str);

    List<Size> getSupportedOutputSizes(String str, int i, int i2);

    boolean isExtensionAvailable(String str, int i);
}
