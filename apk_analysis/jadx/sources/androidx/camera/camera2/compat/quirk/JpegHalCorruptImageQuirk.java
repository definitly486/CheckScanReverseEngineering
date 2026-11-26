package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class JpegHalCorruptImageQuirk implements SoftwareJpegEncodingPreferredQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> KNOWN_AFFECTED_DEVICES = u96.i("heroqltevzw", "heroqltetmo", "k61v1_basic_ref");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            List list = JpegHalCorruptImageQuirk.KNOWN_AFFECTED_DEVICES;
            String str = Build.DEVICE;
            str.getClass();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return list.contains(lowerCase);
        }

        private Companion() {
        }
    }
}
