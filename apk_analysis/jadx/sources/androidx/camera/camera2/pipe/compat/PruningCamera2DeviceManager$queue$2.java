package androidx.camera.camera2.pipe.compat;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$queue$2", f = "Camera2DeviceManager.kt", l = {190}, m = "invokeSuspend", v = 1)
public final class PruningCamera2DeviceManager$queue$2 extends pg8 implements bm3<CameraRequest, e02<? super j59>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PruningCamera2DeviceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningCamera2DeviceManager$queue$2(PruningCamera2DeviceManager pruningCamera2DeviceManager, e02<? super PruningCamera2DeviceManager$queue$2> e02Var) {
        super(2, e02Var);
        this.this$0 = pruningCamera2DeviceManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PruningCamera2DeviceManager$queue$2 pruningCamera2DeviceManager$queue$2 = new PruningCamera2DeviceManager$queue$2(this.this$0, e02Var);
        pruningCamera2DeviceManager$queue$2.L$0 = obj;
        return pruningCamera2DeviceManager$queue$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(CameraRequest cameraRequest, e02<? super j59> e02Var) {
        return ((PruningCamera2DeviceManager$queue$2) create(cameraRequest, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            CameraRequest cameraRequest = (CameraRequest) this.L$0;
            PruningCamera2DeviceManager pruningCamera2DeviceManager = this.this$0;
            this.label = 1;
            if (pruningCamera2DeviceManager.process(cameraRequest, this) == a32Var) {
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
