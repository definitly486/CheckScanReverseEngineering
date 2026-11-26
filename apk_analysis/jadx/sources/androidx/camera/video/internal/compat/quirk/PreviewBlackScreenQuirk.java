package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import defpackage.jh2;
import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewBlackScreenQuirk implements SurfaceProcessingQuirk {
    public static final Companion Companion = new Companion(null);
    private static final boolean isMotorolaEdge20Fusion;
    private static final boolean isSamsungSmT580;

    static {
        String str = Build.BRAND;
        isMotorolaEdge20Fusion = ra8.v(str, "motorola", true) && ra8.v(Build.MODEL, "motorola edge 20 fusion", true);
        isSamsungSmT580 = ra8.v(str, "samsung", true) && ra8.v(Build.MODEL, "sm-t580", true);
    }

    public static final boolean load() {
        return Companion.load();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean load() {
            return PreviewBlackScreenQuirk.isMotorolaEdge20Fusion || PreviewBlackScreenQuirk.isSamsungSmT580;
        }

        private Companion() {
        }
    }
}
