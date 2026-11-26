package yads;

import android.os.Looper;
import androidx.media3.common.PlaybackException;

/* JADX INFO: loaded from: classes6.dex */
public final class vl2 implements xl2 {
    @Override // yads.xl2
    public final eo2 a(tl2 tl2Var, vz2 vz2Var) {
        if (vz2Var.p == null) {
            return null;
        }
        return new eo2(new rl2(new k46(), PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED));
    }

    @Override // yads.xl2
    public final void a(Looper looper, rw4 rw4Var) {
    }

    @Override // yads.xl2
    public final int a(vz2 vz2Var) {
        return vz2Var.p != null ? 1 : 0;
    }
}
