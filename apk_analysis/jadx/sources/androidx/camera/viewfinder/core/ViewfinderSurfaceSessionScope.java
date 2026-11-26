package androidx.camera.viewfinder.core;

import android.view.Surface;
import defpackage.o22;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public interface ViewfinderSurfaceSessionScope extends y22 {
    @Override // defpackage.y22
    /* synthetic */ o22 getCoroutineContext();

    ViewfinderSurfaceRequest getRequest();

    Surface getSurface();
}
