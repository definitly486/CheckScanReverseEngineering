package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidMSessionFactory_Factory implements xs6 {
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<StreamGraphImpl> streamGraphProvider;
    private final xs6<Threads> threadsProvider;

    private AndroidMSessionFactory_Factory(xs6<Threads> xs6Var, xs6<StreamGraphImpl> xs6Var2, xs6<CameraGraph.Config> xs6Var3) {
        this.threadsProvider = xs6Var;
        this.streamGraphProvider = xs6Var2;
        this.graphConfigProvider = xs6Var3;
    }

    public static AndroidMSessionFactory_Factory create(xs6<Threads> xs6Var, xs6<StreamGraphImpl> xs6Var2, xs6<CameraGraph.Config> xs6Var3) {
        return new AndroidMSessionFactory_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static AndroidMSessionFactory newInstance(Threads threads, StreamGraphImpl streamGraphImpl, CameraGraph.Config config) {
        return new AndroidMSessionFactory(threads, streamGraphImpl, config);
    }

    @Override // defpackage.ws6
    public AndroidMSessionFactory get() {
        return newInstance(this.threadsProvider.get(), this.streamGraphProvider.get(), this.graphConfigProvider.get());
    }
}
