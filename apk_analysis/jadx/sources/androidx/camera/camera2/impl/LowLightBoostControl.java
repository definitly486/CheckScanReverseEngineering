package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.os.Build;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.Threads;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.ga1;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yp1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class LowLightBoostControl implements UseCaseCameraControl {
    private final MutableLiveData<Integer> _lowLightBoostState;
    private UseCaseCameraRequestControl _requestControl;
    private xp1<j59> _updateSignal;
    private final CameraMetadata cameraMetadata;
    private mk2<Boolean> checkFrameRateJob;
    private final ComboRequestListener comboRequestListener;
    private boolean isLowLightBoostOn;
    private final boolean isLowLightBoostSupported;
    private final AtomicInteger lowLightBoostStateAtomic;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(LowLightBoostControl lowLightBoostControl);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.LowLightBoostControl$onSessionConfigChanged$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.LowLightBoostControl$onSessionConfigChanged$1", f = "LowLightBoostControl.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C03961 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
        final /* synthetic */ List<UseCase> $useCases;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03961(List<? extends UseCase> list, e02<? super C03961> e02Var) {
            super(2, e02Var);
            this.$useCases = list;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return LowLightBoostControl.this.new C03961(this.$useCases, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
            return ((C03961) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.valueOf(((Number) LowLightBoostControl.this.getSessionConfig(this.$useCases).getExpectedFrameRateRange().getUpper()).intValue() > 30);
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    public LowLightBoostControl(CameraMetadata cameraMetadata, State3AControl state3AControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        state3AControl.getClass();
        useCaseThreads.getClass();
        comboRequestListener.getClass();
        this.cameraMetadata = cameraMetadata;
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.comboRequestListener = comboRequestListener;
        boolean z = false;
        if (cameraMetadata != null && CameraMetadata.Companion.getSupportsLowLightBoost(cameraMetadata)) {
            z = true;
        }
        this.isLowLightBoostSupported = z;
        this._lowLightBoostState = new MutableLiveData<>(-1);
        this.lowLightBoostStateAtomic = new AtomicInteger(-1);
        if (z) {
            comboRequestListener.addListener(new Request.Listener() { // from class: androidx.camera.camera2.impl.LowLightBoostControl.1
                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
                public void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                    requestMetadata.getClass();
                    frameInfo.getClass();
                    if (Build.VERSION.SDK_INT < 35 || LowLightBoostControl.this._requestControl == null || !LowLightBoostControl.this.isLowLightBoostOn) {
                        return;
                    }
                    FrameMetadata metadata = frameInfo.getMetadata();
                    CaptureResult.Key key = CaptureResult.CONTROL_LOW_LIGHT_BOOST_STATE;
                    key.getClass();
                    Integer num = (Integer) metadata.get(key);
                    if (num != null) {
                        LowLightBoostControl lowLightBoostControl = LowLightBoostControl.this;
                        lowLightBoostControl.setLiveDataValue(lowLightBoostControl._lowLightBoostState, num.intValue() != 1 ? 0 : 1);
                    }
                }
            }, useCaseThreads.getSequentialExecutor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xp1<j59> createFailureResult(xp1<j59> xp1Var, Exception exc) {
        xp1Var.e(exc);
        return xp1Var;
    }

    public static /* synthetic */ void getCheckFrameRateJob$camera_camera2$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionConfig getSessionConfig(Collection<? extends UseCase> collection) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(((UseCase) it.next()).getSessionConfig());
        }
        SessionConfig sessionConfigBuild = validatingBuilder.build();
        sessionConfigBuild.getClass();
        return sessionConfigBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setLiveDataValue(MutableLiveData<Integer> mutableLiveData, int i) {
        if (this.lowLightBoostStateAtomic.getAndSet(i) != i) {
            if (Threads.isMainThread()) {
                mutableLiveData.setValue(Integer.valueOf(i));
            } else {
                mutableLiveData.postValue(Integer.valueOf(i));
            }
        }
    }

    public static /* synthetic */ mk2 setLowLightBoostAsync$default(LowLightBoostControl lowLightBoostControl, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        return lowLightBoostControl.setLowLightBoostAsync(z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopRunningTaskInternal() {
        xp1<j59> xp1Var = this._updateSignal;
        if (xp1Var != null) {
            createFailureResult(xp1Var, new CameraControl.OperationCanceledException("There is a new enableLowLightBoost being set"));
        }
        this._updateSignal = null;
    }

    public final mk2<Boolean> getCheckFrameRateJob$camera_camera2() {
        return this.checkFrameRateJob;
    }

    public final LiveData<Integer> getLowLightBoostStateLiveData() {
        return this._lowLightBoostState;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    public final void onSessionConfigChanged(List<? extends UseCase> list) {
        list.getClass();
        if (this.isLowLightBoostSupported) {
            if (list.isEmpty()) {
                this.checkFrameRateJob = ga1.a(Boolean.FALSE);
            } else {
                this.checkFrameRateJob = av0.a(this.threads.getSequentialScope(), null, null, new C03961(list, null), 3);
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        stopRunningTaskInternal();
        setLowLightBoostAsync$default(this, false, false, 2, null);
    }

    public final void setCheckFrameRateJob$camera_camera2(mk2<Boolean> mk2Var) {
        this.checkFrameRateJob = mk2Var;
    }

    public final mk2<j59> setLowLightBoostAsync(boolean z, boolean z2) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "LowLightBoostControl#setLowLightBoostAsync: lowLightBoost = " + z);
        }
        yp1 yp1Var = new yp1();
        if (!this.isLowLightBoostSupported) {
            return createFailureResult(yp1Var, new IllegalStateException("Low Light Boost is not supported!"));
        }
        av0.c(this.threads.getSequentialScope(), null, null, new LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1(null, this, yp1Var, z, z2), 3);
        return yp1Var;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        if (this.isLowLightBoostOn) {
            if (useCaseCameraRequestControl != null) {
                setLowLightBoostAsync(true, false);
            } else {
                setLiveDataValue(this._lowLightBoostState, 0);
            }
        }
    }
}
