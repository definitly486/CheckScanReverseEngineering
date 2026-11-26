package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Nexus4AndroidLTargetAspectRatioQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List<String> DEVICE_MODELS = u96.h("NEXUS 4");

    public final int getCorrectedAspectRatio() {
        return 2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            Device.INSTANCE.isGoogleDevice();
            return false;
        }

        private Companion() {
        }
    }
}
