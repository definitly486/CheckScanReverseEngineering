package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.ra8;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class ZslDisablerQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> AFFECTED_SAMSUNG_MODEL = u96.i("SM-F936", "SM-S901U", "SM-S908U", "SM-S908U1", "SM-F721U1", "SM-S928U1");
    private static final List<String> AFFECTED_XIAOMI_MODEL = u96.h("MI 8");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isAffectedModel(List<String> list) {
            for (String str : list) {
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

        private final boolean isAffectedSamsungDevices() {
            return Device.INSTANCE.isSamsungDevice() && isAffectedModel(ZslDisablerQuirk.AFFECTED_SAMSUNG_MODEL);
        }

        private final boolean isAffectedXiaoMiDevices() {
            return Device.INSTANCE.isXiaomiDevice() && isAffectedModel(ZslDisablerQuirk.AFFECTED_XIAOMI_MODEL);
        }

        public final boolean load() {
            return isAffectedSamsungDevices() || isAffectedXiaoMiDevices();
        }

        private Companion() {
        }
    }
}
