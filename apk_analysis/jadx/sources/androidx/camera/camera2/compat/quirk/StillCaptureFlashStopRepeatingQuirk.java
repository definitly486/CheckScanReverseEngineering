package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.ra8;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class StillCaptureFlashStopRepeatingQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            if (Device.INSTANCE.isSamsungDevice()) {
                String str = Build.MODEL;
                str.getClass();
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                if (ra8.C(upperCase, "SM-A716", false)) {
                    return true;
                }
            }
            return false;
        }

        private Companion() {
        }
    }
}
