package androidx.camera.camera2.compat.quirk;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ExtraSupportedOutputSizeQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    private final Size[] getMotoE5PlayExtraSupportedResolutions() {
        return new Size[]{new Size(1440, 1080), new Size(960, 720)};
    }

    public final <T> Size[] getExtraSupportedResolutions(Class<T> cls) {
        cls.getClass();
        return (StreamConfigurationMap.isOutputSupportedFor(cls) && Companion.isMotoE5Play$camera_camera2()) ? getMotoE5PlayExtraSupportedResolutions() : new Size[0];
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return isMotoE5Play$camera_camera2();
        }

        public final boolean isMotoE5Play$camera_camera2() {
            return Device.INSTANCE.isMotorolaDevice() && "moto e5 play".equalsIgnoreCase(Build.MODEL);
        }

        private Companion() {
        }
    }

    public final Size[] getExtraSupportedResolutions(int i) {
        return (i == 34 && Companion.isMotoE5Play$camera_camera2()) ? getMotoE5PlayExtraSupportedResolutions() : new Size[0];
    }
}
