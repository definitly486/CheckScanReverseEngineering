package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameMetadata;
import defpackage.l57;
import defpackage.nl3;
import defpackage.qn1;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Result3AStateListenerKt {
    public static final nl3<FrameMetadata, Boolean> toConditionChecker(Map<CaptureResult.Key<?>, ? extends List<? extends Object>> map) {
        map.getClass();
        return new l57(map, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean toConditionChecker$lambda$0(Map map, FrameMetadata frameMetadata) {
        frameMetadata.getClass();
        for (Map.Entry entry : map.entrySet()) {
            CaptureResult.Key key = (CaptureResult.Key) entry.getKey();
            if (!qn1.M((List) entry.getValue(), frameMetadata.get(key))) {
                return false;
            }
        }
        return true;
    }
}
