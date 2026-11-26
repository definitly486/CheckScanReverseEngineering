package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.graph.GraphListener;
import defpackage.aa4;
import defpackage.e2;
import defpackage.j59;
import defpackage.nl3;
import defpackage.tg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RequestOpen extends CameraRequest {
    private final GraphListener graphListener;
    private final nl3<j59, Boolean> isForegroundObserver;
    private final boolean isPrewarm;
    private final List<CameraId> sharedCameraIds;
    private final VirtualCameraState virtualCamera;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RequestOpen(VirtualCameraState virtualCameraState, List<CameraId> list, GraphListener graphListener, boolean z, nl3<? super j59, Boolean> nl3Var) {
        super(null);
        virtualCameraState.getClass();
        list.getClass();
        graphListener.getClass();
        nl3Var.getClass();
        this.virtualCamera = virtualCameraState;
        this.sharedCameraIds = list;
        this.graphListener = graphListener;
        this.isPrewarm = z;
        this.isForegroundObserver = nl3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RequestOpen copy$default(RequestOpen requestOpen, VirtualCameraState virtualCameraState, List list, GraphListener graphListener, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            virtualCameraState = requestOpen.virtualCamera;
        }
        if ((i & 2) != 0) {
            list = requestOpen.sharedCameraIds;
        }
        if ((i & 4) != 0) {
            graphListener = requestOpen.graphListener;
        }
        if ((i & 8) != 0) {
            z = requestOpen.isPrewarm;
        }
        if ((i & 16) != 0) {
            nl3Var = requestOpen.isForegroundObserver;
        }
        nl3 nl3Var2 = nl3Var;
        GraphListener graphListener2 = graphListener;
        return requestOpen.copy(virtualCameraState, list, graphListener2, z, nl3Var2);
    }

    public final VirtualCameraState component1() {
        return this.virtualCamera;
    }

    public final List<CameraId> component2() {
        return this.sharedCameraIds;
    }

    public final GraphListener component3() {
        return this.graphListener;
    }

    public final boolean component4() {
        return this.isPrewarm;
    }

    public final nl3<j59, Boolean> component5() {
        return this.isForegroundObserver;
    }

    public final RequestOpen copy(VirtualCameraState virtualCameraState, List<CameraId> list, GraphListener graphListener, boolean z, nl3<? super j59, Boolean> nl3Var) {
        virtualCameraState.getClass();
        list.getClass();
        graphListener.getClass();
        nl3Var.getClass();
        return new RequestOpen(virtualCameraState, list, graphListener, z, nl3Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestOpen)) {
            return false;
        }
        RequestOpen requestOpen = (RequestOpen) obj;
        return aa4.e(this.virtualCamera, requestOpen.virtualCamera) && aa4.e(this.sharedCameraIds, requestOpen.sharedCameraIds) && aa4.e(this.graphListener, requestOpen.graphListener) && this.isPrewarm == requestOpen.isPrewarm && aa4.e(this.isForegroundObserver, requestOpen.isForegroundObserver);
    }

    public final GraphListener getGraphListener() {
        return this.graphListener;
    }

    public final List<CameraId> getSharedCameraIds() {
        return this.sharedCameraIds;
    }

    public final VirtualCameraState getVirtualCamera() {
        return this.virtualCamera;
    }

    public int hashCode() {
        return this.isForegroundObserver.hashCode() + tg.c((this.graphListener.hashCode() + e2.b(this.sharedCameraIds, this.virtualCamera.hashCode() * 31, 31)) * 31, 31, this.isPrewarm);
    }

    public final nl3<j59, Boolean> isForegroundObserver() {
        return this.isForegroundObserver;
    }

    public final boolean isPrewarm() {
        return this.isPrewarm;
    }

    public String toString() {
        return "RequestOpen(virtualCamera=" + this.virtualCamera + ", sharedCameraIds=" + this.sharedCameraIds + ", graphListener=" + this.graphListener + ", isPrewarm=" + this.isPrewarm + ", isForegroundObserver=" + this.isForegroundObserver + ')';
    }
}
