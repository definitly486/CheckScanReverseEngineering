package androidx.camera.camera2.compat.workaround;

import android.graphics.PointF;
import androidx.camera.camera2.compat.quirk.AfRegionFlipHorizontallyQuirk;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.core.MeteringPoint;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public interface MeteringRegionCorrection {
    PointF getCorrectedPoint(MeteringPoint meteringPoint, int i);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final MeteringRegionCorrection provideMeteringRegionCorrection(CameraQuirks cameraQuirks) {
                cameraQuirks.getClass();
                return cameraQuirks.getQuirks().contains(AfRegionFlipHorizontallyQuirk.class) ? MeteringRegionQuirkCorrection.INSTANCE : NoOpMeteringRegionCorrection.INSTANCE;
            }

            private Companion() {
            }
        }
    }
}
