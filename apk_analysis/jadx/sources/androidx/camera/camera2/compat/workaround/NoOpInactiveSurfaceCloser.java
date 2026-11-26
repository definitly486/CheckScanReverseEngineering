package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.impl.DeferrableSurface;

/* JADX INFO: loaded from: classes.dex */
public final class NoOpInactiveSurfaceCloser implements InactiveSurfaceCloser {
    public static final NoOpInactiveSurfaceCloser INSTANCE = new NoOpInactiveSurfaceCloser();

    private NoOpInactiveSurfaceCloser() {
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void closeAll() {
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    /* JADX INFO: renamed from: configure-hB7JTeY */
    public void mo33configurehB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph) {
        deferrableSurface.getClass();
        cameraGraph.getClass();
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void onSurfaceInactive(DeferrableSurface deferrableSurface) {
        deferrableSurface.getClass();
    }
}
