package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import defpackage.l1;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class JpegCaptureDownsizingQuirk implements SoftwareJpegEncodingPreferredQuirk {
    public static final JpegCaptureDownsizingQuirk INSTANCE = new JpegCaptureDownsizingQuirk();
    private static final Set<String> KNOWN_AFFECTED_FRONT_CAMERA_DEVICES = l1.f("redmi note 8 pro");

    private JpegCaptureDownsizingQuirk() {
    }

    public final boolean isEnabled(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        Set<String> set = KNOWN_AFFECTED_FRONT_CAMERA_DEVICES;
        String str = Build.MODEL;
        str.getClass();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        if (!set.contains(lowerCase)) {
            return false;
        }
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
        key.getClass();
        Integer num = (Integer) cameraMetadata.get(key);
        return num != null && num.intValue() == 0;
    }
}
