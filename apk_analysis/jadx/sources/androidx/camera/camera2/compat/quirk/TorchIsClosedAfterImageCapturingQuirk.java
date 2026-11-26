package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class TorchIsClosedAfterImageCapturingQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> BUILD_MODELS = u96.i("mi a1", "mi a2", "mi a2 lite", "redmi 4x", "redmi 5a", "redmi note 5", "redmi note 5 pro", "redmi 6 pro", "redmi note 6 pro");

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            List list = TorchIsClosedAfterImageCapturingQuirk.BUILD_MODELS;
            String str = Build.MODEL;
            str.getClass();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return list.contains(lowerCase);
        }

        private Companion() {
        }
    }
}
