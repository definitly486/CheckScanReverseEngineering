package androidx.camera.camera2.impl;

import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.workaround.MeteringRegionCorrection;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.Logger;
import androidx.camera.core.MeteringPoint;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.mb4;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yk2;
import defpackage.yp1;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class FocusMeteringControl implements UseCaseCameraControl, UseCaseManager.RunningUseCasesChangeListener {
    public static final long AUTO_FOCUS_TIMEOUT_DURATION = 5000;
    public static final Companion Companion = new Companion(null);
    public static final int METERING_WEIGHT_DEFAULT = 1000;
    private UseCaseCameraRequestControl _requestControl;
    private mb4 autoCancelJob;
    private final List<AeMode> availableAeModes;
    private final List<AfMode> availableAfModes;
    private final CameraProperties cameraProperties;
    private xp1<Result3A> cancelSignal;
    private mb4 focusTimeoutJob;
    private final Integer maxAeRegionCount;
    private final Integer maxAfRegionCount;
    private final Integer maxAwbRegionCount;
    private final MeteringRegionCorrection meteringRegionCorrection;
    private Rational previewAspectRatio;
    private final State3AControl state3AControl;
    private final boolean supportsAutoFocusTrigger;
    private final UseCaseThreads threads;
    private xp1<FocusMeteringResult> updateSignal;
    private final ZoomCompat zoomCompat;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(FocusMeteringControl focusMeteringControl);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FocusMeteringControl$triggerAutoCancel$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.FocusMeteringControl$triggerAutoCancel$1", f = "FocusMeteringControl.kt", l = {266}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ long $delayMillis;
        final /* synthetic */ UseCaseCameraRequestControl $requestControl;
        final /* synthetic */ xp1<FocusMeteringResult> $resultToCancel;
        int label;
        final /* synthetic */ FocusMeteringControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(long j, FocusMeteringControl focusMeteringControl, UseCaseCameraRequestControl useCaseCameraRequestControl, xp1<FocusMeteringResult> xp1Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$delayMillis = j;
            this.this$0 = focusMeteringControl;
            this.$requestControl = useCaseCameraRequestControl;
            this.$resultToCancel = xp1Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$delayMillis, this.this$0, this.$requestControl, this.$resultToCancel, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long j = this.$delayMillis;
                this.label = 1;
                if (yk2.b(j, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            long j2 = this.$delayMillis;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "triggerAutoCancel: auto-canceling after " + j2 + " ms");
            }
            this.this$0.cancelFocusAndMeteringNowAsync(this.$requestControl, this.$resultToCancel);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FocusMeteringControl$triggerFocusTimeout$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.FocusMeteringControl$triggerFocusTimeout$1", f = "FocusMeteringControl.kt", l = {280}, m = "invokeSuspend", v = 1)
    public static final class C03951 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ long $delayMillis;
        final /* synthetic */ xp1<FocusMeteringResult> $resultToComplete;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03951(long j, xp1<FocusMeteringResult> xp1Var, e02<? super C03951> e02Var) {
            super(2, e02Var);
            this.$delayMillis = j;
            this.$resultToComplete = xp1Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C03951(this.$delayMillis, this.$resultToComplete, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C03951) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long j = this.$delayMillis;
                this.label = 1;
                if (yk2.b(j, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            long j2 = this.$delayMillis;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "triggerFocusTimeout: completing with focus result unsuccessful after " + j2 + " ms");
            }
            xp1<FocusMeteringResult> xp1Var = this.$resultToComplete;
            FocusMeteringResult focusMeteringResultCreate = FocusMeteringResult.create(false);
            focusMeteringResultCreate.getClass();
            xp1Var.f(focusMeteringResultCreate);
            return j59.a;
        }
    }

    public FocusMeteringControl(CameraProperties cameraProperties, MeteringRegionCorrection meteringRegionCorrection, State3AControl state3AControl, UseCaseThreads useCaseThreads, ZoomCompat zoomCompat) {
        ArrayList arrayList;
        cameraProperties.getClass();
        meteringRegionCorrection.getClass();
        state3AControl.getClass();
        useCaseThreads.getClass();
        zoomCompat.getClass();
        this.cameraProperties = cameraProperties;
        this.meteringRegionCorrection = meteringRegionCorrection;
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.zoomCompat = zoomCompat;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_MAX_REGIONS_AF;
        key.getClass();
        this.maxAfRegionCount = (Integer) metadata.getOrDefault((CameraCharacteristics.Key<int>) key, 0);
        CameraMetadata metadata2 = cameraProperties.getMetadata();
        CameraCharacteristics.Key key2 = CameraCharacteristics.CONTROL_MAX_REGIONS_AE;
        key2.getClass();
        this.maxAeRegionCount = (Integer) metadata2.getOrDefault((CameraCharacteristics.Key<int>) key2, 0);
        CameraMetadata metadata3 = cameraProperties.getMetadata();
        CameraCharacteristics.Key key3 = CameraCharacteristics.CONTROL_MAX_REGIONS_AWB;
        key3.getClass();
        this.maxAwbRegionCount = (Integer) metadata3.getOrDefault((CameraCharacteristics.Key<int>) key3, 0);
        this.supportsAutoFocusTrigger = CameraMetadata.Companion.getSupportsAutoFocusTrigger(cameraProperties.getMetadata());
        CameraMetadata metadata4 = cameraProperties.getMetadata();
        CameraCharacteristics.Key key4 = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
        key4.getClass();
        int[] iArr = (int[]) metadata4.get(key4);
        ArrayList arrayList2 = null;
        if (iArr != null) {
            arrayList = new ArrayList(iArr.length);
            for (int i : iArr) {
                arrayList.add(AeMode.Companion.m114fromIntOrNullkQd0u18(i));
            }
        } else {
            arrayList = null;
        }
        this.availableAeModes = arrayList;
        CameraMetadata metadata5 = this.cameraProperties.getMetadata();
        CameraCharacteristics.Key key5 = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
        key5.getClass();
        int[] iArr2 = (int[]) metadata5.get(key5);
        if (iArr2 != null) {
            arrayList2 = new ArrayList(iArr2.length);
            for (int i2 : iArr2) {
                arrayList2.add(AfMode.Companion.m132fromIntOrNullMKXwA8g(i2));
            }
        }
        this.availableAfModes = arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final mk2<Result3A> cancelFocusAndMeteringNowAsync(UseCaseCameraRequestControl useCaseCameraRequestControl, xp1<FocusMeteringResult> xp1Var) {
        if (xp1Var != null) {
            setCancelException(xp1Var, "Cancelled by cancelFocusAndMetering()");
        }
        this.state3AControl.setPreferredFocusModeAsync(null);
        return useCaseCameraRequestControl.cancelFocusAndMeteringAsync();
    }

    private final Rect getCropSensorRegion() {
        return this.zoomCompat.getCropSensorRegion();
    }

    private final Rational getDefaultAspectRatio() {
        Rational rational = this.previewAspectRatio;
        return rational == null ? new Rational(getCropSensorRegion().width(), getCropSensorRegion().height()) : rational;
    }

    /* JADX INFO: renamed from: getSupportedAeMode-rTgdhRc, reason: not valid java name */
    private final int m69getSupportedAeModerTgdhRc(int i) {
        List<AeMode> list = this.availableAeModes;
        if (list == null) {
            return AeMode.Companion.m115getOFFbOjpiJc();
        }
        if (list.contains(AeMode.m103boximpl(i))) {
            return i;
        }
        List<AeMode> list2 = this.availableAeModes;
        AeMode.Companion companion = AeMode.Companion;
        return list2.contains(AeMode.m103boximpl(companion.m116getONbOjpiJc())) ? companion.m116getONbOjpiJc() : companion.m115getOFFbOjpiJc();
    }

    /* JADX INFO: renamed from: isAfModeSupported-wvCmZyc, reason: not valid java name */
    private final boolean m70isAfModeSupportedwvCmZyc(int i) {
        List<AfMode> list = this.availableAfModes;
        if (list == null) {
            return false;
        }
        return list.contains(AfMode.m122boximpl(i));
    }

    private final void propagateToFocusMeteringResultDeferred(final mk2<Result3A> mk2Var, final xp1<FocusMeteringResult> xp1Var, final boolean z) {
        mk2Var.g(new nl3() { // from class: bi3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return FocusMeteringControl.propagateToFocusMeteringResultDeferred$lambda$0(xp1Var, mk2Var, this, z, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 propagateToFocusMeteringResultDeferred$lambda$0(xp1 xp1Var, mk2 mk2Var, FocusMeteringControl focusMeteringControl, boolean z, Throwable th) {
        if (th != null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "propagateToFocusMeteringResultDeferred: completed exceptionally!", th);
            }
            xp1Var.e(th);
        } else {
            Result3A result3A = (Result3A) mk2Var.m();
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "propagateToFocusMeteringResultDeferred: result3A = " + result3A);
            }
            int iM657getStatusJvTi9ms = result3A.m657getStatusJvTi9ms();
            Result3A.Status.Companion companion = Result3A.Status.Companion;
            if (Result3A.Status.m661equalsimpl0(iM657getStatusJvTi9ms, companion.m668getSUBMIT_FAILEDJvTi9ms())) {
                xp1Var.e(new CameraControl.OperationCanceledException("Camera is not active."));
            } else if (Result3A.Status.m661equalsimpl0(result3A.m657getStatusJvTi9ms(), companion.m669getTIME_LIMIT_REACHEDJvTi9ms())) {
                FocusMeteringResult focusMeteringResultCreate = FocusMeteringResult.create(false);
                focusMeteringResultCreate.getClass();
                xp1Var.f(focusMeteringResultCreate);
            } else {
                xp1Var.f(focusMeteringControl.toFocusMeteringResult(result3A, z));
            }
        }
        return j59.a;
    }

    private final <T> void setCancelException(xp1<T> xp1Var, String str) {
        xp1Var.e(new CameraControl.OperationCanceledException(str));
    }

    public static /* synthetic */ ListenableFuture startFocusAndMetering$default(FocusMeteringControl focusMeteringControl, FocusMeteringAction focusMeteringAction, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 5000;
        }
        return focusMeteringControl.startFocusAndMetering(focusMeteringAction, j);
    }

    private final FocusMeteringResult toFocusMeteringResult(Result3A result3A, boolean z) {
        Integer num;
        boolean z2 = false;
        if (!Result3A.Status.m661equalsimpl0(result3A.m657getStatusJvTi9ms(), Result3A.Status.Companion.m666getOKJvTi9ms())) {
            FocusMeteringResult focusMeteringResultCreate = FocusMeteringResult.create(false);
            focusMeteringResultCreate.getClass();
            return focusMeteringResultCreate;
        }
        FrameMetadata frameMetadata = result3A.getFrameMetadata();
        if (frameMetadata != null) {
            CaptureResult.Key key = CaptureResult.CONTROL_AF_STATE;
            key.getClass();
            num = (Integer) frameMetadata.get(key);
        } else {
            num = null;
        }
        if (z && (!m70isAfModeSupportedwvCmZyc(AfMode.Companion.m133getAUTOvHZNRtE()) || (result3A.getFrameMetadata() != null && (num == null || num.intValue() == 4)))) {
            z2 = true;
        }
        FocusMeteringResult focusMeteringResultCreate2 = FocusMeteringResult.create(z2);
        focusMeteringResultCreate2.getClass();
        return focusMeteringResultCreate2;
    }

    private final void triggerAutoCancel(long j, xp1<FocusMeteringResult> xp1Var, UseCaseCameraRequestControl useCaseCameraRequestControl) {
        mb4 mb4Var = this.autoCancelJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.autoCancelJob = av0.c(this.threads.getSequentialScope(), null, null, new AnonymousClass1(j, this, useCaseCameraRequestControl, xp1Var, null), 3);
    }

    private final void triggerFocusTimeout(long j, xp1<FocusMeteringResult> xp1Var) {
        mb4 mb4Var = this.focusTimeoutJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.focusTimeoutJob = av0.c(this.threads.getSequentialScope(), null, null, new C03951(j, xp1Var, null), 3);
    }

    public final mk2<Result3A> cancelFocusAndMeteringAsync() {
        yp1 yp1Var = new yp1();
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl == null) {
            yp1Var.e(new CameraControl.OperationCanceledException("Camera is not active."));
            return yp1Var;
        }
        mb4 mb4Var = this.focusTimeoutJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        mb4 mb4Var2 = this.autoCancelJob;
        if (mb4Var2 != null) {
            mb4Var2.cancel(null);
        }
        xp1<Result3A> xp1Var = this.cancelSignal;
        if (xp1Var != null) {
            setCancelException(xp1Var, "Cancelled by another cancelFocusAndMetering()");
        }
        this.cancelSignal = yp1Var;
        CoroutineAdaptersKt.propagateTo(cancelFocusAndMeteringNowAsync(requestControl, this.updateSignal), yp1Var);
        return yp1Var;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    public final boolean isFocusMeteringSupported(FocusMeteringAction focusMeteringAction) {
        focusMeteringAction.getClass();
        Companion companion = Companion;
        List<MeteringPoint> meteringPointsAe = focusMeteringAction.getMeteringPointsAe();
        meteringPointsAe.getClass();
        Integer num = this.maxAeRegionCount;
        num.getClass();
        List<MeteringRectangle> listMeteringRegionsFromMeteringPoints = companion.meteringRegionsFromMeteringPoints(meteringPointsAe, num.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 2, this.meteringRegionCorrection);
        List<MeteringPoint> meteringPointsAf = focusMeteringAction.getMeteringPointsAf();
        meteringPointsAf.getClass();
        Integer num2 = this.maxAfRegionCount;
        num2.getClass();
        List<MeteringRectangle> listMeteringRegionsFromMeteringPoints2 = companion.meteringRegionsFromMeteringPoints(meteringPointsAf, num2.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 1, this.meteringRegionCorrection);
        List<MeteringPoint> meteringPointsAwb = focusMeteringAction.getMeteringPointsAwb();
        meteringPointsAwb.getClass();
        Integer num3 = this.maxAwbRegionCount;
        num3.getClass();
        return (listMeteringRegionsFromMeteringPoints.isEmpty() && listMeteringRegionsFromMeteringPoints2.isEmpty() && companion.meteringRegionsFromMeteringPoints(meteringPointsAwb, num3.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 4, this.meteringRegionCorrection).isEmpty()) ? false : true;
    }

    @Override // androidx.camera.camera2.impl.UseCaseManager.RunningUseCasesChangeListener
    public void onRunningUseCasesChanged(Set<? extends UseCase> set) {
        Size attachedSurfaceResolution;
        set.getClass();
        this.previewAspectRatio = null;
        for (UseCase useCase : set) {
            if ((useCase instanceof Preview) && (attachedSurfaceResolution = ((Preview) useCase).getAttachedSurfaceResolution()) != null) {
                this.previewAspectRatio = new Rational(attachedSurfaceResolution.getWidth(), attachedSurfaceResolution.getHeight());
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this.previewAspectRatio = null;
        cancelFocusAndMeteringAsync();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ListenableFuture<FocusMeteringResult> startFocusAndMetering(FocusMeteringAction focusMeteringAction, long j) {
        int i;
        List<MeteringRectangle> list;
        List<MeteringRectangle> list2;
        List<MeteringRectangle> list3;
        mk2<Result3A> mk2VarUpdate3aRegions;
        focusMeteringAction.getClass();
        xp1<FocusMeteringResult> yp1Var = new yp1<>();
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl != null) {
            mb4 mb4Var = this.focusTimeoutJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            mb4 mb4Var2 = this.autoCancelJob;
            if (mb4Var2 != null) {
                mb4Var2.cancel(null);
            }
            xp1<Result3A> xp1Var = this.cancelSignal;
            if (xp1Var != null) {
                setCancelException(xp1Var, "Cancelled by another startFocusAndMetering()");
            }
            xp1<FocusMeteringResult> xp1Var2 = this.updateSignal;
            if (xp1Var2 != null) {
                setCancelException(xp1Var2, "Cancelled by another startFocusAndMetering()");
            }
            this.updateSignal = yp1Var;
            Companion companion = Companion;
            List<MeteringPoint> meteringPointsAe = focusMeteringAction.getMeteringPointsAe();
            meteringPointsAe.getClass();
            Integer num = this.maxAeRegionCount;
            num.getClass();
            List<MeteringRectangle> listMeteringRegionsFromMeteringPoints = companion.meteringRegionsFromMeteringPoints(meteringPointsAe, num.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 2, this.meteringRegionCorrection);
            List<MeteringPoint> meteringPointsAf = focusMeteringAction.getMeteringPointsAf();
            meteringPointsAf.getClass();
            Integer num2 = this.maxAfRegionCount;
            num2.getClass();
            List<MeteringRectangle> listMeteringRegionsFromMeteringPoints2 = companion.meteringRegionsFromMeteringPoints(meteringPointsAf, num2.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 1, this.meteringRegionCorrection);
            List<MeteringPoint> meteringPointsAwb = focusMeteringAction.getMeteringPointsAwb();
            meteringPointsAwb.getClass();
            Integer num3 = this.maxAwbRegionCount;
            num3.getClass();
            List<MeteringRectangle> listMeteringRegionsFromMeteringPoints3 = companion.meteringRegionsFromMeteringPoints(meteringPointsAwb, num3.intValue(), getCropSensorRegion(), getDefaultAspectRatio(), 4, this.meteringRegionCorrection);
            if (listMeteringRegionsFromMeteringPoints.isEmpty() && listMeteringRegionsFromMeteringPoints2.isEmpty() && listMeteringRegionsFromMeteringPoints3.isEmpty()) {
                yp1Var.e(new IllegalArgumentException("None of the specified AF/AE/AWB MeteringPoints is supported on this camera."));
                return CoroutineAdaptersKt.asListenableFuture$default((mk2) yp1Var, (Object) null, 1, (Object) null);
            }
            List<MeteringRectangle> listH0 = listMeteringRegionsFromMeteringPoints2;
            if (!listH0.isEmpty()) {
                this.state3AControl.setPreferredFocusModeAsync(1);
            }
            if (this.maxAeRegionCount.intValue() > 0) {
                List<MeteringRectangle> listH1 = listMeteringRegionsFromMeteringPoints;
                if (listH1.isEmpty()) {
                    listH1 = yr.h0(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                list = listH1;
            } else {
                list = null;
            }
            if (this.maxAfRegionCount.intValue() > 0) {
                if (listH0.isEmpty()) {
                    listH0 = yr.h0(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                list2 = listH0;
            } else {
                list2 = null;
            }
            if (this.maxAwbRegionCount.intValue() > 0) {
                List<MeteringRectangle> listH2 = listMeteringRegionsFromMeteringPoints3;
                if (listH2.isEmpty()) {
                    listH2 = yr.h0(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                list3 = listH2;
            } else {
                list3 = null;
            }
            if (listMeteringRegionsFromMeteringPoints2.isEmpty() || !this.supportsAutoFocusTrigger) {
                i = 1;
                List<MeteringRectangle> list4 = list;
                List<MeteringRectangle> list5 = list3;
                List<MeteringRectangle> list6 = list2;
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "startFocusAndMetering: updating 3A regions only");
                }
                mk2VarUpdate3aRegions = requestControl.update3aRegions(list4, list6, list5);
            } else {
                long autoCancelDurationInMillis = (!focusMeteringAction.isAutoCancelEnabled() || focusMeteringAction.getAutoCancelDurationInMillis() >= j) ? j : focusMeteringAction.getAutoCancelDurationInMillis();
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "startFocusAndMetering: updating 3A regions & triggering AF");
                }
                i = 1;
                mk2VarUpdate3aRegions = UseCaseCameraRequestControl.m92startFocusAndMeteringAsyncNxRnBj4$default(requestControl, list, list2, list3, null, this.maxAfRegionCount.intValue() > 0 ? Lock3ABehavior.m490boximpl(Lock3ABehavior.Companion.m499getIMMEDIATEhRqSH3k()) : null, null, AeMode.m103boximpl(m69getSupportedAeModerTgdhRc(AeMode.Companion.m116getONbOjpiJc())), TimeUnit.NANOSECONDS.convert(autoCancelDurationInMillis, TimeUnit.MILLISECONDS), 40, null);
            }
            propagateToFocusMeteringResultDeferred(mk2VarUpdate3aRegions, yp1Var, (listMeteringRegionsFromMeteringPoints2.isEmpty() ? 1 : 0) ^ i);
            triggerFocusTimeout(j, yp1Var);
            if (focusMeteringAction.isAutoCancelEnabled()) {
                triggerAutoCancel(focusMeteringAction.getAutoCancelDurationInMillis(), yp1Var, requestControl);
            }
        } else {
            i = 1;
            yp1Var.e(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return CoroutineAdaptersKt.asListenableFuture$default((mk2) yp1Var, (Object) null, i, (Object) null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final PointF getFovAdjustedPoint(MeteringPoint meteringPoint, Rational rational, Rational rational2, int i, MeteringRegionCorrection meteringRegionCorrection) {
            Rational surfaceAspectRatio = meteringPoint.getSurfaceAspectRatio();
            if (surfaceAspectRatio != null) {
                rational2 = surfaceAspectRatio;
            }
            PointF correctedPoint = meteringRegionCorrection.getCorrectedPoint(meteringPoint, i);
            if (aa4.e(rational2, rational)) {
                return new PointF(correctedPoint.x, correctedPoint.y);
            }
            if (rational2.compareTo(rational) > 0) {
                PointF pointF = new PointF(correctedPoint.x, correctedPoint.y);
                float fDoubleValue = (float) (rational2.doubleValue() / rational.doubleValue());
                pointF.y = (1.0f / fDoubleValue) * (((float) ((((double) fDoubleValue) - 1.0d) / 2.0d)) + pointF.y);
                return pointF;
            }
            PointF pointF2 = new PointF(correctedPoint.x, correctedPoint.y);
            float fDoubleValue2 = (float) (rational.doubleValue() / rational2.doubleValue());
            pointF2.x = (1.0f / fDoubleValue2) * (((float) ((((double) fDoubleValue2) - 1.0d) / 2.0d)) + pointF2.x);
            return pointF2;
        }

        private final MeteringRectangle getMeteringRect(PointF pointF, float f, Rect rect) {
            int iWidth = (int) ((pointF.x * rect.width()) + rect.left);
            int iHeight = (int) ((pointF.y * rect.height()) + rect.top);
            int iWidth2 = ((int) (rect.width() * f)) / 2;
            int iHeight2 = ((int) (f * rect.height())) / 2;
            Rect rect2 = new Rect(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
            rect2.left = kx6.f(rect2.left, rect.left, rect.right);
            rect2.right = kx6.f(rect2.right, rect.left, rect.right);
            rect2.top = kx6.f(rect2.top, rect.top, rect.bottom);
            rect2.bottom = kx6.f(rect2.bottom, rect.top, rect.bottom);
            return new MeteringRectangle(rect2, 1000);
        }

        private final boolean isValid(MeteringPoint meteringPoint) {
            return meteringPoint.getX() >= 0.0f && meteringPoint.getX() <= 1.0f && meteringPoint.getY() >= 0.0f && meteringPoint.getY() <= 1.0f;
        }

        public final List<MeteringRectangle> meteringRegionsFromMeteringPoints(List<? extends MeteringPoint> list, int i, Rect rect, Rational rational, int i2, MeteringRegionCorrection meteringRegionCorrection) {
            list.getClass();
            rect.getClass();
            rational.getClass();
            meteringRegionCorrection.getClass();
            if (list.isEmpty() || i == 0) {
                return kx2.b;
            }
            ArrayList arrayList = new ArrayList();
            Rational rational2 = new Rational(rect.width(), rect.height());
            for (MeteringPoint meteringPoint : list) {
                if (arrayList.size() >= i) {
                    break;
                }
                if (this.isValid(meteringPoint)) {
                    Companion companion = this;
                    Rational rational3 = rational;
                    arrayList.add(companion.getMeteringRect(companion.getFovAdjustedPoint(meteringPoint, rational2, rational3, i2, meteringRegionCorrection), meteringPoint.getSize(), rect));
                    this = companion;
                    rational = rational3;
                }
            }
            return arrayList;
        }

        private Companion() {
        }
    }
}
