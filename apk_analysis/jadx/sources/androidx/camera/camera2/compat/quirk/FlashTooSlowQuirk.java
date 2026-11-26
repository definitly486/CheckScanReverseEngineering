package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.jh2;
import defpackage.ra8;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class FlashTooSlowQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> AFFECTED_MODEL_PREFIXES = u96.i("PIXEL 3A", "PIXEL 3A XL", "PIXEL 4", "PIXEL 5", "SM-A320", "MOTO G(20)", "ITEL L6006", "RMX3231");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isAffectedModel() {
            for (String str : FlashTooSlowQuirk.AFFECTED_MODEL_PREFIXES) {
                String str2 = Build.MODEL;
                str2.getClass();
                String upperCase = str2.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                if (ra8.C(upperCase, str, false)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            if (!isAffectedModel()) {
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
