package defpackage;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.impl.CameraCallbackMap;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c01 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ c01(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.f;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                CameraCallbackMap.onFailed_CcXjc1I$lambda$0((CameraUseCaseAdapter.CaptureCallbackContainer) obj4, (CameraCaptureSession) obj3, (CaptureRequest) obj2, (CaptureFailure) obj);
                break;
            default:
                pi2 pi2Var = (pi2) obj4;
                hz hzVar = (hz) obj3;
                String str = hzVar.a;
                f39 f39Var = (f39) obj2;
                sy syVar = (sy) obj;
                Logger logger = pi2.f;
                try {
                    r29 r29Var = pi2Var.c.get(str);
                    if (r29Var == null) {
                        String str2 = "Transport backend '" + str + "' is not registered";
                        logger.warning(str2);
                        f39Var.a(new IllegalArgumentException(str2));
                    } else {
                        pi2Var.e.a(new ni2(pi2Var, hzVar, r29Var.a(syVar)));
                        f39Var.a(null);
                    }
                } catch (Exception e) {
                    logger.warning("Error scheduling event " + e.getMessage());
                    f39Var.a(e);
                    return;
                }
                break;
        }
    }
}
