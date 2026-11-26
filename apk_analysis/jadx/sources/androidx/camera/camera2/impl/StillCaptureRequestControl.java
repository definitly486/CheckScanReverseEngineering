package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.media3.muxer.WebmConstants;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.e02;
import defpackage.ej0;
import defpackage.f02;
import defpackage.fg;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.oz;
import defpackage.pg8;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yg5;
import defpackage.yp1;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class StillCaptureRequestControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final FlashControl flashControl;
    private final yg5 mutex;
    private final LinkedList<CaptureRequest> pendingRequests;
    private final UseCaseThreads threads;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(StillCaptureRequestControl stillCaptureRequestControl);
    }

    public static final class CaptureRequest {
        private final List<CaptureConfig> captureConfigs;
        private final int captureMode;
        private final int flashType;
        private final xp1<List<Void>> result;

        public CaptureRequest(List<CaptureConfig> list, int i, int i2, xp1<List<Void>> xp1Var) {
            list.getClass();
            xp1Var.getClass();
            this.captureConfigs = list;
            this.captureMode = i;
            this.flashType = i2;
            this.result = xp1Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CaptureRequest copy$default(CaptureRequest captureRequest, List list, int i, int i2, xp1 xp1Var, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                list = captureRequest.captureConfigs;
            }
            if ((i3 & 2) != 0) {
                i = captureRequest.captureMode;
            }
            if ((i3 & 4) != 0) {
                i2 = captureRequest.flashType;
            }
            if ((i3 & 8) != 0) {
                xp1Var = captureRequest.result;
            }
            return captureRequest.copy(list, i, i2, xp1Var);
        }

        public final List<CaptureConfig> component1() {
            return this.captureConfigs;
        }

        public final int component2() {
            return this.captureMode;
        }

        public final int component3() {
            return this.flashType;
        }

        public final xp1<List<Void>> component4() {
            return this.result;
        }

        public final CaptureRequest copy(List<CaptureConfig> list, int i, int i2, xp1<List<Void>> xp1Var) {
            list.getClass();
            xp1Var.getClass();
            return new CaptureRequest(list, i, i2, xp1Var);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CaptureRequest)) {
                return false;
            }
            CaptureRequest captureRequest = (CaptureRequest) obj;
            return aa4.e(this.captureConfigs, captureRequest.captureConfigs) && this.captureMode == captureRequest.captureMode && this.flashType == captureRequest.flashType && aa4.e(this.result, captureRequest.result);
        }

        public final List<CaptureConfig> getCaptureConfigs() {
            return this.captureConfigs;
        }

        public final int getCaptureMode() {
            return this.captureMode;
        }

        public final int getFlashType() {
            return this.flashType;
        }

        public final xp1<List<Void>> getResult() {
            return this.result;
        }

        public int hashCode() {
            return this.result.hashCode() + ej0.b(this.flashType, ej0.b(this.captureMode, this.captureConfigs.hashCode() * 31, 31), 31);
        }

        public String toString() {
            return "CaptureRequest(captureConfigs=" + this.captureConfigs + ", captureMode=" + this.captureMode + ", flashType=" + this.flashType + ", result=" + this.result + ')';
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$issueCaptureRequests$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.StillCaptureRequestControl$issueCaptureRequests$1", f = "StillCaptureRequestControl.kt", l = {99, 100, 222}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ List<CaptureConfig> $captureConfigs;
        final /* synthetic */ int $captureMode;
        final /* synthetic */ int $flashType;
        final /* synthetic */ xp1<List<Void>> $signal;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ StillCaptureRequestControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(List<CaptureConfig> list, int i, int i2, xp1<List<Void>> xp1Var, StillCaptureRequestControl stillCaptureRequestControl, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$captureConfigs = list;
            this.$captureMode = i;
            this.$flashType = i2;
            this.$signal = xp1Var;
            this.this$0 = stillCaptureRequestControl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$captureConfigs, this.$captureMode, this.$flashType, this.$signal, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0090  */
        /* JADX WARN: Code duplicated, block: B:28:0x0094  */
        /* JADX WARN: Code duplicated, block: B:32:0x009c A[PHI: r12
          0x009c: PHI (r12v2 androidx.camera.camera2.impl.StillCaptureRequestControl$CaptureRequest) = 
          (r12v1 androidx.camera.camera2.impl.StillCaptureRequestControl$CaptureRequest)
          (r12v3 androidx.camera.camera2.impl.StillCaptureRequestControl$CaptureRequest)
         binds: [B:13:0x005e, B:18:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:35:0x00b3  */
        /* JADX WARN: Code duplicated, block: B:39:0x00c9  */
        /* JADX WARN: Instruction removed from duplicated block: B:39:0x00c9, please report this as an issue */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            CaptureRequest captureRequest;
            UseCaseCameraRequestControl requestControl;
            Object objAwaitSurfaceSetup;
            yg5 yg5Var;
            StillCaptureRequestControl stillCaptureRequestControl;
            CaptureRequest captureRequest2;
            StillCaptureRequestControl stillCaptureRequestControl2;
            CaptureRequest captureRequest3;
            StillCaptureRequestControl stillCaptureRequestControl3;
            mk2 mk2Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                captureRequest = new CaptureRequest(this.$captureConfigs, this.$captureMode, this.$flashType, this.$signal);
                requestControl = this.this$0.getRequestControl();
                if (requestControl != null) {
                    this.L$0 = captureRequest;
                    this.L$1 = requestControl;
                    this.label = 1;
                    objAwaitSurfaceSetup = requestControl.awaitSurfaceSetup(this);
                    if (objAwaitSurfaceSetup != a32Var) {
                    }
                } else {
                    yg5Var = this.this$0.mutex;
                    stillCaptureRequestControl = this.this$0;
                    this.L$0 = captureRequest;
                    this.L$1 = yg5Var;
                    this.L$2 = stillCaptureRequestControl;
                    this.label = 3;
                    if (yg5Var.lock(null, this) != a32Var) {
                        captureRequest2 = captureRequest;
                        stillCaptureRequestControl2 = stillCaptureRequestControl;
                        stillCaptureRequestControl2.pendingRequests.add(captureRequest2);
                        yg5Var.unlock(null);
                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: useCaseCamera is null, " + captureRequest2 + " will be retried with a future UseCaseCamera");
                        }
                        return j59.a;
                    }
                }
                return a32Var;
            }
            if (i != 1) {
                if (i == 2) {
                    stillCaptureRequestControl3 = (StillCaptureRequestControl) this.L$2;
                    requestControl = (UseCaseCameraRequestControl) this.L$1;
                    captureRequest3 = (CaptureRequest) this.L$0;
                    r57.b(obj);
                    mk2Var = (mk2) obj;
                    if (requestControl != null) {
                        stillCaptureRequestControl3.propagateResultOrEnqueueRequest(mk2Var, captureRequest3, requestControl);
                        return j59.a;
                    }
                    fg.c("Required value was null.");
                    return null;
                }
                if (i != 3) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                stillCaptureRequestControl2 = (StillCaptureRequestControl) this.L$2;
                yg5Var = (yg5) this.L$1;
                captureRequest2 = (CaptureRequest) this.L$0;
                r57.b(obj);
                try {
                    stillCaptureRequestControl2.pendingRequests.add(captureRequest2);
                    yg5Var.unlock(null);
                    Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: useCaseCamera is null, " + captureRequest2 + " will be retried with a future UseCaseCamera");
                    }
                    return j59.a;
                } catch (Throwable th) {
                    yg5Var.unlock(null);
                    throw th;
                }
            }
            requestControl = (UseCaseCameraRequestControl) this.L$1;
            CaptureRequest captureRequest4 = (CaptureRequest) this.L$0;
            r57.b(obj);
            objAwaitSurfaceSetup = obj;
            captureRequest = captureRequest4;
            if (((Boolean) objAwaitSurfaceSetup).booleanValue()) {
                StillCaptureRequestControl stillCaptureRequestControl4 = this.this$0;
                if (requestControl == null) {
                    fg.c("Required value was null.");
                    return null;
                }
                this.L$0 = captureRequest;
                this.L$1 = requestControl;
                this.L$2 = stillCaptureRequestControl4;
                this.label = 2;
                Object objSubmitRequest = stillCaptureRequestControl4.submitRequest(captureRequest, requestControl, this);
                if (objSubmitRequest != a32Var) {
                    CaptureRequest captureRequest5 = captureRequest;
                    obj = objSubmitRequest;
                    captureRequest3 = captureRequest5;
                    stillCaptureRequestControl3 = stillCaptureRequestControl4;
                    mk2Var = (mk2) obj;
                    if (requestControl != null) {
                        stillCaptureRequestControl3.propagateResultOrEnqueueRequest(mk2Var, captureRequest3, requestControl);
                        return j59.a;
                    }
                    fg.c("Required value was null.");
                    return null;
                }
            } else {
                yg5Var = this.this$0.mutex;
                stillCaptureRequestControl = this.this$0;
                this.L$0 = captureRequest;
                this.L$1 = yg5Var;
                this.L$2 = stillCaptureRequestControl;
                this.label = 3;
                if (yg5Var.lock(null, this) != a32Var) {
                    captureRequest2 = captureRequest;
                    stillCaptureRequestControl2 = stillCaptureRequestControl;
                    stillCaptureRequestControl2.pendingRequests.add(captureRequest2);
                    yg5Var.unlock(null);
                    Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: useCaseCamera is null, " + captureRequest2 + " will be retried with a future UseCaseCamera");
                    }
                    return j59.a;
                }
            }
            return a32Var;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$reset$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.StillCaptureRequestControl$reset$1", f = "StillCaptureRequestControl.kt", l = {222}, m = "invokeSuspend", v = 1)
    public static final class C03971 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        Object L$1;
        int label;

        public C03971(e02<? super C03971> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return StillCaptureRequestControl.this.new C03971(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C03971) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            yg5 yg5Var;
            StillCaptureRequestControl stillCaptureRequestControl;
            xp1<List<Void>> result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                yg5 yg5Var2 = StillCaptureRequestControl.this.mutex;
                StillCaptureRequestControl stillCaptureRequestControl2 = StillCaptureRequestControl.this;
                this.L$0 = yg5Var2;
                this.L$1 = stillCaptureRequestControl2;
                this.label = 1;
                if (yg5Var2.lock(null, this) == a32Var) {
                    return a32Var;
                }
                yg5Var = yg5Var2;
                stillCaptureRequestControl = stillCaptureRequestControl2;
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                stillCaptureRequestControl = (StillCaptureRequestControl) this.L$1;
                yg5Var = (yg5) this.L$0;
                r57.b(obj);
            }
            while (!stillCaptureRequestControl.pendingRequests.isEmpty()) {
                try {
                    CaptureRequest captureRequest = (CaptureRequest) stillCaptureRequestControl.pendingRequests.poll();
                    if (captureRequest != null && (result = captureRequest.getResult()) != null) {
                        result.e(new ImageCaptureException(3, "Capture request is cancelled due to a reset", null));
                    }
                } catch (Throwable th) {
                    yg5Var.unlock(null);
                    throw th;
                }
            }
            j59 j59Var = j59.a;
            yg5Var.unlock(null);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.StillCaptureRequestControl", f = "StillCaptureRequestControl.kt", l = {144}, m = "submitRequest", v = 1)
    public static final class C03981 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C03981(e02<? super C03981> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StillCaptureRequestControl.this.submitRequest(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$trySubmitPendingRequests$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.StillCaptureRequestControl$trySubmitPendingRequests$1", f = "StillCaptureRequestControl.kt", l = {118, 222, 123}, m = "invokeSuspend", v = 1)
    public static final class C03991 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        public C03991(e02<? super C03991> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return StillCaptureRequestControl.this.new C03991(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C03991) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:33:0x0096 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:8:0x0028, B:39:0x00ba, B:31:0x008c, B:33:0x0096, B:35:0x00a3, B:40:0x00c2), top: B:46:0x0028 }] */
        /* JADX WARN: Code duplicated, block: B:38:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:48:0x00c2 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00b8 -> B:39:0x00ba). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                Method dump skipped, instruction units count: 207
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.StillCaptureRequestControl.C03991.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public StillCaptureRequestControl(FlashControl flashControl, UseCaseThreads useCaseThreads) {
        flashControl.getClass();
        useCaseThreads.getClass();
        this.flashControl = flashControl;
        this.threads = useCaseThreads;
        this.mutex = new ch5();
        this.pendingRequests = new LinkedList<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void propagateResultOrEnqueueRequest(final mk2<? extends List<Void>> mk2Var, final CaptureRequest captureRequest, final UseCaseCameraRequestControl useCaseCameraRequestControl) {
        mk2Var.g(new nl3() { // from class: z88
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return StillCaptureRequestControl.propagateResultOrEnqueueRequest$lambda$0(this.b, mk2Var, captureRequest, useCaseCameraRequestControl, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 propagateResultOrEnqueueRequest$lambda$0(StillCaptureRequestControl stillCaptureRequestControl, mk2 mk2Var, CaptureRequest captureRequest, UseCaseCameraRequestControl useCaseCameraRequestControl, Throwable th) {
        if ((th instanceof ImageCaptureException) && ((ImageCaptureException) th).getImageCaptureError() == 3) {
            av0.c(stillCaptureRequestControl.threads.getSequentialScope(), null, null, new StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1(stillCaptureRequestControl, useCaseCameraRequestControl, captureRequest, null), 3);
        } else {
            CoroutineAdaptersKt.propagateCompletion(mk2Var, captureRequest.getResult(), th);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object submitRequest(CaptureRequest captureRequest, UseCaseCameraRequestControl useCaseCameraRequestControl, e02<? super mk2<? extends List<Void>>> e02Var) {
        C03981 c03981;
        if (e02Var instanceof C03981) {
            c03981 = (C03981) e02Var;
            int i = c03981.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c03981.label = i - Integer.MIN_VALUE;
            } else {
                c03981 = new C03981(e02Var);
            }
        } else {
            c03981 = new C03981(e02Var);
        }
        Object objAwaitFlashModeUpdate = c03981.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c03981.label;
        if (i2 == 0) {
            r57.b(objAwaitFlashModeUpdate);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: submitting " + captureRequest + " at " + useCaseCameraRequestControl);
            }
            FlashControl flashControl = this.flashControl;
            c03981.L$0 = captureRequest;
            c03981.L$1 = useCaseCameraRequestControl;
            c03981.label = 1;
            objAwaitFlashModeUpdate = flashControl.awaitFlashModeUpdate(c03981);
            if (objAwaitFlashModeUpdate == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            useCaseCameraRequestControl = (UseCaseCameraRequestControl) c03981.L$1;
            captureRequest = (CaptureRequest) c03981.L$0;
            r57.b(objAwaitFlashModeUpdate);
        }
        int iIntValue = ((Number) objAwaitFlashModeUpdate).intValue();
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: Issuing single capture");
        }
        return av0.a(this.threads.getSequentialScope(), null, null, new AnonymousClass4(useCaseCameraRequestControl.issueSingleCaptureAsync(captureRequest.getCaptureConfigs(), captureRequest.getCaptureMode(), captureRequest.getFlashType(), iIntValue), captureRequest, null), 3);
    }

    private final void trySubmitPendingRequests() {
        av0.c(this.threads.getSequentialScope(), null, null, new C03991(null), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    public final ListenableFuture<List<Void>> issueCaptureRequests(List<CaptureConfig> list, int i, int i2) {
        list.getClass();
        yp1 yp1Var = new yp1();
        av0.c(this.threads.getSequentialScope(), null, null, new AnonymousClass1(list, i, i2, yp1Var, this, null), 3);
        ListenableFuture<List<Void>> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture$default((mk2) yp1Var, (Object) null, 1, (Object) null));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        av0.c(this.threads.getSequentialScope(), null, null, new C03971(null), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        trySubmitPendingRequests();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$4, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.StillCaptureRequestControl$submitRequest$4", f = "StillCaptureRequestControl.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_GROUP}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4 extends pg8 implements bm3<y22, e02<? super List<? extends Void>>, Object> {
        final /* synthetic */ List<mk2<Void>> $deferredList;
        final /* synthetic */ CaptureRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(List<? extends mk2<Void>> list, CaptureRequest captureRequest, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$deferredList = list;
            this.$request = captureRequest;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass4(this.$deferredList, this.$request, e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(y22 y22Var, e02<? super List<Void>> e02Var) {
            return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                CaptureRequest captureRequest = this.$request;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: Waiting for deferred list from " + captureRequest);
                }
                List<mk2<Void>> list = this.$deferredList;
                this.label = 1;
                obj = oz.a(list, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            CaptureRequest captureRequest2 = this.$request;
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "StillCaptureRequestControl: Waiting for deferred list from " + captureRequest2 + " done");
            }
            return obj;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super List<? extends Void>> e02Var) {
            return invoke2(y22Var, (e02<? super List<Void>>) e02Var);
        }
    }
}
