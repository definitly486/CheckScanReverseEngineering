package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureWashedOutImageQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> BUILD_MODELS = u96.i("SM-G9300", "SM-G930R", "SM-G930A", "SM-G930V", "SM-G930T", "SM-G930U", "SM-G930P", "SM-SC02H", "SM-SCV33", "SM-G9350", "SM-G935R", "SM-G935A", "SM-G935V", "SM-G935T", "SM-G935U", "SM-G935P");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<String> getBUILD_MODELS() {
            return ImageCaptureWashedOutImageQuirk.BUILD_MODELS;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            List<String> build_models = getBUILD_MODELS();
            String str = Build.MODEL;
            str.getClass();
            String upperCase = str.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            if (!build_models.contains(upperCase)) {
                return false;
            }
            CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 1;
        }

        private Companion() {
        }
    }
}
