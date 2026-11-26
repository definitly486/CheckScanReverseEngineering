package androidx.camera.camera2.pipe.framegraph;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphImpl_Factory implements xs6 {
    private final xs6<CameraGraph> cameraGraphProvider;
    private final xs6<Controller3A> controller3AProvider;
    private final xs6<FrameDistributor> frameDistributorProvider;
    private final xs6<FrameGraphBuffers> frameGraphBuffersProvider;
    private final xs6<y22> frameGraphCoroutineScopeProvider;

    private FrameGraphImpl_Factory(xs6<CameraGraph> xs6Var, xs6<FrameDistributor> xs6Var2, xs6<FrameGraphBuffers> xs6Var3, xs6<y22> xs6Var4, xs6<Controller3A> xs6Var5) {
        this.cameraGraphProvider = xs6Var;
        this.frameDistributorProvider = xs6Var2;
        this.frameGraphBuffersProvider = xs6Var3;
        this.frameGraphCoroutineScopeProvider = xs6Var4;
        this.controller3AProvider = xs6Var5;
    }

    public static FrameGraphImpl_Factory create(xs6<CameraGraph> xs6Var, xs6<FrameDistributor> xs6Var2, xs6<FrameGraphBuffers> xs6Var3, xs6<y22> xs6Var4, xs6<Controller3A> xs6Var5) {
        return new FrameGraphImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static FrameGraphImpl newInstance(CameraGraph cameraGraph, FrameDistributor frameDistributor, FrameGraphBuffers frameGraphBuffers, y22 y22Var, Controller3A controller3A) {
        return new FrameGraphImpl(cameraGraph, frameDistributor, frameGraphBuffers, y22Var, controller3A);
    }

    @Override // defpackage.ws6
    public FrameGraphImpl get() {
        return newInstance(this.cameraGraphProvider.get(), this.frameDistributorProvider.get(), this.frameGraphBuffersProvider.get(), this.frameGraphCoroutineScopeProvider.get(), this.controller3AProvider.get());
    }
}
