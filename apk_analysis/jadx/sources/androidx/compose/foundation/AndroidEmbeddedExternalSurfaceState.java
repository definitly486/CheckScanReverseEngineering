package androidx.compose.foundation;

import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
final class AndroidEmbeddedExternalSurfaceState extends BaseAndroidExternalSurfaceState implements TextureView.SurfaceTextureListener {
    private final Matrix matrix;
    private long surfaceSize;
    private Surface surfaceTextureSurface;

    public AndroidEmbeddedExternalSurfaceState(y22 y22Var) {
        super(y22Var);
        this.surfaceSize = IntSize.Companion.m9218getZeroYbymL2g();
        this.matrix = new Matrix();
    }

    public final Matrix getMatrix() {
        return this.matrix;
    }

    /* JADX INFO: renamed from: getSurfaceSize-YbymL2g, reason: not valid java name */
    public final long m1271getSurfaceSizeYbymL2g() {
        return this.surfaceSize;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (!IntSize.m9211equalsimpl0(this.surfaceSize, IntSize.Companion.m9218getZeroYbymL2g())) {
            long j = this.surfaceSize;
            int i3 = (int) (j >> 32);
            i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            surfaceTexture.setDefaultBufferSize(i3, i2);
            i = i3;
        }
        Surface surface = new Surface(surfaceTexture);
        this.surfaceTextureSurface = surface;
        dispatchSurfaceCreated(surface, i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Surface surface = this.surfaceTextureSurface;
        surface.getClass();
        dispatchSurfaceDestroyed(surface);
        this.surfaceTextureSurface = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        if (!IntSize.m9211equalsimpl0(this.surfaceSize, IntSize.Companion.m9218getZeroYbymL2g())) {
            long j = this.surfaceSize;
            int i3 = (int) (j >> 32);
            i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            surfaceTexture.setDefaultBufferSize(i3, i2);
            i = i3;
        }
        Surface surface = this.surfaceTextureSurface;
        surface.getClass();
        dispatchSurfaceChanged(surface, i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    /* JADX INFO: renamed from: setSurfaceSize-ozmzZPI, reason: not valid java name */
    public final void m1272setSurfaceSizeozmzZPI(long j) {
        this.surfaceSize = j;
    }
}
