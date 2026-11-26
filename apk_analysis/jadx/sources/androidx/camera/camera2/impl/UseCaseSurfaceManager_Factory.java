package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseSurfaceManager_Factory implements xs6 {
    private final xs6<CameraPipe> cameraPipeProvider;
    private final xs6<InactiveSurfaceCloser> inactiveSurfaceCloserProvider;
    private final xs6<SessionConfigAdapter> sessionConfigAdapterProvider;
    private final xs6<UseCaseThreads> threadsProvider;

    private UseCaseSurfaceManager_Factory(xs6<UseCaseThreads> xs6Var, xs6<CameraPipe> xs6Var2, xs6<InactiveSurfaceCloser> xs6Var3, xs6<SessionConfigAdapter> xs6Var4) {
        this.threadsProvider = xs6Var;
        this.cameraPipeProvider = xs6Var2;
        this.inactiveSurfaceCloserProvider = xs6Var3;
        this.sessionConfigAdapterProvider = xs6Var4;
    }

    public static UseCaseSurfaceManager_Factory create(xs6<UseCaseThreads> xs6Var, xs6<CameraPipe> xs6Var2, xs6<InactiveSurfaceCloser> xs6Var3, xs6<SessionConfigAdapter> xs6Var4) {
        return new UseCaseSurfaceManager_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static UseCaseSurfaceManager newInstance(UseCaseThreads useCaseThreads, CameraPipe cameraPipe, InactiveSurfaceCloser inactiveSurfaceCloser, SessionConfigAdapter sessionConfigAdapter) {
        return new UseCaseSurfaceManager(useCaseThreads, cameraPipe, inactiveSurfaceCloser, sessionConfigAdapter);
    }

    @Override // defpackage.ws6
    public UseCaseSurfaceManager get() {
        return newInstance(this.threadsProvider.get(), this.cameraPipeProvider.get(), this.inactiveSurfaceCloserProvider.get(), this.sessionConfigAdapterProvider.get());
    }
}
