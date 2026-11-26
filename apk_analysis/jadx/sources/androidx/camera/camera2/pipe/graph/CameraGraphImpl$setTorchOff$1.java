package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Result3A;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$setTorchOff$1", f = "CameraGraphImpl.kt", l = {}, m = "invokeSuspend", v = 1)
public final class CameraGraphImpl$setTorchOff$1 extends pg8 implements bm3<y22, e02<? super mk2<? extends Result3A>>, Object> {
    final /* synthetic */ AeMode $aeMode;
    int label;
    final /* synthetic */ CameraGraphImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraGraphImpl$setTorchOff$1(CameraGraphImpl cameraGraphImpl, AeMode aeMode, e02<? super CameraGraphImpl$setTorchOff$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraGraphImpl;
        this.$aeMode = aeMode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CameraGraphImpl$setTorchOff$1(this.this$0, this.$aeMode, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(y22 y22Var, e02<? super mk2<Result3A>> e02Var) {
        return ((CameraGraphImpl$setTorchOff$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return this.this$0.controller3A.m882setTorchOffNqN7i0k(this.$aeMode);
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super mk2<? extends Result3A>> e02Var) {
        return invoke2(y22Var, (e02<? super mk2<Result3A>>) e02Var);
    }
}
