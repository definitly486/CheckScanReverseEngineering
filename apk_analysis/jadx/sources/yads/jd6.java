package yads;

import android.view.Surface;

/* JADX INFO: loaded from: classes3.dex */
public abstract class jd6 {
    public static void a(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == 0.0f ? 0 : 1);
        } catch (IllegalStateException e) {
            sv3.b("VideoFrameReleaseHelper", sv3.a("Failed to call Surface.setFrameRate", e));
        }
    }
}
