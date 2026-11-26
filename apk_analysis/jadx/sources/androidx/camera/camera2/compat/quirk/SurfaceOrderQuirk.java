package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceOrderQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> BUILD_HARDWARE_SET = u96.i("samsungexynos7570", "samsungexynos7870");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            List list = SurfaceOrderQuirk.BUILD_HARDWARE_SET;
            String str = Build.HARDWARE;
            str.getClass();
            Locale locale = Locale.getDefault();
            locale.getClass();
            String lowerCase = str.toLowerCase(locale);
            lowerCase.getClass();
            return list.contains(lowerCase);
        }

        private Companion() {
        }
    }
}
