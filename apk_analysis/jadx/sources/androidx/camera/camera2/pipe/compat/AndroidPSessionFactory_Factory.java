package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidPSessionFactory_Factory implements xs6 {
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<StreamGraphImpl> streamGraphProvider;
    private final xs6<Threads> threadsProvider;

    private AndroidPSessionFactory_Factory(xs6<Threads> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<StreamGraphImpl> xs6Var3) {
        this.threadsProvider = xs6Var;
        this.graphConfigProvider = xs6Var2;
        this.streamGraphProvider = xs6Var3;
    }

    public static AndroidPSessionFactory_Factory create(xs6<Threads> xs6Var, xs6<CameraGraph.Config> xs6Var2, xs6<StreamGraphImpl> xs6Var3) {
        return new AndroidPSessionFactory_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static AndroidPSessionFactory newInstance(Threads threads, CameraGraph.Config config, StreamGraphImpl streamGraphImpl) {
        return new AndroidPSessionFactory(threads, config, streamGraphImpl);
    }

    @Override // defpackage.ws6
    public AndroidPSessionFactory get() {
        return newInstance(this.threadsProvider.get(), this.graphConfigProvider.get(), this.streamGraphProvider.get());
    }
}
