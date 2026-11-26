package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.impl.CameraMetadataIntegrationKt;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class TorchFlashRequiredFor3aUpdateQuirk implements Quirk {
    private final CameraMetadata cameraMetadata;
    public static final Companion Companion = new Companion(null);
    private static final List<String> AFFECTED_PIXEL_MODELS = u96.k("PIXEL 6A", "PIXEL 6 PRO", "PIXEL 7", "PIXEL 7A", "PIXEL 7 PRO", "PIXEL 8", "PIXEL 8 PRO");

    public TorchFlashRequiredFor3aUpdateQuirk(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        this.cameraMetadata = cameraMetadata;
    }

    public final boolean isFlashModeTorchRequired() {
        return !CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraMetadata);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isAffectedModel(CameraMetadata cameraMetadata) {
            return isAffectedPixelModel() && isFrontCamera(cameraMetadata);
        }

        private final boolean isAffectedPixelModel() {
            for (String str : TorchFlashRequiredFor3aUpdateQuirk.AFFECTED_PIXEL_MODELS) {
                String str2 = Build.MODEL;
                str2.getClass();
                String upperCase = str2.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                if (upperCase.equals(str)) {
                    return true;
                }
            }
            return false;
        }

        private final boolean isFrontCamera(CameraMetadata cameraMetadata) {
            CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
            key.getClass();
            Integer num = (Integer) cameraMetadata.get(key);
            return num != null && num.intValue() == 0;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            return isAffectedModel(cameraMetadata);
        }

        private Companion() {
        }
    }
}
