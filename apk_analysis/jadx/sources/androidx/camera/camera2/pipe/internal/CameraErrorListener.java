package androidx.camera.camera2.pipe.internal;

import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface CameraErrorListener {

    public static final class DefaultImpls {
    }

    /* JADX INFO: renamed from: onCameraError-3M5Xam4$default, reason: not valid java name */
    static /* synthetic */ void m928onCameraError3M5Xam4$default(CameraErrorListener cameraErrorListener, String str, int i, boolean z, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: onCameraError-3M5Xam4");
            return;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        cameraErrorListener.mo769onCameraError3M5Xam4(str, i, z);
    }

    /* JADX INFO: renamed from: onCameraError-3M5Xam4 */
    void mo769onCameraError3M5Xam4(String str, int i, boolean z);
}
