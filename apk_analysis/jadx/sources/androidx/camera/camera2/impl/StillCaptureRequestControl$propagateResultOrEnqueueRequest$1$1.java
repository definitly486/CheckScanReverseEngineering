package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.n07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1", f = "StillCaptureRequestControl.kt", l = {WebmConstants.MkvEbmlElement.CUE_TRACK_POSITIONS, 222}, m = "invokeSuspend", v = 1)
public final class StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ UseCaseCameraRequestControl $currentRequestControl;
    final /* synthetic */ StillCaptureRequestControl.CaptureRequest $submittedRequest;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ StillCaptureRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(StillCaptureRequestControl stillCaptureRequestControl, UseCaseCameraRequestControl useCaseCameraRequestControl, StillCaptureRequestControl.CaptureRequest captureRequest, e02<? super StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1> e02Var) {
        super(2, e02Var);
        this.this$0 = stillCaptureRequestControl;
        this.$currentRequestControl = useCaseCameraRequestControl;
        this.$submittedRequest = captureRequest;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(this.this$0, this.$currentRequestControl, this.$submittedRequest, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0073 A[PHI: r6
      0x0073: PHI (r6v1 n07) = (r6v0 n07), (r6v0 n07), (r6v2 n07) binds: [B:11:0x0048, B:13:0x0054, B:18:0x006b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x0077  */
    /* JADX WARN: Code duplicated, block: B:24:0x0092  */
    /* JADX WARN: Code duplicated, block: B:28:0x00aa  */
    /* JADX WARN: Instruction removed from duplicated block: B:28:0x00aa, please report this as an issue */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        n07 n07Var;
        UseCaseCameraRequestControl useCaseCameraRequestControl;
        StillCaptureRequestControl stillCaptureRequestControl;
        StillCaptureRequestControl.CaptureRequest captureRequest;
        yg5 yg5Var;
        StillCaptureRequestControl stillCaptureRequestControl2;
        StillCaptureRequestControl.CaptureRequest captureRequest2;
        yg5 yg5Var2;
        StillCaptureRequestControl.CaptureRequest captureRequest3;
        StillCaptureRequestControl.CaptureRequest captureRequest4;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                stillCaptureRequestControl = (StillCaptureRequestControl) this.L$3;
                useCaseCameraRequestControl = (UseCaseCameraRequestControl) this.L$2;
                captureRequest = (StillCaptureRequestControl.CaptureRequest) this.L$1;
                n07Var = (n07) this.L$0;
                r57.b(obj);
            } else {
                if (i != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                captureRequest3 = (StillCaptureRequestControl.CaptureRequest) this.L$2;
                stillCaptureRequestControl2 = (StillCaptureRequestControl) this.L$1;
                yg5Var2 = (yg5) this.L$0;
                r57.b(obj);
            }
            try {
                stillCaptureRequestControl2.pendingRequests.add(captureRequest3);
                yg5Var2.unlock(null);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                captureRequest4 = this.$submittedRequest;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: failed to submit " + captureRequest4 + ", will be retried with a future UseCaseCamera");
                }
                return j59.a;
            } catch (Throwable th) {
                yg5Var2.unlock(null);
                throw th;
            }
        }
        r57.b(obj);
        n07Var = new n07();
        n07Var.b = true;
        UseCaseCameraRequestControl requestControl = this.this$0.getRequestControl();
        if (requestControl != null) {
            UseCaseCameraRequestControl useCaseCameraRequestControl2 = this.$currentRequestControl;
            StillCaptureRequestControl stillCaptureRequestControl3 = this.this$0;
            StillCaptureRequestControl.CaptureRequest captureRequest5 = this.$submittedRequest;
            if (!aa4.e(useCaseCameraRequestControl2, requestControl)) {
                this.L$0 = n07Var;
                this.L$1 = captureRequest5;
                this.L$2 = requestControl;
                this.L$3 = stillCaptureRequestControl3;
                this.label = 1;
                Object objSubmitRequest = stillCaptureRequestControl3.submitRequest(captureRequest5, requestControl, this);
                if (objSubmitRequest != a32Var) {
                    useCaseCameraRequestControl = requestControl;
                    obj = objSubmitRequest;
                    stillCaptureRequestControl = stillCaptureRequestControl3;
                    captureRequest = captureRequest5;
                }
            } else if (n07Var.b) {
                yg5Var = this.this$0.mutex;
                stillCaptureRequestControl2 = this.this$0;
                captureRequest2 = this.$submittedRequest;
                this.L$0 = yg5Var;
                this.L$1 = stillCaptureRequestControl2;
                this.L$2 = captureRequest2;
                this.L$3 = null;
                this.label = 2;
                if (yg5Var.lock(null, this) != a32Var) {
                    yg5Var2 = yg5Var;
                    captureRequest3 = captureRequest2;
                    stillCaptureRequestControl2.pendingRequests.add(captureRequest3);
                    yg5Var2.unlock(null);
                    Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                    captureRequest4 = this.$submittedRequest;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: failed to submit " + captureRequest4 + ", will be retried with a future UseCaseCamera");
                    }
                }
            }
            return a32Var;
        }
        if (n07Var.b) {
            yg5Var = this.this$0.mutex;
            stillCaptureRequestControl2 = this.this$0;
            captureRequest2 = this.$submittedRequest;
            this.L$0 = yg5Var;
            this.L$1 = stillCaptureRequestControl2;
            this.L$2 = captureRequest2;
            this.L$3 = null;
            this.label = 2;
            if (yg5Var.lock(null, this) != a32Var) {
                yg5Var2 = yg5Var;
                captureRequest3 = captureRequest2;
                stillCaptureRequestControl2.pendingRequests.add(captureRequest3);
                yg5Var2.unlock(null);
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                captureRequest4 = this.$submittedRequest;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: failed to submit " + captureRequest4 + ", will be retried with a future UseCaseCamera");
                }
            }
            return a32Var;
        }
        return j59.a;
        stillCaptureRequestControl.propagateResultOrEnqueueRequest((mk2) obj, captureRequest, useCaseCameraRequestControl);
        n07Var.b = false;
        if (n07Var.b) {
            yg5Var = this.this$0.mutex;
            stillCaptureRequestControl2 = this.this$0;
            captureRequest2 = this.$submittedRequest;
            this.L$0 = yg5Var;
            this.L$1 = stillCaptureRequestControl2;
            this.L$2 = captureRequest2;
            this.L$3 = null;
            this.label = 2;
            if (yg5Var.lock(null, this) != a32Var) {
                yg5Var2 = yg5Var;
                captureRequest3 = captureRequest2;
                stillCaptureRequestControl2.pendingRequests.add(captureRequest3);
                yg5Var2.unlock(null);
                Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                captureRequest4 = this.$submittedRequest;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: failed to submit " + captureRequest4 + ", will be retried with a future UseCaseCamera");
                }
            }
            return a32Var;
        }
        return j59.a;
    }
}
