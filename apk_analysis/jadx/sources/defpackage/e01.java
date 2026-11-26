package defpackage;

import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.viewfinder.core.impl.PixelCopyCompat;
import yads.jf;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e01 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ e01(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return CameraCallbackMap.rejectOperationCameraCaptureSession_delegate$lambda$0();
            case 1:
                return j59.a;
            case 2:
                return PixelCopyCompat.Companion.impl_delegate$lambda$1();
            default:
                return jf.a();
        }
    }
}
