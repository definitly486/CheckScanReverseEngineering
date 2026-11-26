package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.impl.Quirks;
import defpackage.mx2;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class TemplateParamsQuirkOverride implements TemplateParamsOverride {
    private final boolean workaroundByCaptureIntentPreview;
    private final boolean workaroundByCaptureIntentStillCapture;

    public TemplateParamsQuirkOverride(Quirks quirks) {
        quirks.getClass();
        this.workaroundByCaptureIntentPreview = CaptureIntentPreviewQuirk.Companion.workaroundByCaptureIntentPreview(quirks);
        this.workaroundByCaptureIntentStillCapture = quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class);
    }

    @Override // androidx.camera.camera2.compat.workaround.TemplateParamsOverride
    /* JADX INFO: renamed from: getOverrideParams-xlOpshk */
    public Map<CaptureRequest.Key<?>, Object> mo38getOverrideParamsxlOpshk(RequestTemplate requestTemplate) {
        if (requestTemplate != null && requestTemplate.m653unboximpl() == 3 && this.workaroundByCaptureIntentPreview) {
            Map<CaptureRequest.Key<?>, Object> mapSingletonMap = Collections.singletonMap(CaptureRequest.CONTROL_CAPTURE_INTENT, 1);
            mapSingletonMap.getClass();
            return mapSingletonMap;
        }
        if (requestTemplate == null || requestTemplate.m653unboximpl() != 4 || !this.workaroundByCaptureIntentStillCapture) {
            return mx2.b;
        }
        Map<CaptureRequest.Key<?>, Object> mapSingletonMap2 = Collections.singletonMap(CaptureRequest.CONTROL_CAPTURE_INTENT, 2);
        mapSingletonMap2.getClass();
        return mapSingletonMap2;
    }
}
