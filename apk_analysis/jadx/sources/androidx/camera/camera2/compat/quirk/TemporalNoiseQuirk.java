package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class TemporalNoiseQuirk implements CaptureIntentPreviewQuirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isPixel8() {
            return "Pixel 8".equalsIgnoreCase(Build.MODEL);
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            if (!isPixel8()) {
                return false;
            }
            CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 0;
        }

        private Companion() {
        }
    }
}
