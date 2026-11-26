package androidx.camera.camera2.adapter;

import androidx.camera.camera2.adapter.CameraControlAdapter;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseCamera;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.ga1;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ue;
import defpackage.y22;
import defpackage.yp1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraControlAdapter implements CameraControlInternal {
    private final Camera2CameraControl camera2cameraControl;
    private final CameraProperties cameraProperties;
    private final EvCompControl evCompControl;
    private final FlashControl flashControl;
    private final FocusMeteringControl focusMeteringControl;
    private final LowLightBoostControl lowLightBoostControl;
    private final StillCaptureRequestControl stillCaptureRequestControl;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private final UseCaseManager useCaseManager;
    private final VideoUsageControl videoUsageControl;
    private final ZoomControl zoomControl;
    private final ZslControl zslControl;

    public CameraControlAdapter(CameraProperties cameraProperties, EvCompControl evCompControl, FlashControl flashControl, FocusMeteringControl focusMeteringControl, StillCaptureRequestControl stillCaptureRequestControl, TorchControl torchControl, LowLightBoostControl lowLightBoostControl, ZoomControl zoomControl, ZslControl zslControl, Camera2CameraControl camera2CameraControl, UseCaseManager useCaseManager, UseCaseThreads useCaseThreads, VideoUsageControl videoUsageControl) {
        cameraProperties.getClass();
        evCompControl.getClass();
        flashControl.getClass();
        focusMeteringControl.getClass();
        stillCaptureRequestControl.getClass();
        torchControl.getClass();
        lowLightBoostControl.getClass();
        zoomControl.getClass();
        zslControl.getClass();
        camera2CameraControl.getClass();
        useCaseManager.getClass();
        useCaseThreads.getClass();
        videoUsageControl.getClass();
        this.cameraProperties = cameraProperties;
        this.evCompControl = evCompControl;
        this.flashControl = flashControl;
        this.focusMeteringControl = focusMeteringControl;
        this.stillCaptureRequestControl = stillCaptureRequestControl;
        this.torchControl = torchControl;
        this.lowLightBoostControl = lowLightBoostControl;
        this.zoomControl = zoomControl;
        this.zslControl = zslControl;
        this.camera2cameraControl = camera2CameraControl;
        this.useCaseManager = useCaseManager;
        this.threads = useCaseThreads;
        this.videoUsageControl = videoUsageControl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void cancelFocusAndMetering$lambda$0$0(Result3A result3A) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ListenableFuture enableLowLightBoostAsync$lambda$2(CameraControlAdapter cameraControlAdapter, boolean z, Void r4) {
        return CoroutineAdaptersKt.asVoidListenableFuture(LowLightBoostControl.setLowLightBoostAsync$default(cameraControlAdapter.lowLightBoostControl, z, false, 2, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ListenableFuture enableLowLightBoostAsync$lambda$3(nl3 nl3Var, Object obj) {
        return (ListenableFuture) nl3Var.invoke(obj);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addInteropConfig(Config config) {
        config.getClass();
        this.camera2cameraControl.addCaptureRequestOptions(CaptureRequestOptions.Builder.Companion.from(config).build());
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addZslConfig(SessionConfig.Builder builder) {
        builder.getClass();
        this.zslControl.addZslConfig(builder);
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<Void> cancelFocusAndMetering() {
        yp1 yp1Var = new yp1();
        CoroutineAdaptersKt.propagateTo(this.focusMeteringControl.cancelFocusAndMeteringAsync(), yp1Var, new ue(1));
        ListenableFuture<Void> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture$default((mk2) yp1Var, (Object) null, 1, (Object) null));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearInteropConfig() {
        this.camera2cameraControl.clearCaptureRequestOptions();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearZslConfig() {
        this.zslControl.clearZslConfig();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void decrementVideoUsage() {
        this.videoUsageControl.decrementUsage();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [m01] */
    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<Void> enableLowLightBoostAsync(final boolean z) {
        ListenableFuture<Void> listenableFutureAsVoidListenableFuture;
        if (!CameraMetadata.Companion.getSupportsLowLightBoost(this.cameraProperties.getMetadata())) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unable to enable/disable low-light boost due to it is not supported.");
            }
            ListenableFuture<Void> listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(new IllegalStateException("Low-light boost is not supported!"));
            listenableFutureImmediateFailedFuture.getClass();
            return listenableFutureImmediateFailedFuture;
        }
        Integer value = this.torchControl.getTorchStateLiveData().getValue();
        if (value != null && value.intValue() == 1) {
            listenableFutureAsVoidListenableFuture = CoroutineAdaptersKt.asVoidListenableFuture(TorchControl.setTorchAsync$default(this.torchControl, false, false, false, 6, null));
        } else {
            j59 j59Var = j59.a;
            yp1 yp1VarA = ga1.a(j59Var);
            yp1VarA.T(j59Var);
            listenableFutureAsVoidListenableFuture = CoroutineAdaptersKt.asVoidListenableFuture(yp1VarA);
        }
        final ?? r1 = new nl3() { // from class: m01
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return CameraControlAdapter.enableLowLightBoostAsync$lambda$2(this.b, z, (Void) obj);
            }
        };
        ListenableFuture<Void> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(Futures.transformAsync(listenableFutureAsVoidListenableFuture, new AsyncFunction() { // from class: n01
            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return CameraControlAdapter.enableLowLightBoostAsync$lambda$3(r1, obj);
            }
        }, CameraXExecutors.directExecutor()));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<Void> enableTorch(boolean z) {
        Integer value;
        if (!CameraMetadata.Companion.getSupportsLowLightBoost(this.cameraProperties.getMetadata()) || ((value = this.lowLightBoostControl.getLowLightBoostStateLiveData().getValue()) != null && value.intValue() == -1)) {
            ListenableFuture<Void> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asVoidListenableFuture(TorchControl.setTorchAsync$default(this.torchControl, z, false, false, 6, null)));
            listenableFutureNonCancellationPropagating.getClass();
            return listenableFutureNonCancellationPropagating;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unable to enable/disable torch when low-light boost is on.");
        }
        ListenableFuture<Void> listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(new IllegalStateException("Torch can not be enabled/disable when low-light boost is on!"));
        listenableFutureImmediateFailedFuture.getClass();
        return listenableFutureImmediateFailedFuture;
    }

    public final Camera2CameraControl getCamera2cameraControl() {
        return this.camera2cameraControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public ListenableFuture<CameraCapturePipeline> getCameraCapturePipelineAsync(final int i, final int i2) {
        final UseCaseCamera camera = this.useCaseManager.getCamera();
        if (camera == null) {
            ListenableFuture<CameraCapturePipeline> listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
            listenableFutureImmediateFailedFuture.getClass();
            return listenableFutureImmediateFailedFuture;
        }
        final y22 sequentialScope = this.threads.getSequentialScope();
        ListenableFuture<CameraCapturePipeline> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.adapter.CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1

            /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1, reason: invalid class name */
            @bd2(c = "androidx.camera.camera2.adapter.CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1", f = "CameraControlAdapter.kt", l = {106, 104}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ UseCaseCamera $camera$inlined;
                final /* synthetic */ int $captureMode$inlined;
                final /* synthetic */ CallbackToFutureAdapter.Completer $completer;
                final /* synthetic */ int $flashType$inlined;
                int I$0;
                Object L$0;
                Object L$1;
                int label;
                final /* synthetic */ CameraControlAdapter this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(CallbackToFutureAdapter.Completer completer, e02 e02Var, UseCaseCamera useCaseCamera, int i, CameraControlAdapter cameraControlAdapter, int i2) {
                    super(2, e02Var);
                    this.$completer = completer;
                    this.$camera$inlined = useCaseCamera;
                    this.$captureMode$inlined = i;
                    this.this$0 = cameraControlAdapter;
                    this.$flashType$inlined = i2;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new AnonymousClass1(this.$completer, e02Var, this.$camera$inlined, this.$captureMode$inlined, this.this$0, this.$flashType$inlined);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    CallbackToFutureAdapter.Completer completer;
                    Object objAwaitFlashModeUpdate;
                    UseCaseCamera useCaseCamera;
                    int i;
                    CallbackToFutureAdapter.Completer completer2;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i2 = this.label;
                    if (i2 == 0) {
                        r57.b(obj);
                        completer = this.$completer;
                        UseCaseCamera useCaseCamera2 = this.$camera$inlined;
                        int i3 = this.$captureMode$inlined;
                        FlashControl flashControl = this.this$0.flashControl;
                        this.L$0 = completer;
                        this.L$1 = useCaseCamera2;
                        this.I$0 = i3;
                        this.label = 1;
                        objAwaitFlashModeUpdate = flashControl.awaitFlashModeUpdate(this);
                        if (objAwaitFlashModeUpdate != a32Var) {
                            useCaseCamera = useCaseCamera2;
                            i = i3;
                        }
                        return a32Var;
                    }
                    if (i2 == 1) {
                        i = this.I$0;
                        UseCaseCamera useCaseCamera3 = (UseCaseCamera) this.L$1;
                        CallbackToFutureAdapter.Completer completer3 = (CallbackToFutureAdapter.Completer) this.L$0;
                        r57.b(obj);
                        objAwaitFlashModeUpdate = obj;
                        completer = completer3;
                        useCaseCamera = useCaseCamera3;
                    } else {
                        if (i2 != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        CallbackToFutureAdapter.Completer completer4 = (CallbackToFutureAdapter.Completer) this.L$0;
                        r57.b(obj);
                        completer2 = completer4;
                    }
                    completer2.set(obj);
                    return j59.a;
                    int iIntValue = ((Number) objAwaitFlashModeUpdate).intValue();
                    int i4 = this.$flashType$inlined;
                    this.L$0 = completer;
                    this.L$1 = null;
                    this.label = 2;
                    Object cameraCapturePipeline = useCaseCamera.getCameraCapturePipeline(i, iIntValue, i4, this);
                    if (cameraCapturePipeline != a32Var) {
                        CallbackToFutureAdapter.Completer completer5 = completer;
                        obj = cameraCapturePipeline;
                        completer2 = completer5;
                        completer2.set(obj);
                        return j59.a;
                    }
                    return a32Var;
                }
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer<T> completer) {
                completer.getClass();
                return av0.c(sequentialScope, null, null, new AnonymousClass1(completer, null, camera, i, this, i2), 3);
            }
        });
        future.getClass();
        return future;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public int getFlashMode() {
        return this.flashControl.getFlashMode();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public Config getInteropConfig() {
        return this.camera2cameraControl.getCaptureRequestOptions();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public SessionConfig getSessionConfig() {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled(Log.TAG)) {
            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "TODO: getSessionConfig is not yet supported");
        }
        SessionConfig sessionConfigDefaultEmptySessionConfig = SessionConfig.defaultEmptySessionConfig();
        sessionConfigDefaultEmptySessionConfig.getClass();
        return sessionConfigDefaultEmptySessionConfig;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void incrementVideoUsage() {
        this.videoUsageControl.incrementUsage();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public boolean isInVideoUsage() {
        return this.videoUsageControl.isInVideoUsage();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public boolean isZslDisabledByByUserCaseConfig() {
        return this.zslControl.isZslDisabledByUserCaseConfig();
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<Integer> setExposureCompensationIndex(int i) {
        ListenableFuture<Integer> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture$default(EvCompControl.updateAsync$default(this.evCompControl, i, false, 2, null), (Object) null, 1, (Object) null));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setFlashMode(int i) {
        FlashControl.setFlashAsync$default(this.flashControl, i, false, 2, null);
        this.zslControl.setZslDisabledByFlashMode(i == 1 || i == 0);
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<Void> setLinearZoom(float f) {
        return this.zoomControl.setLinearZoom(f);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        this.flashControl.setScreenFlash(screenFlash);
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<Void> setTorchStrengthLevel(int i) {
        ListenableFuture<Void> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asVoidListenableFuture(this.torchControl.setTorchStrengthLevelAsync(i)));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<Void> setZoomRatio(float f) {
        return this.zoomControl.setZoomRatio(f);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setZslDisabledByUserCaseConfig(boolean z) {
        this.zslControl.setZslDisabledByUserCaseConfig(z);
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture<FocusMeteringResult> startFocusAndMetering(FocusMeteringAction focusMeteringAction) {
        focusMeteringAction.getClass();
        ListenableFuture<FocusMeteringResult> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(FocusMeteringControl.startFocusAndMetering$default(this.focusMeteringControl, focusMeteringAction, 0L, 2, null));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public ListenableFuture<List<Void>> submitStillCaptureRequests(List<CaptureConfig> list, int i, int i2) {
        list.getClass();
        return this.stillCaptureRequestControl.issueCaptureRequests(list, i, i2);
    }
}
