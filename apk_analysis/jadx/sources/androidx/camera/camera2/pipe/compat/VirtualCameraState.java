package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphListener;
import defpackage.ah;
import defpackage.av0;
import defpackage.bt7;
import defpackage.e02;
import defpackage.fg;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.vg5;
import defpackage.y22;
import defpackage.zd3;
import defpackage.zs7;

/* JADX INFO: loaded from: classes.dex */
public final class VirtualCameraState implements VirtualCamera {
    private CameraState _lastState;
    private final vg5<CameraState> _stateFlow;
    private final hd3<CameraState> _states;
    private final String cameraId;
    private boolean closed;
    private VirtualAndroidCameraDevice currentVirtualAndroidCamera;
    private final int debugId;
    private final GraphListener graphListener;
    private mb4 job;
    private final Object lock;
    private final y22 scope;
    private Token wakelockToken;

    private VirtualCameraState(String str, GraphListener graphListener, y22 y22Var) {
        str.getClass();
        graphListener.getClass();
        y22Var.getClass();
        this.cameraId = str;
        this.graphListener = graphListener;
        this.scope = y22Var;
        this.debugId = VirtualCameraKt.getVirtualCameraDebugIds().b();
        this.lock = new Object();
        zs7 zs7VarB = bt7.b(1, 3, null, 4);
        this._stateFlow = zs7VarB;
        this._states = zd3.c(zs7VarB);
        CameraStateUnopened cameraStateUnopened = CameraStateUnopened.INSTANCE;
        this._lastState = cameraStateUnopened;
        if (zs7VarB.e(cameraStateUnopened)) {
            return;
        }
        ah.f("Check failed.");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void emitState(CameraState cameraState) {
        this._lastState = cameraState;
        if (this._stateFlow.e(cameraState)) {
            return;
        }
        fg.d("Failed to emit ", cameraState, " in ", this);
    }

    public final Object connect$camera_camera2_pipe(hd3<? extends CameraState> hd3Var, Token token, e02<? super j59> e02Var) {
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.job = av0.c(this.scope, null, null, new VirtualCameraState$connect$2$1(hd3Var, this, null), 3);
                    this.wakelockToken = token;
                    return j59.a;
                }
                if (token != null) {
                    token.release();
                }
                return j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.compat.VirtualCamera
    /* JADX INFO: renamed from: disconnect-TPqeGZw */
    public void mo840disconnectTPqeGZw(CameraError cameraError) {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                int i = 1;
                this.closed = true;
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "Disconnecting " + this);
                }
                VirtualAndroidCameraDevice virtualAndroidCameraDevice = this.currentVirtualAndroidCamera;
                if (virtualAndroidCameraDevice != null) {
                    virtualAndroidCameraDevice.disconnect$camera_camera2_pipe();
                }
                mb4 mb4Var = this.job;
                CameraError cameraError2 = null;
                Object[] objArr = 0;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                Token token = this.wakelockToken;
                if (token != null) {
                    token.release();
                }
                if (!(getValue() instanceof CameraStateClosed)) {
                    if (!(this._lastState instanceof CameraStateClosing)) {
                        emitState(new CameraStateClosing(cameraError2, i, objArr == true ? 1 : 0));
                    }
                    emitState(new CameraStateClosed(this.cameraId, ClosedReason.APP_DISCONNECTED, null, null, null, null, null, null, cameraError, 252, null));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m842getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    public final GraphListener getGraphListener() {
        return this.graphListener;
    }

    public final y22 getScope() {
        return this.scope;
    }

    @Override // androidx.camera.camera2.pipe.compat.VirtualCamera
    public hd3<CameraState> getState() {
        return this._states;
    }

    @Override // androidx.camera.camera2.pipe.compat.VirtualCamera
    public CameraState getValue() {
        CameraState cameraState;
        synchronized (this.lock) {
            cameraState = this._lastState;
        }
        return cameraState;
    }

    public String toString() {
        return "VirtualCamera-" + this.debugId;
    }

    public /* synthetic */ VirtualCameraState(String str, GraphListener graphListener, y22 y22Var, jh2 jh2Var) {
        this(str, graphListener, y22Var);
    }
}
