package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.yr;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureFailedForVideoSnapshotQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Set<String> PROBLEMATIC_UNI_SOC_MODELS = yr.k0(new String[]{"itel l6006", "itel w6004", "moto g(20)", "moto e13", "moto e20", "rmx3231", "rmx3511", "sm-a032f", "sm-a035m", "sm-f946u1", "tecno mobile bf6"});

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isHuaweiPSmart() {
            return Device.INSTANCE.isHuaweiDevice() && "FIG-LX1".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isProblematicUniSocChipsetDevice() {
            Set set = ImageCaptureFailedForVideoSnapshotQuirk.PROBLEMATIC_UNI_SOC_MODELS;
            String str = Build.MODEL;
            str.getClass();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return set.contains(lowerCase);
        }

        public final boolean isEnabled() {
            return isProblematicUniSocChipsetDevice() || Device.INSTANCE.isUniSocChipsetDevice() || isHuaweiPSmart();
        }

        private Companion() {
        }
    }
}
