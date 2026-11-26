package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.StillCaptureFlashStopRepeatingQuirk;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class StillCaptureFlowKt {
    public static final boolean shouldStopRepeatingBeforeCapture(List<Request> list) {
        list.getClass();
        if (((StillCaptureFlashStopRepeatingQuirk) DeviceQuirks.INSTANCE.get(StillCaptureFlashStopRepeatingQuirk.class)) == null) {
            return false;
        }
        boolean z = false;
        boolean z2 = false;
        for (Request request : list) {
            RequestTemplate requestTemplateM618getTemplateejQnlcg = request.m618getTemplateejQnlcg();
            if (requestTemplateM618getTemplateejQnlcg != null && requestTemplateM618getTemplateejQnlcg.m653unboximpl() == 2) {
                z = true;
            }
            CaptureRequest.Key key = CaptureRequest.CONTROL_AE_MODE;
            key.getClass();
            Integer num = (Integer) request.get(key);
            if ((num != null && num.intValue() == 2) || (num != null && num.intValue() == 3)) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
