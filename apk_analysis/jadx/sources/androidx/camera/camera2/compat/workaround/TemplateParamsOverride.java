package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.impl.Quirks;
import defpackage.jh2;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface TemplateParamsOverride {
    /* JADX INFO: renamed from: getOverrideParams-xlOpshk */
    Map<CaptureRequest.Key<?>, Object> mo38getOverrideParamsxlOpshk(RequestTemplate requestTemplate);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final TemplateParamsOverride provideTemplateParamsOverride(CameraQuirks cameraQuirks) {
                cameraQuirks.getClass();
                Quirks quirks = cameraQuirks.getQuirks();
                return (CaptureIntentPreviewQuirk.Companion.workaroundByCaptureIntentPreview(quirks) || quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class)) ? new TemplateParamsQuirkOverride(quirks) : NoOpTemplateParamsOverride.INSTANCE;
            }

            private Companion() {
            }
        }
    }
}
