package androidx.camera.camera2.pipe.framegraph;

import androidx.camera.camera2.pipe.CameraGraph;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphBuffers_Factory implements xs6 {
    private final xs6<CameraGraph> cameraGraphProvider;
    private final xs6<y22> frameGraphCoroutineScopeProvider;

    private FrameGraphBuffers_Factory(xs6<CameraGraph> xs6Var, xs6<y22> xs6Var2) {
        this.cameraGraphProvider = xs6Var;
        this.frameGraphCoroutineScopeProvider = xs6Var2;
    }

    public static FrameGraphBuffers_Factory create(xs6<CameraGraph> xs6Var, xs6<y22> xs6Var2) {
        return new FrameGraphBuffers_Factory(xs6Var, xs6Var2);
    }

    public static FrameGraphBuffers newInstance(CameraGraph cameraGraph, y22 y22Var) {
        return new FrameGraphBuffers(cameraGraph, y22Var);
    }

    @Override // defpackage.ws6
    public FrameGraphBuffers get() {
        return newInstance(this.cameraGraphProvider.get(), this.frameGraphCoroutineScopeProvider.get());
    }
}
