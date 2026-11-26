package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraph;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$useSessionIn$1$1$1", f = "CameraGraphImpl.kt", l = {204}, m = "invokeSuspend", v = 1)
public final class CameraGraphImpl$useSessionIn$1$1$1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
    final /* synthetic */ dm3<y22, CameraGraph.Session, e02<? super T>, Object> $action;
    final /* synthetic */ CameraGraphSessionImpl $session;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CameraGraphImpl$useSessionIn$1$1$1(dm3<? super y22, ? super CameraGraph.Session, ? super e02<? super T>, ? extends Object> dm3Var, CameraGraphSessionImpl cameraGraphSessionImpl, e02<? super CameraGraphImpl$useSessionIn$1$1$1> e02Var) {
        super(2, e02Var);
        this.$action = dm3Var;
        this.$session = cameraGraphSessionImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CameraGraphImpl$useSessionIn$1$1$1 cameraGraphImpl$useSessionIn$1$1$1 = new CameraGraphImpl$useSessionIn$1$1$1(this.$action, this.$session, e02Var);
        cameraGraphImpl$useSessionIn$1$1$1.L$0 = obj;
        return cameraGraphImpl$useSessionIn$1$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
        return ((CameraGraphImpl$useSessionIn$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        y22 y22Var = (y22) this.L$0;
        dm3<y22, CameraGraph.Session, e02<? super T>, Object> dm3Var = this.$action;
        CameraGraphSessionImpl cameraGraphSessionImpl = this.$session;
        this.label = 1;
        Object objInvoke = dm3Var.invoke(y22Var, cameraGraphSessionImpl, this);
        return objInvoke == a32Var ? a32Var : objInvoke;
    }
}
