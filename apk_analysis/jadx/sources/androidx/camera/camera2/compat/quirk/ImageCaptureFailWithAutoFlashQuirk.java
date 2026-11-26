package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureFailWithAutoFlashQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> BUILD_MODELS_FRONT_CAMERA = u96.i("sm-j700f", "sm-j710f", "sm-j700m");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            List list = ImageCaptureFailWithAutoFlashQuirk.BUILD_MODELS_FRONT_CAMERA;
            String str = Build.MODEL;
            str.getClass();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (!list.contains(lowerCase)) {
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
