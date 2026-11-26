package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.ra8;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class InvalidVideoProfilesQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> AFFECTED_PIXEL_MODELS = u96.i("pixel 4", "pixel 4a", "pixel 4a (5g)", "pixel 4 xl", "pixel 5", "pixel 5a", "pixel 6", "pixel 6a", "pixel 6 pro", "pixel 7", "pixel 7 pro");
    private static final List<String> AFFECTED_ONE_PLUS_MODELS = u96.i("cph2417", "cph2451");
    private static final List<String> AFFECTED_OPPO_MODELS = u96.i("cph2437", "cph2525", "pht110");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isAPI33() {
            return Build.VERSION.SDK_INT == 33;
        }

        private final boolean isAffectedOnePlusDevices() {
            return isAffectedOnePlusModel() && isAPI33();
        }

        private final boolean isAffectedOnePlusModel() {
            List list = InvalidVideoProfilesQuirk.AFFECTED_ONE_PLUS_MODELS;
            String str = Build.MODEL;
            str.getClass();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return list.contains(lowerCase);
        }

        private final boolean isAffectedOppoDevices() {
            return isAffectedOppoModel() && isAPI33();
        }

        private final boolean isAffectedOppoModel() {
            List list = InvalidVideoProfilesQuirk.AFFECTED_OPPO_MODELS;
            String str = Build.MODEL;
            str.getClass();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return list.contains(lowerCase);
        }

        private final boolean isAffectedPixelBuild() {
            return isTp1aBuild() || isTd1aBuild();
        }

        private final boolean isAffectedPixelDevices() {
            return isAffectedPixelModel() && isAffectedPixelBuild();
        }

        private final boolean isAffectedPixelModel() {
            List list = InvalidVideoProfilesQuirk.AFFECTED_PIXEL_MODELS;
            String str = Build.MODEL;
            str.getClass();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return list.contains(lowerCase);
        }

        private final boolean isAffectedSamsungDevices() {
            return Device.INSTANCE.isSamsungDevice() && isTp1aBuild();
        }

        private final boolean isAffectedXiaomiDevices() {
            Device device = Device.INSTANCE;
            if (device.isXiaomiDevice() || device.isRedmiDevice()) {
                return isTkq1Build() || isTp1aBuild();
            }
            return false;
        }

        private final boolean isTd1aBuild() {
            String str = Build.ID;
            str.getClass();
            return ra8.C(str, "TD1A", true);
        }

        private final boolean isTkq1Build() {
            String str = Build.ID;
            str.getClass();
            return ra8.C(str, "TKQ1", true);
        }

        private final boolean isTp1aBuild() {
            String str = Build.ID;
            str.getClass();
            return ra8.C(str, "TP1A", true);
        }

        public final boolean isEnabled() {
            return isAffectedSamsungDevices() || isAffectedPixelDevices() || isAffectedXiaomiDevices() || isAffectedOppoDevices() || isAffectedOnePlusDevices();
        }

        private Companion() {
        }
    }
}
