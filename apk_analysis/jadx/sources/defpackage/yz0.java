package defpackage;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yz0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ yz0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                CameraCallbackMap.onRequestSequenceAborted$lambda$0((CameraUseCaseAdapter.CaptureCallbackContainer) obj2, (CameraCaptureSession) obj);
                break;
            default:
                ((SphericalGLSurfaceView) obj2).lambda$onSurfaceTextureAvailable$1((SurfaceTexture) obj);
                break;
        }
    }
}
