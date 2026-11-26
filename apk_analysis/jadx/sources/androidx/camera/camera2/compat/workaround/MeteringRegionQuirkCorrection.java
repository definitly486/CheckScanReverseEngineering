package androidx.camera.camera2.compat.workaround;

import android.graphics.PointF;
import androidx.camera.core.MeteringPoint;

/* JADX INFO: loaded from: classes.dex */
public final class MeteringRegionQuirkCorrection implements MeteringRegionCorrection {
    public static final MeteringRegionQuirkCorrection INSTANCE = new MeteringRegionQuirkCorrection();

    private MeteringRegionQuirkCorrection() {
    }

    @Override // androidx.camera.camera2.compat.workaround.MeteringRegionCorrection
    public PointF getCorrectedPoint(MeteringPoint meteringPoint, int i) {
        meteringPoint.getClass();
        return i == 1 ? new PointF(1.0f - meteringPoint.getX(), meteringPoint.getY()) : new PointF(meteringPoint.getX(), meteringPoint.getY());
    }
}
