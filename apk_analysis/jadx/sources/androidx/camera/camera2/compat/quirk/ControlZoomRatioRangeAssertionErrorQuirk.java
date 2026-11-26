package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class ControlZoomRatioRangeAssertionErrorQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isJioPhoneNext() {
            if (!Device.INSTANCE.isJioDevice()) {
                return false;
            }
            String str = Build.MODEL;
            str.getClass();
            return ra8.C(str, "LS1542QW", true);
        }

        private final boolean isSamsungA2s() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String str = Build.MODEL;
            str.getClass();
            return ra8.C(str, "SM-A025", true) || ra8.v(str, "SM-S124DL", true);
        }

        private final boolean isVivo2039() {
            return Device.INSTANCE.isVivoDevice() && ra8.v(Build.MODEL, "VIVO 2039", true);
        }

        public final boolean isEnabled() {
            return isJioPhoneNext() || isSamsungA2s() || isVivo2039();
        }

        private Companion() {
        }
    }
}
