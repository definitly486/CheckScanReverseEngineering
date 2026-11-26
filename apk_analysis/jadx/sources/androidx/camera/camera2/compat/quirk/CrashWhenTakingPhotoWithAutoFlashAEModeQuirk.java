package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class CrashWhenTakingPhotoWithAutoFlashAEModeQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> AFFECTED_MODELS = u96.i("SM-A3000", "SM-A3009", "SM-A300F", "SM-A300FU", "SM-A300G", "SM-A300H", "SM-A300M", "SM-A300X", "SM-A300XU", "SM-A300XZ", "SM-A300Y", "SM-A300YZ", "SM-J510FN", "5059X");

    public static final boolean isEnabled() {
        return Companion.isEnabled();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            List list = CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.AFFECTED_MODELS;
            String str = Build.MODEL;
            str.getClass();
            String upperCase = str.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return list.contains(upperCase);
        }

        private Companion() {
        }
    }
}
