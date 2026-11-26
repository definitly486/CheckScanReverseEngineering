package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.jh2;
import defpackage.ra8;
import defpackage.u96;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class UltraWideFlashCaptureUnderexposureQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> BUILD_MODEL_PREFIXES = u96.h("sm-s921");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<String> getBUILD_MODEL_PREFIXES() {
            return UltraWideFlashCaptureUnderexposureQuirk.BUILD_MODEL_PREFIXES;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            List<String> build_model_prefixes = getBUILD_MODEL_PREFIXES();
            if (!(build_model_prefixes instanceof Collection) || !build_model_prefixes.isEmpty()) {
                for (String str : build_model_prefixes) {
                    String str2 = Build.MODEL;
                    str2.getClass();
                    String lowerCase = str2.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    if (ra8.C(lowerCase, str, false)) {
                        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
                        key.getClass();
                        Integer num = (Integer) cameraMetadata.get(key);
                        if (num != null && num.intValue() == 1) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        private Companion() {
        }
    }
}
