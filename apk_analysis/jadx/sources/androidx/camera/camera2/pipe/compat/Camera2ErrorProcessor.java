package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.j59;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ErrorProcessor implements CameraErrorListener {
    private final Object lock = new Object();
    private final Map<CameraId, VirtualCameraState> virtualCameraStateMap = new LinkedHashMap();

    @Override // androidx.camera.camera2.pipe.internal.CameraErrorListener
    /* JADX INFO: renamed from: onCameraError-3M5Xam4, reason: not valid java name */
    public void mo769onCameraError3M5Xam4(String str, int i, boolean z) {
        VirtualCameraState virtualCameraState;
        str.getClass();
        synchronized (this.lock) {
            virtualCameraState = this.virtualCameraStateMap.get(CameraId.m351boximpl(str));
        }
        if (virtualCameraState == null) {
            return;
        }
        virtualCameraState.getGraphListener().onGraphError(new GraphState.GraphStateError(i, z, null));
    }

    /* JADX INFO: renamed from: setActiveVirtualCamera-0r8Bogc$camera_camera2_pipe, reason: not valid java name */
    public final void m770setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(String str, VirtualCameraState virtualCameraState) {
        str.getClass();
        virtualCameraState.getClass();
        synchronized (this.lock) {
            this.virtualCameraStateMap.put(CameraId.m351boximpl(str), virtualCameraState);
            j59 j59Var = j59.a;
        }
    }
}
