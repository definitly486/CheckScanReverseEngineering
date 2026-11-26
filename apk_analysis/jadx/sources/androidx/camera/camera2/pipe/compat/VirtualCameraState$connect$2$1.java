package androidx.camera.camera2.pipe.compat;

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
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.VirtualCameraState$connect$2$1", f = "VirtualCamera.kt", l = {177}, m = "invokeSuspend", v = 1)
public final class VirtualCameraState$connect$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ hd3<CameraState> $state;
    int label;
    final /* synthetic */ VirtualCameraState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VirtualCameraState$connect$2$1(hd3<? extends CameraState> hd3Var, VirtualCameraState virtualCameraState, e02<? super VirtualCameraState$connect$2$1> e02Var) {
        super(2, e02Var);
        this.$state = hd3Var;
        this.this$0 = virtualCameraState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new VirtualCameraState$connect$2$1(this.$state, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((VirtualCameraState$connect$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            hd3<CameraState> hd3Var = this.$state;
            final VirtualCameraState virtualCameraState = this.this$0;
            id3<? super CameraState> id3Var = new id3() { // from class: androidx.camera.camera2.pipe.compat.VirtualCameraState$connect$2$1.1
                public final Object emit(CameraState cameraState, e02<? super j59> e02Var) {
                    Object obj2 = virtualCameraState.lock;
                    VirtualCameraState virtualCameraState2 = virtualCameraState;
                    synchronized (obj2) {
                        try {
                            if (cameraState instanceof CameraStateOpen) {
                                CameraDeviceWrapper cameraDevice = ((CameraStateOpen) cameraState).getCameraDevice();
                                cameraDevice.getClass();
                                VirtualAndroidCameraDevice virtualAndroidCameraDevice = new VirtualAndroidCameraDevice((AndroidCameraDevice) cameraDevice);
                                virtualCameraState2.currentVirtualAndroidCamera = virtualAndroidCameraDevice;
                                virtualCameraState2.emitState(new CameraStateOpen(virtualAndroidCameraDevice));
                            } else {
                                virtualCameraState2.emitState(cameraState);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return j59.a;
                }

                @Override // defpackage.id3
                public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                    return emit((CameraState) obj2, (e02<? super j59>) e02Var);
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
