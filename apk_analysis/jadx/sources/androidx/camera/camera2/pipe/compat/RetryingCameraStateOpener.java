package androidx.camera.camera2.pipe.compat;

import defpackage.e02;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;
import defpackage.uf;

/* JADX INFO: loaded from: classes.dex */
public interface RetryingCameraStateOpener {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: openCameraWithRetry-aeCOTgg$default, reason: not valid java name */
    static /* synthetic */ Object m825openCameraWithRetryaeCOTgg$default(RetryingCameraStateOpener retryingCameraStateOpener, String str, Camera2DeviceCloser camera2DeviceCloser, nl3 nl3Var, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: openCameraWithRetry-aeCOTgg");
            return null;
        }
        if ((i & 4) != 0) {
            nl3Var = new uf(2);
        }
        return retryingCameraStateOpener.mo827openCameraWithRetryaeCOTgg(str, camera2DeviceCloser, nl3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static boolean openCameraWithRetry_aeCOTgg$lambda$0(j59 j59Var) {
        j59Var.getClass();
        return true;
    }

    void cancelOpen();

    /* JADX INFO: renamed from: openAndAwaitCameraWithRetry-0r8Bogc, reason: not valid java name */
    AwaitOpenCameraResult mo826openAndAwaitCameraWithRetry0r8Bogc(String str, Camera2DeviceCloser camera2DeviceCloser);

    /* JADX INFO: renamed from: openCameraWithRetry-aeCOTgg, reason: not valid java name */
    Object mo827openCameraWithRetryaeCOTgg(String str, Camera2DeviceCloser camera2DeviceCloser, nl3<? super j59, Boolean> nl3Var, e02<? super OpenCameraResult> e02Var);
}
