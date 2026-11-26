package defpackage;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.impl.CameraCallbackMap;
import com.my.tracker.obfuscated.i0;
import com.my.tracker.obfuscated.s1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h01 implements Runnable {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ long c;
    public final /* synthetic */ long d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ h01(CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        this.e = captureCallbackContainer;
        this.f = cameraCaptureSession;
        this.g = captureRequest;
        this.c = j;
        this.d = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.g;
        Object obj2 = this.f;
        Object obj3 = this.e;
        switch (i) {
            case 0:
                CameraCallbackMap.onReadoutStarted_mP9r_9w$lambda$0((CameraUseCaseAdapter.CaptureCallbackContainer) obj3, (CameraCaptureSession) obj2, (CaptureRequest) obj, this.c, this.d);
                break;
            default:
                long j = this.d;
                ((i0) obj3).a(this.c, (String) obj2, (s1.a) obj, j);
                break;
        }
    }

    public /* synthetic */ h01(i0 i0Var, long j, String str, s1.a aVar, long j2) {
        this.e = i0Var;
        this.c = j;
        this.f = str;
        this.g = aVar;
        this.d = j2;
    }
}
