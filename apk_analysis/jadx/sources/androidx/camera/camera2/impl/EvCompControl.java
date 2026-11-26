package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.EvCompValue;
import androidx.camera.camera2.compat.EvCompCompat;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.core.CameraControl;
import defpackage.mk2;
import defpackage.n7;
import defpackage.xp1;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class EvCompControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final EvCompCompat compat;
    private int evCompIndex;
    private EvCompValue exposureState;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(EvCompControl evCompControl);
    }

    public EvCompControl(EvCompCompat evCompCompat) {
        evCompCompat.getClass();
        this.compat = evCompCompat;
        this.exposureState = new EvCompValue(evCompCompat.getSupported(), this.evCompIndex, evCompCompat.getRange(), evCompCompat.getStep());
    }

    private final xp1<Integer> createFailureResult(Exception exc) {
        yp1 yp1Var = new yp1();
        yp1Var.e(exc);
        return yp1Var;
    }

    private final void setEvCompIndex(int i) {
        this.evCompIndex = i;
        this.exposureState = this.exposureState.updateIndex$camera_camera2(i);
    }

    public static /* synthetic */ mk2 updateAsync$default(EvCompControl evCompControl, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return evCompControl.updateAsync(i, z);
    }

    public final EvCompValue getExposureState() {
        return this.exposureState;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        setEvCompIndex(0);
        updateAsync$default(this, 0, false, 2, null);
    }

    public final void setExposureState(EvCompValue evCompValue) {
        evCompValue.getClass();
        this.exposureState = evCompValue;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        updateAsync(this.evCompIndex, false);
    }

    public final mk2<Integer> updateAsync(int i, boolean z) {
        if (!this.compat.getSupported()) {
            return createFailureResult(new IllegalArgumentException("ExposureCompensation is not supported"));
        }
        if (!this.compat.getRange().contains(Integer.valueOf(i))) {
            StringBuilder sbC = n7.c(i, "Requested ExposureCompensation ", " is not within valid range [");
            sbC.append(this.compat.getRange().getUpper());
            sbC.append(" .. ");
            sbC.append(this.compat.getRange().getLower());
            sbC.append(']');
            return createFailureResult(new IllegalArgumentException(sbC.toString()));
        }
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl != null) {
            setEvCompIndex(i);
            mk2<Integer> mk2VarApplyAsync = this.compat.applyAsync(i, requestControl, z);
            if (mk2VarApplyAsync != null) {
                return mk2VarApplyAsync;
            }
        }
        CameraControl.OperationCanceledException operationCanceledException = new CameraControl.OperationCanceledException("Camera is not active.");
        this.compat.stopRunningTask(operationCanceledException);
        return createFailureResult(operationCanceledException);
    }
}
