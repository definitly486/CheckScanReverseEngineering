package androidx.camera.viewfinder.core.impl;

import android.view.Surface;
import androidx.camera.viewfinder.core.ViewfinderSurfaceRequest;
import androidx.camera.viewfinder.core.ViewfinderSurfaceSession;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ht;
import defpackage.j59;
import defpackage.jy8;
import defpackage.kt;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class ViewfinderSurfaceSessionImpl implements ViewfinderSurfaceSession {
    private final CloseGuardHelper closeGuard;
    private final ht closed;
    private final ll3<j59> onClose;
    private final ViewfinderSurfaceRequest request;
    private final Surface surface;

    public ViewfinderSurfaceSessionImpl(Surface surface, ViewfinderSurfaceRequest viewfinderSurfaceRequest, ll3<j59> ll3Var) {
        surface.getClass();
        viewfinderSurfaceRequest.getClass();
        ll3Var.getClass();
        this.surface = surface;
        this.request = viewfinderSurfaceRequest;
        this.onClose = ll3Var;
        this.closed = kt.a(false);
        CloseGuardHelper closeGuardHelperCreate = CloseGuardHelper.Companion.create();
        closeGuardHelperCreate.open(TJAdUnitConstants.String.CLOSE);
        this.closeGuard = closeGuardHelperCreate;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.closeGuard.close();
        ht htVar = this.closed;
        htVar.getClass();
        int andSet = ht.b.getAndSet(htVar, 1);
        jy8.a aVar = jy8.a.a;
        if (andSet == 1) {
            return;
        }
        this.onClose.invoke();
    }

    public final void finalize() {
        this.closeGuard.warnIfOpen();
        close();
    }

    @Override // androidx.camera.viewfinder.core.ViewfinderSurfaceSession
    public ViewfinderSurfaceRequest getRequest() {
        return this.request;
    }

    @Override // androidx.camera.viewfinder.core.ViewfinderSurfaceSession
    public Surface getSurface() {
        return this.surface;
    }
}
