package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import com.yalantis.ucrop.UCrop;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vg5;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusJob$1", f = "Camera2CameraStatusMonitor.kt", l = {UCrop.REQUEST_CROP}, m = "invokeSuspend", v = 1)
public final class Camera2CameraStatusMonitor$cameraStatusJob$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ Camera2CameraStatusMonitor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2CameraStatusMonitor$cameraStatusJob$1(Camera2CameraStatusMonitor camera2CameraStatusMonitor, e02<? super Camera2CameraStatusMonitor$cameraStatusJob$1> e02Var) {
        super(2, e02Var);
        this.this$0 = camera2CameraStatusMonitor;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Camera2CameraStatusMonitor$cameraStatusJob$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Camera2CameraStatusMonitor$cameraStatusJob$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            hd3 hd3Var = this.this$0.cameraStatus;
            final Camera2CameraStatusMonitor camera2CameraStatusMonitor = this.this$0;
            id3 id3Var = new id3() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusJob$1.1
                public final Object emit(CameraStatusMonitor.CameraStatus cameraStatus, e02<? super j59> e02Var) {
                    if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraAvailable) {
                        Object objEmit = camera2CameraStatusMonitor._cameraAvailability.emit(cameraStatus, e02Var);
                        return objEmit == a32.COROUTINE_SUSPENDED ? objEmit : j59.a;
                    }
                    if (cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraUnavailable) {
                        Object objEmit2 = camera2CameraStatusMonitor._cameraAvailability.emit(cameraStatus, e02Var);
                        return objEmit2 == a32.COROUTINE_SUSPENDED ? objEmit2 : j59.a;
                    }
                    if (!(cameraStatus instanceof CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged)) {
                        return j59.a;
                    }
                    vg5 vg5Var = camera2CameraStatusMonitor._cameraPriorities;
                    j59 j59Var = j59.a;
                    Object objEmit3 = vg5Var.emit(j59Var, e02Var);
                    return objEmit3 == a32.COROUTINE_SUSPENDED ? objEmit3 : j59Var;
                }

                @Override // defpackage.id3
                public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                    return emit((CameraStatusMonitor.CameraStatus) obj2, (e02<? super j59>) e02Var);
                }
            };
            this.label = 1;
            if (hd3Var.collect(id3Var, this) == a32Var) {
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
