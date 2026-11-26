package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class RepeatingStreamConstraintForVideoRecordingQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isHuaweiMate9() {
            return Device.INSTANCE.isHuaweiDevice() && "mha-l29".equalsIgnoreCase(Build.MODEL);
        }

        public final boolean isEnabled() {
            return isHuaweiMate9();
        }

        private Companion() {
        }
    }
}
