package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.SessionConfig;
import defpackage.aa4;
import defpackage.av0;
import defpackage.b36;
import defpackage.ej0;
import defpackage.j59;
import defpackage.kl1;
import defpackage.mk2;
import defpackage.n05;
import defpackage.q07;
import defpackage.qn1;
import defpackage.tg;
import defpackage.vh;
import defpackage.xp1;
import defpackage.yp1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class State3AControl implements UseCaseCameraControl, UseCaseManager.RunningUseCasesChangeListener {
    private int _flashMode;
    private Integer _preferredAeMode;
    private Integer _preferredFocusMode;
    private UseCaseCameraRequestControl _requestControl;
    private int _template;
    private boolean _tryExternalFlashAeMode;
    private final AutoFlashAEModeDisabler aeModeDisabler;
    private final CameraProperties cameraProperties;
    private long currentRevision;
    private final Object lock;
    private final List<xp1<j59>> pendingSignals;
    private final UseCaseThreads threads;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(State3AControl state3AControl);
    }

    public static final class StateSnapshot {
        private final int flashMode;
        private final Integer preferredAeMode;
        private final Integer preferredFocusMode;
        private final int template;
        private final boolean tryExternalFlashAeMode;

        public StateSnapshot(int i, int i2, boolean z, Integer num, Integer num2) {
            this.flashMode = i;
            this.template = i2;
            this.tryExternalFlashAeMode = z;
            this.preferredAeMode = num;
            this.preferredFocusMode = num2;
        }

        public static /* synthetic */ StateSnapshot copy$default(StateSnapshot stateSnapshot, int i, int i2, boolean z, Integer num, Integer num2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = stateSnapshot.flashMode;
            }
            if ((i3 & 2) != 0) {
                i2 = stateSnapshot.template;
            }
            if ((i3 & 4) != 0) {
                z = stateSnapshot.tryExternalFlashAeMode;
            }
            if ((i3 & 8) != 0) {
                num = stateSnapshot.preferredAeMode;
            }
            if ((i3 & 16) != 0) {
                num2 = stateSnapshot.preferredFocusMode;
            }
            Integer num3 = num2;
            boolean z2 = z;
            return stateSnapshot.copy(i, i2, z2, num, num3);
        }

        public final int component1() {
            return this.flashMode;
        }

        public final int component2() {
            return this.template;
        }

        public final boolean component3() {
            return this.tryExternalFlashAeMode;
        }

        public final Integer component4() {
            return this.preferredAeMode;
        }

        public final Integer component5() {
            return this.preferredFocusMode;
        }

        public final StateSnapshot copy(int i, int i2, boolean z, Integer num, Integer num2) {
            return new StateSnapshot(i, i2, z, num, num2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StateSnapshot)) {
                return false;
            }
            StateSnapshot stateSnapshot = (StateSnapshot) obj;
            return this.flashMode == stateSnapshot.flashMode && this.template == stateSnapshot.template && this.tryExternalFlashAeMode == stateSnapshot.tryExternalFlashAeMode && aa4.e(this.preferredAeMode, stateSnapshot.preferredAeMode) && aa4.e(this.preferredFocusMode, stateSnapshot.preferredFocusMode);
        }

        public final int getFlashMode() {
            return this.flashMode;
        }

        public final Integer getPreferredAeMode() {
            return this.preferredAeMode;
        }

        public final Integer getPreferredFocusMode() {
            return this.preferredFocusMode;
        }

        public final int getTemplate() {
            return this.template;
        }

        public final boolean getTryExternalFlashAeMode() {
            return this.tryExternalFlashAeMode;
        }

        public int hashCode() {
            int iC = tg.c(ej0.b(this.template, Integer.hashCode(this.flashMode) * 31, 31), 31, this.tryExternalFlashAeMode);
            Integer num = this.preferredAeMode;
            int iHashCode = (iC + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.preferredFocusMode;
            return iHashCode + (num2 != null ? num2.hashCode() : 0);
        }

        public String toString() {
            return "StateSnapshot(flashMode=" + this.flashMode + ", template=" + this.template + ", tryExternalFlashAeMode=" + this.tryExternalFlashAeMode + ", preferredAeMode=" + this.preferredAeMode + ", preferredFocusMode=" + this.preferredFocusMode + ')';
        }
    }

    public State3AControl(CameraProperties cameraProperties, AutoFlashAEModeDisabler autoFlashAEModeDisabler, UseCaseThreads useCaseThreads) {
        cameraProperties.getClass();
        autoFlashAEModeDisabler.getClass();
        useCaseThreads.getClass();
        this.cameraProperties = cameraProperties;
        this.aeModeDisabler = autoFlashAEModeDisabler;
        this.threads = useCaseThreads;
        this.lock = new Object();
        this.pendingSignals = new ArrayList();
        this._flashMode = 2;
        this._template = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyUpdate(long j) {
        int i;
        boolean z;
        StateSnapshot stateSnapshot;
        List listT0;
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl == null) {
            failAllPendingSignals(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        synchronized (this.lock) {
            i = 1;
            z = j == this.currentRevision;
        }
        if (z) {
            synchronized (this.lock) {
                stateSnapshot = new StateSnapshot(this._flashMode, this._template, this._tryExternalFlashAeMode, this._preferredAeMode, this._preferredFocusMode);
            }
            int finalPreferredAeMode = getFinalPreferredAeMode(stateSnapshot.getFlashMode(), stateSnapshot.getTryExternalFlashAeMode(), stateSnapshot.getPreferredAeMode());
            Integer preferredFocusMode = stateSnapshot.getPreferredFocusMode();
            try {
                mk2 mk2VarSubmitParameters$default = UseCaseCameraRequestControl.submitParameters$default(requestControl, n05.e(new b36(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAeMode(this.cameraProperties.getMetadata(), finalPreferredAeMode))), new b36(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAfMode(this.cameraProperties.getMetadata(), preferredFocusMode != null ? preferredFocusMode.intValue() : getDefaultAfMode(stateSnapshot.getTemplate())))), new b36(CaptureRequest.CONTROL_AWB_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAwbMode(this.cameraProperties.getMetadata(), 1)))), null, null, 6, null);
                synchronized (this.lock) {
                    listT0 = qn1.t0(this.pendingSignals);
                }
                mk2VarSubmitParameters$default.g(new kl1(i, listT0, this));
            } catch (Exception e) {
                failAllPendingSignals(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 applyUpdate$lambda$3(List list, State3AControl state3AControl, Throwable th) {
        if (th != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((xp1) it.next()).e(th);
            }
        } else {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((xp1) it2.next()).f(j59.a);
            }
        }
        synchronized (state3AControl.lock) {
            state3AControl.pendingSignals.removeAll(list);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final int calculateTemplateFromUseCases(Set<? extends UseCase> set) {
        CaptureConfig repeatingCaptureConfig;
        SessionConfig validSessionConfigOrNull = new SessionConfigAdapter(set, false, 2, 0 == true ? 1 : 0).getValidSessionConfigOrNull();
        if (validSessionConfigOrNull == null || (repeatingCaptureConfig = validSessionConfigOrNull.getRepeatingCaptureConfig()) == null) {
            return 1;
        }
        Integer numValueOf = Integer.valueOf(repeatingCaptureConfig.getTemplateType());
        Integer num = numValueOf.intValue() != -1 ? numValueOf : null;
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    private final void failAllPendingSignals(Exception exc) {
        List listT0;
        synchronized (this.lock) {
            listT0 = qn1.t0(this.pendingSignals);
            this.pendingSignals.clear();
        }
        Iterator it = listT0.iterator();
        while (it.hasNext()) {
            ((xp1) it.next()).e(exc);
        }
    }

    private final int getDefaultAfMode(int i) {
        return (i == 1 || i != 3) ? 4 : 3;
    }

    private final int getFinalPreferredAeMode(int i, boolean z, Integer num) {
        int correctedAeMode;
        if (num != null) {
            correctedAeMode = num.intValue();
        } else if (i != 0) {
            correctedAeMode = i != 1 ? 1 : 3;
        } else {
            correctedAeMode = this.aeModeDisabler.getCorrectedAeMode(2);
        }
        if (z && CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata())) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "State3AControl.invalidate: trying external flash AE mode.");
            }
            correctedAeMode = 5;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            vh.d(correctedAeMode, "State3AControl.getFinalPreferredAeMode: preferAeMode = ", Camera2Logger.TRUNCATED_TAG);
        }
        return correctedAeMode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final mk2<j59> update() {
        yp1 yp1Var = new yp1();
        q07 q07Var = new q07();
        synchronized (this.lock) {
            this.pendingSignals.add(yp1Var);
            long j = this.currentRevision + 1;
            this.currentRevision = j;
            q07Var.b = j;
            j59 j59Var = j59.a;
        }
        av0.c(this.threads.getSequentialScope(), null, null, new State3AControl$update$$inlined$confineLaunch$1(null, this, q07Var), 3);
        return yp1Var;
    }

    public final CameraProperties getCameraProperties() {
        return this.cameraProperties;
    }

    public final int getFinalSupportedAeMode() {
        int supportedAeMode;
        synchronized (this.lock) {
            supportedAeMode = CameraMetadataIntegrationKt.getSupportedAeMode(this.cameraProperties.getMetadata(), getFinalPreferredAeMode(this._flashMode, this._tryExternalFlashAeMode, this._preferredAeMode));
        }
        return supportedAeMode;
    }

    public final int getFlashMode() {
        int i;
        synchronized (this.lock) {
            i = this._flashMode;
        }
        return i;
    }

    public final Integer getPreferredAeMode() {
        Integer num;
        synchronized (this.lock) {
            num = this._preferredAeMode;
        }
        return num;
    }

    public final Integer getPreferredFocusMode() {
        Integer num;
        synchronized (this.lock) {
            num = this._preferredFocusMode;
        }
        return num;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    public final int getTemplate() {
        int i;
        synchronized (this.lock) {
            i = this._template;
        }
        return i;
    }

    public final boolean getTryExternalFlashAeMode() {
        boolean z;
        synchronized (this.lock) {
            z = this._tryExternalFlashAeMode;
        }
        return z;
    }

    @Override // androidx.camera.camera2.impl.UseCaseManager.RunningUseCasesChangeListener
    public void onRunningUseCasesChanged(Set<? extends UseCase> set) {
        set.getClass();
        av0.c(this.threads.getSequentialScope(), null, null, new State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1(null, qn1.y0(set), this), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        synchronized (this.lock) {
            this._tryExternalFlashAeMode = false;
            this._preferredAeMode = null;
            this._preferredFocusMode = null;
            this._flashMode = 2;
            this._template = 1;
            j59 j59Var = j59.a;
        }
        update();
    }

    public final mk2<j59> setFlashModeAsync(int i) {
        synchronized (this.lock) {
            this._flashMode = i;
            j59 j59Var = j59.a;
        }
        return update();
    }

    public final mk2<j59> setPreferredAeModeAsync(Integer num) {
        synchronized (this.lock) {
            this._preferredAeMode = num;
            j59 j59Var = j59.a;
        }
        return update();
    }

    public final mk2<j59> setPreferredFocusModeAsync(Integer num) {
        synchronized (this.lock) {
            this._preferredFocusMode = num;
            j59 j59Var = j59.a;
        }
        return update();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        update();
    }

    public final mk2<j59> setTemplateAsync(int i) {
        synchronized (this.lock) {
            this._template = i;
            j59 j59Var = j59.a;
        }
        return update();
    }

    public final mk2<j59> setTryExternalFlashAeModeAsync(boolean z) {
        synchronized (this.lock) {
            this._tryExternalFlashAeMode = z;
            j59 j59Var = j59.a;
        }
        return update();
    }
}
