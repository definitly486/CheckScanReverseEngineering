package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AfRegionFlipHorizontallyQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            if (!Device.INSTANCE.isSamsungDevice() || Build.VERSION.SDK_INT >= 33) {
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
