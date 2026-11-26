package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.OnePixelShiftQuirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class YuvImageOnePixelShiftQuirk implements OnePixelShiftQuirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isMotorolaMotoG3() {
            return Device.INSTANCE.isMotorolaDevice() && "MotoG3".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungSMA920F() {
            return Device.INSTANCE.isSamsungDevice() && "SM-A920F".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungSMG532F() {
            return Device.INSTANCE.isSamsungDevice() && "SM-G532F".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungSMJ415F() {
            return Device.INSTANCE.isSamsungDevice() && "SM-J415F".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungSMJ700F() {
            return Device.INSTANCE.isSamsungDevice() && "SM-J700F".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isXiaomiMiA1() {
            return Device.INSTANCE.isXiaomiDevice() && "Mi A1".equalsIgnoreCase(Build.MODEL);
        }

        public final boolean isEnabled() {
            return isMotorolaMotoG3() || isSamsungSMG532F() || isSamsungSMJ700F() || isSamsungSMA920F() || isSamsungSMJ415F() || isXiaomiMiA1();
        }

        private Companion() {
        }
    }
}
