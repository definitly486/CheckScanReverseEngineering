package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import defpackage.mb4;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class AudioRestrictionControllerImpl_Factory implements xs6 {
    private final xs6<mb4> cameraPipeJobProvider;
    private final xs6<CameraPipeLifetime> cameraPipeLifetimeProvider;
    private final xs6<Threads> threadsProvider;

    private AudioRestrictionControllerImpl_Factory(xs6<Threads> xs6Var, xs6<CameraPipeLifetime> xs6Var2, xs6<mb4> xs6Var3) {
        this.threadsProvider = xs6Var;
        this.cameraPipeLifetimeProvider = xs6Var2;
        this.cameraPipeJobProvider = xs6Var3;
    }

    public static AudioRestrictionControllerImpl_Factory create(xs6<Threads> xs6Var, xs6<CameraPipeLifetime> xs6Var2, xs6<mb4> xs6Var3) {
        return new AudioRestrictionControllerImpl_Factory(xs6Var, xs6Var2, xs6Var3);
    }

    public static AudioRestrictionControllerImpl newInstance(Threads threads, CameraPipeLifetime cameraPipeLifetime, mb4 mb4Var) {
        return new AudioRestrictionControllerImpl(threads, cameraPipeLifetime, mb4Var);
    }

    @Override // defpackage.ws6
    public AudioRestrictionControllerImpl get() {
        return newInstance(this.threadsProvider.get(), this.cameraPipeLifetimeProvider.get(), this.cameraPipeJobProvider.get());
    }
}
