package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewStretchWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isHuaweiP8Lite() {
            return Device.INSTANCE.isHuaweiDevice() && "HUAWEI ALE-L04".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isOppoA37F() {
            return Device.INSTANCE.isOppoDevice() && "A37F".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungJ1AceNeo() {
            return Device.INSTANCE.isSamsungDevice() && "sm-j111f".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungJ3() {
            return Device.INSTANCE.isSamsungDevice() && "sm-j320f".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungJ5() {
            return Device.INSTANCE.isSamsungDevice() && "sm-j510fn".equalsIgnoreCase(Build.MODEL);
        }

        private final boolean isSamsungJ7() {
            return Device.INSTANCE.isSamsungDevice() && "sm-j700f".equalsIgnoreCase(Build.MODEL);
        }

        public final boolean isEnabled() {
            return isHuaweiP8Lite() || isSamsungJ3() || isSamsungJ7() || isSamsungJ1AceNeo() || isOppoA37F() || isSamsungJ5();
        }

        private Companion() {
        }
    }
}
