package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewDelayWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk, SurfaceProcessingQuirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return Device.INSTANCE.isHuaweiDevice();
        }

        private Companion() {
        }
    }
}
