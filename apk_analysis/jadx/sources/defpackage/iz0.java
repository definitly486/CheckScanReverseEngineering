package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.GapComposer;
import yads.al4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iz0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ iz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Camera2CameraMetadata._sessionKeys$lambda$0((Camera2CameraMetadata) obj);
            case 1:
                return ((GapComposer) obj).currentStackTrace();
            case 2:
                return Boolean.valueOf(ScrollState.canScrollForward_delegate$lambda$0((ScrollState) obj));
            default:
                return al4.a((al4) obj);
        }
    }
}
