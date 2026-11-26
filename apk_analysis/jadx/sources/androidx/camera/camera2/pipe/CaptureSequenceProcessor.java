package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.CaptureSequence;
import defpackage.e02;
import defpackage.j59;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface CaptureSequenceProcessor<TCaptureRequest, TCaptureSequence extends CaptureSequence<? extends TCaptureRequest>> {
    void abortCaptures();

    TCaptureSequence build(boolean z, List<Request> list, Map<?, ? extends Object> map, Map<?, ? extends Object> map2, Map<?, ? extends Object> map3, CaptureSequence.CaptureSequenceListener captureSequenceListener, List<? extends Request.Listener> list2);

    Object shutdown(e02<? super j59> e02Var);

    void stopRepeating();

    Integer submit(TCaptureSequence tcapturesequence);
}
