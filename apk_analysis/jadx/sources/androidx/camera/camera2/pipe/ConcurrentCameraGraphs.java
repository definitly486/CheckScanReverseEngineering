package androidx.camera.camera2.pipe;

import defpackage.aa4;
import defpackage.ah;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ConcurrentCameraGraphs {
    private final Set<CameraGraphId> cameraGraphIds;
    private final Set<CameraId> cameraIds;

    public ConcurrentCameraGraphs(Set<CameraGraphId> set, Set<CameraId> set2) {
        set.getClass();
        set2.getClass();
        this.cameraGraphIds = set;
        this.cameraIds = set2;
        if (set.size() <= 1) {
            ah.f("Check failed.");
            throw null;
        }
        if (set.size() == set2.size()) {
            return;
        }
        ah.f("Check failed.");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConcurrentCameraGraphs copy$default(ConcurrentCameraGraphs concurrentCameraGraphs, Set set, Set set2, int i, Object obj) {
        if ((i & 1) != 0) {
            set = concurrentCameraGraphs.cameraGraphIds;
        }
        if ((i & 2) != 0) {
            set2 = concurrentCameraGraphs.cameraIds;
        }
        return concurrentCameraGraphs.copy(set, set2);
    }

    public final Set<CameraGraphId> component1() {
        return this.cameraGraphIds;
    }

    public final Set<CameraId> component2() {
        return this.cameraIds;
    }

    public final ConcurrentCameraGraphs copy(Set<CameraGraphId> set, Set<CameraId> set2) {
        set.getClass();
        set2.getClass();
        return new ConcurrentCameraGraphs(set, set2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConcurrentCameraGraphs)) {
            return false;
        }
        ConcurrentCameraGraphs concurrentCameraGraphs = (ConcurrentCameraGraphs) obj;
        return aa4.e(this.cameraGraphIds, concurrentCameraGraphs.cameraGraphIds) && aa4.e(this.cameraIds, concurrentCameraGraphs.cameraIds);
    }

    public final Set<CameraGraphId> getCameraGraphIds() {
        return this.cameraGraphIds;
    }

    public final Set<CameraId> getCameraIds() {
        return this.cameraIds;
    }

    public int hashCode() {
        return this.cameraIds.hashCode() + (this.cameraGraphIds.hashCode() * 31);
    }

    public String toString() {
        return "ConcurrentCameraGraphs(cameraGraphIds=" + this.cameraGraphIds + ", cameraIds=" + this.cameraIds + ')';
    }
}
