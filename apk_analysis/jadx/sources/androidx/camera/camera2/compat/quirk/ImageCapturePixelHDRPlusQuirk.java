package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCapturePixelHDRPlusQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> BUILD_MODELS = u96.i("Pixel 2", "Pixel 2 XL", "Pixel 3", "Pixel 3 XL");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return ImageCapturePixelHDRPlusQuirk.BUILD_MODELS.contains(Build.MODEL) && Device.INSTANCE.isGoogleDevice();
        }

        private Companion() {
        }
    }
}
