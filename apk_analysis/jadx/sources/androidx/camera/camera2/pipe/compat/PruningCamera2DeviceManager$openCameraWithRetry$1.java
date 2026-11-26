package androidx.camera.camera2.pipe.compat;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", f = "Camera2DeviceManager.kt", l = {576}, m = "openCameraWithRetry-zDSwpeU", v = 1)
public final class PruningCamera2DeviceManager$openCameraWithRetry$1 extends f02 {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PruningCamera2DeviceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningCamera2DeviceManager$openCameraWithRetry$1(PruningCamera2DeviceManager pruningCamera2DeviceManager, e02<? super PruningCamera2DeviceManager$openCameraWithRetry$1> e02Var) {
        super(e02Var);
        this.this$0 = pruningCamera2DeviceManager;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m814openCameraWithRetryzDSwpeU(null, null, null, null, this);
    }
}
