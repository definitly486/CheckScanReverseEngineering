package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameInfo;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sg6;
import defpackage.ug6;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$latestFrameInfo$1", f = "CameraGraphImpl.kt", l = {143}, m = "invokeSuspend", v = 1)
public final class CameraGraphImpl$latestFrameInfo$1 extends pg8 implements bm3<ug6<? super FrameInfo>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CameraGraphImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraGraphImpl$latestFrameInfo$1(CameraGraphImpl cameraGraphImpl, e02<? super CameraGraphImpl$latestFrameInfo$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraGraphImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(ug6 ug6Var, FrameInfo frameInfo) {
        ug6Var.mo0trySendJP2dKIU(frameInfo);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$1(CameraGraphImpl cameraGraphImpl, LatestFrameInfoListener latestFrameInfoListener) {
        cameraGraphImpl.getListeners().remove(latestFrameInfoListener);
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CameraGraphImpl$latestFrameInfo$1 cameraGraphImpl$latestFrameInfo$1 = new CameraGraphImpl$latestFrameInfo$1(this.this$0, e02Var);
        cameraGraphImpl$latestFrameInfo$1.L$0 = obj;
        return cameraGraphImpl$latestFrameInfo$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(ug6<? super FrameInfo> ug6Var, e02<? super j59> e02Var) {
        return ((CameraGraphImpl$latestFrameInfo$1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final ug6 ug6Var = (ug6) this.L$0;
            final LatestFrameInfoListener latestFrameInfoListener = new LatestFrameInfoListener(new nl3() { // from class: androidx.camera.camera2.pipe.graph.a
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return CameraGraphImpl$latestFrameInfo$1.invokeSuspend$lambda$0(ug6Var, (FrameInfo) obj2);
                }
            });
            this.this$0.getListeners().add(latestFrameInfoListener);
            final CameraGraphImpl cameraGraphImpl = this.this$0;
            ll3 ll3Var = new ll3() { // from class: androidx.camera.camera2.pipe.graph.b
                @Override // defpackage.ll3
                public final Object invoke() {
                    return CameraGraphImpl$latestFrameInfo$1.invokeSuspend$lambda$1(cameraGraphImpl, latestFrameInfoListener);
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
