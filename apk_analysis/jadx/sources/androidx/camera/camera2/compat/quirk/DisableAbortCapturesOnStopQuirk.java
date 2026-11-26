package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class DisableAbortCapturesOnStopQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final boolean isPocoX3ProDevice;
    private static final boolean isSamsungNote10PlusDevice;

    static {
        Device device = Device.INSTANCE;
        boolean z = false;
        isSamsungNote10PlusDevice = device.isSamsungDevice() && "d2q".equalsIgnoreCase(Build.DEVICE);
        if (device.isPocoDevice() && "M2102J20SG".equalsIgnoreCase(Build.MODEL)) {
            z = true;
        }
        isPocoX3ProDevice = z;
    }

    public static final boolean isEnabled() {
        return Companion.isEnabled();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return Device.INSTANCE.isTecnoDevice() || DisableAbortCapturesOnStopQuirk.isSamsungNote10PlusDevice || DisableAbortCapturesOnStopQuirk.isPocoX3ProDevice;
        }

        private Companion() {
        }
    }
}
