package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.compat.ActiveCamera;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.core.WakeLock;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.ga1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ue3;
import defpackage.y22;
import defpackage.y68;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ActiveCamera {
    private final Set<CameraId> allCameraIds;
    private final AndroidCameraState androidCameraState;
    private VirtualCameraState current;
    private final WakeLock wakelock;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.ActiveCamera$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.ActiveCamera$1", f = "Camera2DeviceManager.kt", l = {137}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.ActiveCamera$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.camera.camera2.pipe.compat.ActiveCamera$1$1", f = "Camera2DeviceManager.kt", l = {}, m = "invokeSuspend", v = 1)
        public static final class C00071 extends pg8 implements bm3<CameraState, e02<? super Boolean>, Object> {
            /* synthetic */ Object L$0;
            int label;

            public C00071(e02<? super C00071> e02Var) {
                super(2, e02Var);
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00071 c00071 = new C00071(e02Var);
                c00071.L$0 = obj;
                return c00071;
            }

            @Override // defpackage.bm3
            public final Object invoke(CameraState cameraState, e02<? super Boolean> e02Var) {
                return ((C00071) create(cameraState, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                CameraState cameraState = (CameraState) this.L$0;
                return Boolean.valueOf((cameraState instanceof CameraStateClosing) || (cameraState instanceof CameraStateClosed));
            }
        }

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ActiveCamera.this.new AnonymousClass1(e02Var);
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
                y68<CameraState> state = ActiveCamera.this.androidCameraState.getState();
                C00071 c00071 = new C00071(null);
                this.label = 1;
                if (ue3.b(state, c00071, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ActiveCamera.this.wakelock.release();
            return j59.a;
        }
    }

    public ActiveCamera(AndroidCameraState androidCameraState, Set<CameraId> set, y22 y22Var, final nl3<? super ActiveCamera, j59> nl3Var) {
        androidCameraState.getClass();
        set.getClass();
        y22Var.getClass();
        nl3Var.getClass();
        this.androidCameraState = androidCameraState;
        this.allCameraIds = set;
        this.wakelock = new WakeLock(y22Var, 1000L, true, new ll3() { // from class: w6
            @Override // defpackage.ll3
            public final Object invoke() {
                return ActiveCamera.wakelock$lambda$0(nl3Var, this);
            }
        });
        av0.c(y22Var, null, null, new AnonymousClass1(null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 wakelock$lambda$0(nl3 nl3Var, ActiveCamera activeCamera) {
        nl3Var.invoke(activeCamera);
        return j59.a;
    }

    public final Token acquire() {
        return this.wakelock.acquire();
    }

    public final Object awaitClosed(e02<? super j59> e02Var) {
        Object objAwaitClosed = this.androidCameraState.awaitClosed(e02Var);
        return objAwaitClosed == a32.COROUTINE_SUSPENDED ? objAwaitClosed : j59.a;
    }

    public final void close() {
        this.wakelock.release();
        this.androidCameraState.close();
    }

    public final Object connectTo(VirtualCameraState virtualCameraState, Token token, e02<? super j59> e02Var) {
        VirtualCameraState virtualCameraState2 = this.current;
        this.current = virtualCameraState;
        if (virtualCameraState2 != null) {
            VirtualCamera.m839disconnectTPqeGZw$default(virtualCameraState2, null, 1, null);
        }
        Object objConnect$camera_camera2_pipe = virtualCameraState.connect$camera_camera2_pipe(this.androidCameraState.getState(), token, e02Var);
        return objConnect$camera_camera2_pipe == a32.COROUTINE_SUSPENDED ? objConnect$camera_camera2_pipe : j59.a;
    }

    public final Set<CameraId> getAllCameraIds$camera_camera2_pipe() {
        return this.allCameraIds;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m730getCameraIdDz_R5H8() {
        return this.androidCameraState.m739getCameraIdDz_R5H8();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ActiveCamera(cameraId=");
        sb.append((Object) CameraId.m357toStringimpl(m730getCameraIdDz_R5H8()));
        sb.append(")@");
        int iHashCode = hashCode();
        ga1.b(16);
        String string = Integer.toString(iHashCode, 16);
        string.getClass();
        sb.append(string);
        return sb.toString();
    }
}
