package androidx.camera.camera2.pipe.compat;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache", f = "Camera2DeviceCache.kt", l = {169}, m = "getOrInitializeDeviceSetupWrapper-0r8Bogc", v = 1)
public final class Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 extends f02 {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1(Camera2DeviceCache camera2DeviceCache, e02<? super Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1> e02Var) {
        super(e02Var);
        this.this$0 = camera2DeviceCache;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m765getOrInitializeDeviceSetupWrapper0r8Bogc(null, this);
    }
}
