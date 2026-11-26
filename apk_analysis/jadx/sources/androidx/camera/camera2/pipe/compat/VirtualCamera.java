package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import defpackage.hd3;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface VirtualCamera {

    public static final class DefaultImpls {
    }

    /* JADX INFO: renamed from: disconnect-TPqeGZw$default, reason: not valid java name */
    static /* synthetic */ void m839disconnectTPqeGZw$default(VirtualCamera virtualCamera, CameraError cameraError, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: disconnect-TPqeGZw");
            return;
        }
        if ((i & 1) != 0) {
            cameraError = null;
        }
        virtualCamera.mo840disconnectTPqeGZw(cameraError);
    }

    /* JADX INFO: renamed from: disconnect-TPqeGZw, reason: not valid java name */
    void mo840disconnectTPqeGZw(CameraError cameraError);

    hd3<CameraState> getState();

    CameraState getValue();
}
