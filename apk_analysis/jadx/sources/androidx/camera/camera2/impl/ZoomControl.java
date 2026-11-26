package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.adapter.ZoomValue;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.internal.ZoomMath;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.aw4;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.j59;
import defpackage.js2;
import defpackage.js3;
import defpackage.mb4;
import defpackage.xp1;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class ZoomControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private final cl4 _zoomState$delegate;
    private final cl4 defaultZoomState$delegate;
    private boolean isInitialized;
    private final float maxZoomRatio;
    private final float minZoomRatio;
    private xp1<j59> updateSignal;
    private final ZoomCompat zoomCompat;

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(ZoomControl zoomControl);
    }

    public ZoomControl(ZoomCompat zoomCompat) {
        zoomCompat.getClass();
        this.zoomCompat = zoomCompat;
        this.minZoomRatio = zoomCompat.getMinZoomRatio();
        this.maxZoomRatio = zoomCompat.getMaxZoomRatio();
        this.defaultZoomState$delegate = new fh8(new aw4(this, 7));
        this._zoomState$delegate = new fh8(new js3(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData _zoomState_delegate$lambda$0(ZoomControl zoomControl) {
        return new MutableLiveData(zoomControl.getDefaultZoomState());
    }

    public static /* synthetic */ ListenableFuture applyZoomState$default(ZoomControl zoomControl, ZoomState zoomState, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return zoomControl.applyZoomState(zoomState, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ZoomValue defaultZoomState_delegate$lambda$0(ZoomControl zoomControl) {
        return new ZoomValue(1.0f, zoomControl.minZoomRatio, zoomControl.maxZoomRatio);
    }

    private final MutableLiveData<ZoomState> get_zoomState() {
        return (MutableLiveData) this._zoomState$delegate.getValue();
    }

    private final void setZoomState(ZoomState zoomState) {
        if (Threads.isMainThread()) {
            get_zoomState().setValue(zoomState);
        } else {
            get_zoomState().postValue(zoomState);
        }
    }

    private final float toZoomRatio(float f) {
        return ZoomMath.INSTANCE.getZoomRatioFromLinearZoom(f, this.minZoomRatio, this.maxZoomRatio);
    }

    public final ListenableFuture<Void> applyZoomState(ZoomState zoomState, boolean z, boolean z2) {
        zoomState.getClass();
        yp1 yp1Var = new yp1();
        xp1<j59> xp1Var = this.updateSignal;
        if (xp1Var != null) {
            if (z) {
                xp1Var.e(new CameraControl.OperationCanceledException("Cancelled due to another zoom value being set."));
            } else {
                CoroutineAdaptersKt.propagateTo(yp1Var, xp1Var);
            }
        }
        this.updateSignal = yp1Var;
        setZoomState(zoomState);
        UseCaseCameraRequestControl requestControl = getRequestControl();
        if (requestControl != null) {
            float zoomRatio = zoomState.getZoomRatio();
            ZoomCompat zoomCompat = this.zoomCompat;
            CoroutineAdaptersKt.propagateTo(z2 ? zoomCompat.applyAsync(zoomRatio, requestControl) : zoomCompat.resetAsync(requestControl), yp1Var);
        } else {
            yp1Var.e(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        ListenableFuture<Void> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(CoroutineAdaptersKt.asListenableFuture$default((mb4) yp1Var, (Object) null, 1, (Object) null));
        listenableFutureNonCancellationPropagating.getClass();
        return listenableFutureNonCancellationPropagating;
    }

    public final ZoomValue getDefaultZoomState() {
        return (ZoomValue) this.defaultZoomState$delegate.getValue();
    }

    public final float getMaxZoomRatio() {
        return this.maxZoomRatio;
    }

    public final float getMinZoomRatio() {
        return this.minZoomRatio;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this._requestControl;
    }

    public final LiveData<ZoomState> getZoomStateLiveData() {
        return get_zoomState();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        applyZoomState$default(this, getDefaultZoomState(), false, false, 6, null);
    }

    public final ListenableFuture<Void> setLinearZoom(float f) {
        if (f <= 1.0f && f >= 0.0f) {
            return applyZoomState$default(this, new ZoomValue(new ZoomValue.LinearZoom(f), this.minZoomRatio, this.maxZoomRatio), false, false, 6, null);
        }
        ListenableFuture<Void> listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(new IllegalArgumentException("Requested linearZoom " + f + " is not within valid range [0, 1]"));
        listenableFutureImmediateFailedFuture.getClass();
        return listenableFutureImmediateFailedFuture;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        ZoomState value = get_zoomState().getValue();
        if (value == null) {
            value = getDefaultZoomState();
        }
        applyZoomState(value, false, this.isInitialized || value.getZoomRatio() != 1.0f);
        this.isInitialized = true;
    }

    public final ListenableFuture<Void> setZoomRatio(float f) {
        float f2 = this.maxZoomRatio;
        if (f <= f2) {
            float f3 = this.minZoomRatio;
            if (f >= f3) {
                return applyZoomState$default(this, new ZoomValue(f, f3, f2), false, false, 6, null);
            }
        }
        StringBuilder sb = new StringBuilder("Requested zoomRatio ");
        sb.append(f);
        sb.append(" is not within valid range [");
        sb.append(this.minZoomRatio);
        sb.append(", ");
        ListenableFuture<Void> listenableFutureImmediateFailedFuture = Futures.immediateFailedFuture(new IllegalArgumentException(js2.b(sb, this.maxZoomRatio, ']')));
        listenableFutureImmediateFailedFuture.getClass();
        return listenableFutureImmediateFailedFuture;
    }

    public final float toLinearZoom(float f) {
        return ZoomMath.INSTANCE.getLinearZoomFromZoomRatio(f, this.minZoomRatio, this.maxZoomRatio);
    }
}
