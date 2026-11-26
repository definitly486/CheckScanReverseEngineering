package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewPixelHDRnetQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> SUPPORTED_DEVICES = u96.i("sunfish", "bramble", "redfin", "barbet");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            if (!Device.INSTANCE.isGoogleDevice()) {
                return false;
            }
            List list = PreviewPixelHDRnetQuirk.SUPPORTED_DEVICES;
            String str = Build.DEVICE;
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
