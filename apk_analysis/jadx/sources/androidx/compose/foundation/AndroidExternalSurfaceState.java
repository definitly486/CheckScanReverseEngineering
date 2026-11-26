package androidx.compose.foundation;

import android.graphics.Rect;
import android.view.SurfaceHolder;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
final class AndroidExternalSurfaceState extends BaseAndroidExternalSurfaceState implements SurfaceHolder.Callback {
    private int lastHeight;
    private int lastWidth;

    public AndroidExternalSurfaceState(y22 y22Var) {
        super(y22Var);
        this.lastWidth = -1;
        this.lastHeight = -1;
    }

    public final int getLastHeight() {
        return this.lastHeight;
    }

    public final int getLastWidth() {
        return this.lastWidth;
    }

    public final void setLastHeight(int i) {
        this.lastHeight = i;
    }

    public final void setLastWidth(int i) {
        this.lastWidth = i;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (this.lastWidth == i2 && this.lastHeight == i3) {
            return;
        }
        this.lastWidth = i2;
        this.lastHeight = i3;
        dispatchSurfaceChanged(surfaceHolder.getSurface(), i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        this.lastWidth = surfaceFrame.width();
        this.lastHeight = surfaceFrame.height();
        dispatchSurfaceCreated(surfaceHolder.getSurface(), this.lastWidth, this.lastHeight);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        dispatchSurfaceDestroyed(surfaceHolder.getSurface());
    }
}
