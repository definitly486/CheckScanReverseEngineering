package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureFlashNotFireQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> BUILD_MODELS = u96.i("itel w6004", "sm-j700m");
    private static final List<String> BUILD_MODELS_FRONT_CAMERA = u96.i("sm-j700f", "sm-j710f");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0033  */
        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            boolean z;
            cameraMetadata.getClass();
            List list = ImageCaptureFlashNotFireQuirk.BUILD_MODELS_FRONT_CAMERA;
            String str = Build.MODEL;
            str.getClass();
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            lowerCase.getClass();
            if (list.contains(lowerCase)) {
                CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
                key.getClass();
                Integer num = (Integer) cameraMetadata.get(key);
                if (num != null && num.intValue() == 0) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            List list2 = ImageCaptureFlashNotFireQuirk.BUILD_MODELS;
            str.getClass();
            String lowerCase2 = str.toLowerCase(locale);
            lowerCase2.getClass();
            return z || list2.contains(lowerCase2);
        }

        private Companion() {
        }
    }
}
