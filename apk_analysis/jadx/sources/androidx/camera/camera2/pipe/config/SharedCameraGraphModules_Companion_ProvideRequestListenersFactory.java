package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.te6;
import defpackage.xs6;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SharedCameraGraphModules_Companion_ProvideRequestListenersFactory implements xs6 {
    private final xs6<FrameDistributor> frameDistributorProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<Listener3A> listener3AProvider;

    private SharedCameraGraphModules_Companion_ProvideRequestListenersFactory(xs6<CameraGraph.Config> xs6Var, xs6<Listener3A> xs6Var2, xs6<FrameDistributor> xs6Var3) {
        this.graphConfigProvider = xs6Var;
        this.listener3AProvider = xs6Var2;
        this.frameDistributorProvider = xs6Var3;
    }

    public static SharedCameraGraphModules_Companion_ProvideRequestListenersFactory create(xs6<CameraGraph.Config> xs6Var, xs6<Listener3A> xs6Var2, xs6<FrameDistributor> xs6Var3) {
        return new SharedCameraGraphModules_Companion_ProvideRequestListenersFactory(xs6Var, xs6Var2, xs6Var3);
    }

    public static List<Request.Listener> provideRequestListeners(CameraGraph.Config config, Listener3A listener3A, FrameDistributor frameDistributor) {
        List<Request.Listener> listProvideRequestListeners = SharedCameraGraphModules.Companion.provideRequestListeners(config, listener3A, frameDistributor);
        te6.b(listProvideRequestListeners);
        return listProvideRequestListeners;
    }

    @Override // defpackage.ws6
    public List<Request.Listener> get() {
        return provideRequestListeners(this.graphConfigProvider.get(), this.listener3AProvider.get(), this.frameDistributorProvider.get());
    }
}
