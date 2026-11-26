package androidx.camera.camera2.impl;

import android.os.Build;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.Api35Compat;
import androidx.camera.camera2.compat.workaround.FlashAvailabilityCheckerKt;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.Threads;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import defpackage.ga1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mk2;
import defpackage.qz0;
import defpackage.sl2;
import defpackage.vy2;
import defpackage.xp1;
import defpackage.yp1;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class TorchControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final MutableLiveData<Integer> _torchState;
    private final MutableLiveData<Integer> _torchStrength;
    private xp1<j59> _updateTorchStateSignal;
    private xp1<j59> _updateTorchStrengthSignal;
    private final int defaultTorchStrength;
    private final boolean hasFlashUnit;
    private final boolean isTorchStrengthSupported;
    private final int maxTorchStrength;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;
    private TorchMode torchMode;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(TorchControl torchControl);
    }

    public TorchControl(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads) {
        cameraProperties.getClass();
        state3AControl.getClass();
        useCaseThreads.getClass();
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.hasFlashUnit = FlashAvailabilityCheckerKt.isFlashAvailable$default(cameraProperties, false, 1, null);
        this._torchState = new MutableLiveData<>(0);
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        this.isTorchStrengthSupported = companion.getSupportsTorchStrength(cameraProperties.getMetadata());
        int defaultTorchStrengthLevel = companion.getDefaultTorchStrengthLevel(cameraProperties.getMetadata());
        this.defaultTorchStrength = defaultTorchStrengthLevel;
        this.maxTorchStrength = companion.getMaxTorchStrengthLevel(cameraProperties.getMetadata());
        this._torchStrength = new MutableLiveData<>(Integer.valueOf(defaultTorchStrengthLevel));
    }

    private final xp1<j59> createFailureResult(xp1<j59> xp1Var, Exception exc) {
        xp1Var.e(exc);
        return xp1Var;
    }

    /* JADX INFO: renamed from: getTorchMode-MnUA4hI$camera_camera2$annotations, reason: not valid java name */
    public static /* synthetic */ void m71getTorchModeMnUA4hI$camera_camera2$annotations() {
    }

    /* JADX INFO: renamed from: isFlashUnitOn-RaJ5uN0, reason: not valid java name */
    private final boolean m72isFlashUnitOnRaJ5uN0(int i) {
        return !TorchMode.m81equalsimpl0(i, TorchMode.Companion.m85getOFFIRs_R8());
    }

    private final void setLiveDataValue(MutableLiveData<Integer> mutableLiveData, int i) {
        if (Threads.isMainThread()) {
            mutableLiveData.setValue(Integer.valueOf(i));
        } else {
            mutableLiveData.postValue(Integer.valueOf(i));
        }
    }

    public static /* synthetic */ mk2 setTorchAsync$default(TorchControl torchControl, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        return torchControl.setTorchAsync(z, z2, z3);
    }

    /* JADX INFO: renamed from: setTorchAsync-Oup_wC0$camera_camera2$default, reason: not valid java name */
    public static /* synthetic */ mk2 m73setTorchAsyncOup_wC0$camera_camera2$default(TorchControl torchControl, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return torchControl.m76setTorchAsyncOup_wC0$camera_camera2(i, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setTorchAsync_Oup_wC0$lambda$1$3(Result3A result3A) {
        result3A.getClass();
        return j59.a;
    }

    private final void stopRunningTaskInternal() {
        stopTorchStateTask();
        stopTorchStrengthTask();
    }

    private final void stopTorchStateTask() {
        xp1<j59> xp1Var = this._updateTorchStateSignal;
        if (xp1Var != null) {
            createFailureResult(xp1Var, new CameraControl.OperationCanceledException("There is a new enableTorch being set"));
        }
        this._updateTorchStateSignal = null;
    }

    private final void stopTorchStrengthTask() {
        xp1<j59> xp1Var = this._updateTorchStrengthSignal;
        if (xp1Var != null) {
            createFailureResult(xp1Var, new CameraControl.OperationCanceledException("There is a new torch strength being set"));
        }
        this._updateTorchStrengthSignal = null;
    }

    /* JADX INFO: renamed from: updateTorchState-RaJ5uN0, reason: not valid java name */
    private final void m74updateTorchStateRaJ5uN0(int i) {
        this.torchMode = TorchMode.m78boximpl(i);
        setLiveDataValue(this._torchState, TorchMode.m81equalsimpl0(i, TorchMode.Companion.m86getONIRs_R8()) ? 1 : 0);
    }

    private final mk2<j59> updateTorchStrengthLevelAsync(int i) {
        mk2 parametersAsync$default;
        yp1 yp1Var = new yp1();
        if (Build.VERSION.SDK_INT < 35 || !this.isTorchStrengthSupported) {
            createFailureResult(yp1Var, new UnsupportedOperationException("Configuring torch strength is not supported on the device."));
            return yp1Var;
        }
        if (this._updateTorchStrengthSignal != null) {
            stopTorchStrengthTask();
        }
        this._updateTorchStrengthSignal = yp1Var;
        yp1Var.g(new sl2(this, 2));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Api35Compat.setFlashStrengthLevel(linkedHashMap, i);
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl == null || (parametersAsync$default = UseCaseCameraRequestControl.setParametersAsync$default(requestControl, linkedHashMap, null, null, 6, null)) == null) {
            createFailureResult(yp1Var, new CameraControl.OperationCanceledException("Camera is not active."));
            return yp1Var;
        }
        CoroutineAdaptersKt.propagateTo(parametersAsync$default, yp1Var);
        j59 j59Var = j59.a;
        return yp1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 updateTorchStrengthLevelAsync$lambda$0(TorchControl torchControl, Throwable th) {
        torchControl._updateTorchStrengthSignal = null;
        return j59.a;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    /* JADX INFO: renamed from: getTorchMode-MnUA4hI$camera_camera2, reason: not valid java name */
    public final TorchMode m75getTorchModeMnUA4hI$camera_camera2() {
        return this.torchMode;
    }

    public final LiveData<Integer> getTorchStateLiveData() {
        return this._torchState;
    }

    public final LiveData<Integer> getTorchStrengthLiveData() {
        return this._torchStrength;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        stopRunningTaskInternal();
        if (this.torchMode != null) {
            m74updateTorchStateRaJ5uN0(TorchMode.Companion.m85getOFFIRs_R8());
            setTorchAsync$default(this, false, false, false, 6, null);
            this.torchMode = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001c  */
    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        boolean z;
        this._requestControl = useCaseCameraRequestControl;
        if (this.torchMode != null) {
            Integer value = getTorchStateLiveData().getValue();
            if (value != null) {
                z = value.intValue() == 1;
            }
            setTorchAsync$default(this, z, false, false, 4, null);
        }
    }

    public final mk2<j59> setTorchAsync(boolean z, boolean z2, boolean z3) {
        return m76setTorchAsyncOup_wC0$camera_camera2(z ? TorchMode.Companion.m86getONIRs_R8() : TorchMode.Companion.m85getOFFIRs_R8(), z2, z3);
    }

    /* JADX INFO: renamed from: setTorchAsync-Oup_wC0$camera_camera2, reason: not valid java name */
    public final mk2<j59> m76setTorchAsyncOup_wC0$camera_camera2(int i, boolean z, boolean z2) {
        int iM116getONbOjpiJc;
        mk2<Result3A> mk2VarMo67setTorchOffAsyncMtizInI;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "TorchControl#setTorchAsync: torch mode = " + ((Object) TorchMode.m83toStringimpl(i)));
        }
        yp1 yp1Var = new yp1();
        if (!z2 && !this.hasFlashUnit) {
            return createFailureResult(yp1Var, new IllegalStateException("No flash unit"));
        }
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl == null) {
            createFailureResult(yp1Var, new CameraControl.OperationCanceledException("Camera is not active."));
            return yp1Var;
        }
        m74updateTorchStateRaJ5uN0(i);
        if (z) {
            stopTorchStateTask();
        } else {
            xp1<j59> xp1Var = this._updateTorchStateSignal;
            if (xp1Var != null) {
                CoroutineAdaptersKt.propagateTo(yp1Var, xp1Var);
            }
        }
        this._updateTorchStateSignal = yp1Var;
        this.state3AControl.setPreferredAeModeAsync(m72isFlashUnitOnRaJ5uN0(i) ? 1 : null);
        AeMode.Companion companion = AeMode.Companion;
        AeMode aeModeM114fromIntOrNullkQd0u18 = companion.m114fromIntOrNullkQd0u18(this.state3AControl.getFinalSupportedAeMode());
        if (aeModeM114fromIntOrNullkQd0u18 != null) {
            iM116getONbOjpiJc = aeModeM114fromIntOrNullkQd0u18.m112unboximpl();
        } else {
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "TorchControl#setTorchAsync: Failed to convert ae mode of value " + this.state3AControl.getFinalSupportedAeMode() + " with AeMode.fromIntOrNull, fallback to AeMode.ON");
            }
            iM116getONbOjpiJc = companion.m116getONbOjpiJc();
        }
        if (m72isFlashUnitOnRaJ5uN0(i)) {
            if (TorchMode.m81equalsimpl0(i, TorchMode.Companion.m86getONIRs_R8())) {
                Integer value = getTorchStrengthLiveData().getValue();
                if (value != null) {
                    updateTorchStrengthLevelAsync(value.intValue());
                }
            } else {
                updateTorchStrengthLevelAsync(this.defaultTorchStrength);
            }
            mk2VarMo67setTorchOffAsyncMtizInI = requestControl.setTorchOnAsync();
        } else {
            mk2VarMo67setTorchOffAsyncMtizInI = requestControl.mo67setTorchOffAsyncMtizInI(iM116getONbOjpiJc);
        }
        CoroutineAdaptersKt.propagateTo(mk2VarMo67setTorchOffAsyncMtizInI, yp1Var, new vy2(4));
        return yp1Var;
    }

    /* JADX INFO: renamed from: setTorchMode-UuNXre8$camera_camera2, reason: not valid java name */
    public final void m77setTorchModeUuNXre8$camera_camera2(TorchMode torchMode) {
        this.torchMode = torchMode;
    }

    public final mk2<j59> setTorchStrengthLevelAsync(int i) {
        if (!this.isTorchStrengthSupported) {
            yp1 yp1Var = new yp1();
            createFailureResult(yp1Var, new UnsupportedOperationException("Configuring torch strength is not supported on the device."));
            return yp1Var;
        }
        if (1 > i || i > this.maxTorchStrength) {
            yp1 yp1Var2 = new yp1();
            createFailureResult(yp1Var2, new IllegalArgumentException("The given torch strength level is invalid."));
            return yp1Var2;
        }
        setLiveDataValue(this._torchStrength, i);
        Integer value = getTorchStateLiveData().getValue();
        return (value != null && value.intValue() == 1) ? updateTorchStrengthLevelAsync(i) : ga1.a(j59.a);
    }

    public static final class TorchMode {
        public static final Companion Companion = new Companion(null);
        private static final int OFF = m79constructorimpl(0);
        private static final int ON = m79constructorimpl(1);
        private static final int USED_AS_FLASH = m79constructorimpl(2);
        private final int value;

        private /* synthetic */ TorchMode(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ TorchMode m78boximpl(int i) {
            return new TorchMode(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static int m79constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m80equalsimpl(int i, Object obj) {
            return (obj instanceof TorchMode) && i == ((TorchMode) obj).m84unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m81equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m82hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m83toStringimpl(int i) {
            return qz0.d("TorchMode(value=", i, ')');
        }

        public boolean equals(Object obj) {
            return m80equalsimpl(this.value, obj);
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return m82hashCodeimpl(this.value);
        }

        public String toString() {
            return m83toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m84unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getOFF-IRs_-R8, reason: not valid java name */
            public final int m85getOFFIRs_R8() {
                return TorchMode.OFF;
            }

            /* JADX INFO: renamed from: getON-IRs_-R8, reason: not valid java name */
            public final int m86getONIRs_R8() {
                return TorchMode.ON;
            }

            /* JADX INFO: renamed from: getUSED_AS_FLASH-IRs_-R8, reason: not valid java name */
            public final int m87getUSED_AS_FLASHIRs_R8() {
                return TorchMode.USED_AS_FLASH;
            }

            private Companion() {
            }
        }
    }
}
