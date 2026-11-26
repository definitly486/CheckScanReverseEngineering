package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import defpackage.jh2;
import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk implements CaptureIntentPreviewQuirk {
    public static final Companion Companion = new Companion(null);

    @Override // androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk
    public boolean workaroundByCaptureIntentPreview() {
        return Companion.isSamsungM55();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSamsungM55() {
            return Device.INSTANCE.isSamsungDevice() && ra8.v(Build.DEVICE, "m55xq", true);
        }

        public final boolean isEnabled() {
            return isSamsungM55();
        }

        private Companion() {
        }
    }
}
