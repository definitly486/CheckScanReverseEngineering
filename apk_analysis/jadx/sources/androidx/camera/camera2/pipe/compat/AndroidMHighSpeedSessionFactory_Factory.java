package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidMHighSpeedSessionFactory_Factory implements xs6 {
    private final xs6<StreamGraphImpl> streamGraphProvider;
    private final xs6<Threads> threadsProvider;

    private AndroidMHighSpeedSessionFactory_Factory(xs6<StreamGraphImpl> xs6Var, xs6<Threads> xs6Var2) {
        this.streamGraphProvider = xs6Var;
        this.threadsProvider = xs6Var2;
    }

    public static AndroidMHighSpeedSessionFactory_Factory create(xs6<StreamGraphImpl> xs6Var, xs6<Threads> xs6Var2) {
        return new AndroidMHighSpeedSessionFactory_Factory(xs6Var, xs6Var2);
    }

    public static AndroidMHighSpeedSessionFactory newInstance(StreamGraphImpl streamGraphImpl, Threads threads) {
        return new AndroidMHighSpeedSessionFactory(streamGraphImpl, threads);
    }

    @Override // defpackage.ws6
    public AndroidMHighSpeedSessionFactory get() {
        return newInstance(this.streamGraphProvider.get(), this.threadsProvider.get());
    }
}
