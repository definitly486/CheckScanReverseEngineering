package yads;

import android.graphics.SurfaceTexture;
import android.view.Surface;

/* JADX INFO: loaded from: classes6.dex */
public final class gv4 extends Surface {
    public static int e;
    public static boolean f;
    public final boolean b;
    public final fv4 c;
    public boolean d;

    public gv4(fv4 fv4Var, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.c = fv4Var;
        this.b = z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.c) {
            try {
                if (!this.d) {
                    fv4 fv4Var = this.c;
                    fv4Var.c.getClass();
                    fv4Var.c.sendEmptyMessage(2);
                    this.d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
