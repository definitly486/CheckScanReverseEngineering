package androidx.camera.viewfinder.core;

import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public interface ViewfinderSurfaceSession extends AutoCloseable {
    ViewfinderSurfaceRequest getRequest();

    Surface getSurface();
}
