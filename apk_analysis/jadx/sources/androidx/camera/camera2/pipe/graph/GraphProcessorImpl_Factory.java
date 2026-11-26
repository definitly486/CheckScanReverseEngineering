package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.xs6;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GraphProcessorImpl_Factory implements xs6 {
    private final xs6<Camera2Quirks> camera2QuirksProvider;
    private final xs6<CameraGraph.Config> cameraGraphConfigProvider;
    private final xs6<CameraGraphId> cameraGraphIdProvider;
    private final xs6<Listener3A> graphListener3AProvider;
    private final xs6<List<Request.Listener>> graphListenersProvider;
    private final xs6<Threads> threadsProvider;

    private GraphProcessorImpl_Factory(xs6<Threads> xs6Var, xs6<CameraGraphId> xs6Var2, xs6<CameraGraph.Config> xs6Var3, xs6<Listener3A> xs6Var4, xs6<List<Request.Listener>> xs6Var5, xs6<Camera2Quirks> xs6Var6) {
        this.threadsProvider = xs6Var;
        this.cameraGraphIdProvider = xs6Var2;
        this.cameraGraphConfigProvider = xs6Var3;
        this.graphListener3AProvider = xs6Var4;
        this.graphListenersProvider = xs6Var5;
        this.camera2QuirksProvider = xs6Var6;
    }

    public static GraphProcessorImpl_Factory create(xs6<Threads> xs6Var, xs6<CameraGraphId> xs6Var2, xs6<CameraGraph.Config> xs6Var3, xs6<Listener3A> xs6Var4, xs6<List<Request.Listener>> xs6Var5, xs6<Camera2Quirks> xs6Var6) {
        return new GraphProcessorImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6);
    }

    public static GraphProcessorImpl newInstance(Threads threads, CameraGraphId cameraGraphId, CameraGraph.Config config, Listener3A listener3A, List<Request.Listener> list, Camera2Quirks camera2Quirks) {
        return new GraphProcessorImpl(threads, cameraGraphId, config, listener3A, list, camera2Quirks);
    }

    @Override // defpackage.ws6
    public GraphProcessorImpl get() {
        return newInstance(this.threadsProvider.get(), this.cameraGraphIdProvider.get(), this.cameraGraphConfigProvider.get(), this.graphListener3AProvider.get(), this.graphListenersProvider.get(), this.camera2QuirksProvider.get());
    }
}
