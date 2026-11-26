package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameNumber;
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
@bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$latestFrameNumber$1", f = "CameraGraphImpl.kt", l = {136}, m = "invokeSuspend", v = 1)
public final class CameraGraphImpl$latestFrameNumber$1 extends pg8 implements bm3<ug6<? super FrameNumber>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CameraGraphImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraGraphImpl$latestFrameNumber$1(CameraGraphImpl cameraGraphImpl, e02<? super CameraGraphImpl$latestFrameNumber$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraGraphImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(ug6 ug6Var, FrameNumber frameNumber) {
        ug6Var.mo0trySendJP2dKIU(frameNumber);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$1(CameraGraphImpl cameraGraphImpl, LatestFrameNumberListener latestFrameNumberListener) {
        cameraGraphImpl.getListeners().remove(latestFrameNumberListener);
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CameraGraphImpl$latestFrameNumber$1 cameraGraphImpl$latestFrameNumber$1 = new CameraGraphImpl$latestFrameNumber$1(this.this$0, e02Var);
        cameraGraphImpl$latestFrameNumber$1.L$0 = obj;
        return cameraGraphImpl$latestFrameNumber$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(ug6<? super FrameNumber> ug6Var, e02<? super j59> e02Var) {
        return ((CameraGraphImpl$latestFrameNumber$1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final ug6 ug6Var = (ug6) this.L$0;
            final LatestFrameNumberListener latestFrameNumberListener = new LatestFrameNumberListener(new nl3() { // from class: androidx.camera.camera2.pipe.graph.c
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return CameraGraphImpl$latestFrameNumber$1.invokeSuspend$lambda$0(ug6Var, (FrameNumber) obj2);
                }
            });
            this.this$0.getListeners().add(latestFrameNumberListener);
            final CameraGraphImpl cameraGraphImpl = this.this$0;
            ll3 ll3Var = new ll3() { // from class: androidx.camera.camera2.pipe.graph.d
                @Override // defpackage.ll3
                public final Object invoke() {
                    return CameraGraphImpl$latestFrameNumber$1.invokeSuspend$lambda$1(cameraGraphImpl, latestFrameNumberListener);
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
