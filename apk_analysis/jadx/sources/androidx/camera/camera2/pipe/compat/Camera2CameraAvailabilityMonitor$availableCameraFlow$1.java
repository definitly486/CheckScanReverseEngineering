package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraId;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sg6;
import defpackage.t91;
import defpackage.ug6;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1", f = "RetryingCameraStateOpener.kt", l = {158}, m = "invokeSuspend", v = 1)
public final class Camera2CameraAvailabilityMonitor$availableCameraFlow$1 extends pg8 implements bm3<ug6<? super CameraId>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Camera2CameraAvailabilityMonitor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2CameraAvailabilityMonitor$availableCameraFlow$1(Camera2CameraAvailabilityMonitor camera2CameraAvailabilityMonitor, e02<? super Camera2CameraAvailabilityMonitor$availableCameraFlow$1> e02Var) {
        super(2, e02Var);
        this.this$0 = camera2CameraAvailabilityMonitor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(CameraManager cameraManager, Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1 camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1) {
        cameraManager.unregisterAvailabilityCallback(camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1);
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        Camera2CameraAvailabilityMonitor$availableCameraFlow$1 camera2CameraAvailabilityMonitor$availableCameraFlow$1 = new Camera2CameraAvailabilityMonitor$availableCameraFlow$1(this.this$0, e02Var);
        camera2CameraAvailabilityMonitor$availableCameraFlow$1.L$0 = obj;
        return camera2CameraAvailabilityMonitor$availableCameraFlow$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(ug6<? super CameraId> ug6Var, e02<? super j59> e02Var) {
        return ((Camera2CameraAvailabilityMonitor$availableCameraFlow$1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.hardware.camera2.CameraManager$AvailabilityCallback, androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final ug6 ug6Var = (ug6) this.L$0;
            final ?? r1 = new CameraManager.AvailabilityCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1
                @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                public void onCameraAvailable(String str) {
                    str.getClass();
                    t91.a(ug6Var, CameraId.m351boximpl(CameraId.m352constructorimpl(str)));
                }
            };
            final CameraManager cameraManager = (CameraManager) this.this$0.cameraManager.get();
            if (Build.VERSION.SDK_INT >= 28) {
                cameraManager.getClass();
                Api28Compat.registerAvailabilityCallback(cameraManager, this.this$0.threads.getCamera2Executor(), r1);
            } else {
                cameraManager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, this.this$0.threads.getCamera2Handler());
            }
            ll3 ll3Var = new ll3() { // from class: androidx.camera.camera2.pipe.compat.a
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Camera2CameraAvailabilityMonitor$availableCameraFlow$1.invokeSuspend$lambda$0(cameraManager, r1);
                }
            };
            this.label = 1;
            if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
