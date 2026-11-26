package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.camera.video.VideoOutput;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jd9 implements VideoOutput {
    @Override // androidx.camera.video.VideoOutput
    public final void onSurfaceRequested(SurfaceRequest surfaceRequest) {
        surfaceRequest.willNotProvideSurface();
    }
}
