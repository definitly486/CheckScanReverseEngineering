package androidx.camera.extensions.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AvoidCaptureProcessProgressAvailabilityCheckQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final boolean load() {
        return Companion.load();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean load() {
            return "Xiaomi".equalsIgnoreCase(Build.BRAND) && "dada".equalsIgnoreCase(Build.DEVICE);
        }

        private Companion() {
        }
    }
}
