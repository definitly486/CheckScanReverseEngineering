package androidx.camera.camera2.impl;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraState", f = "UseCaseCameraState.kt", l = {150}, m = "updateAsync-Tp9XwKQ", v = 1)
public final class UseCaseCameraState$updateAsync$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UseCaseCameraState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraState$updateAsync$1(UseCaseCameraState useCaseCameraState, e02<? super UseCaseCameraState$updateAsync$1> e02Var) {
        super(e02Var);
        this.this$0 = useCaseCameraState;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m102updateAsyncTp9XwKQ(null, false, null, false, null, null, null, this);
    }
}
