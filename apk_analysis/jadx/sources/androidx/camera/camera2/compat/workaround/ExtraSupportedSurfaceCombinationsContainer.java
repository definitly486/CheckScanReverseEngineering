package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk;
import androidx.camera.core.impl.SurfaceCombination;
import defpackage.kx2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ExtraSupportedSurfaceCombinationsContainer {
    private final ExtraSupportedSurfaceCombinationsQuirk quirk = (ExtraSupportedSurfaceCombinationsQuirk) DeviceQuirks.INSTANCE.get(ExtraSupportedSurfaceCombinationsQuirk.class);

    public final List<SurfaceCombination> get(String str) {
        List<SurfaceCombination> extraSupportedSurfaceCombinations;
        str.getClass();
        ExtraSupportedSurfaceCombinationsQuirk extraSupportedSurfaceCombinationsQuirk = this.quirk;
        return (extraSupportedSurfaceCombinationsQuirk == null || (extraSupportedSurfaceCombinations = extraSupportedSurfaceCombinationsQuirk.getExtraSupportedSurfaceCombinations(str)) == null) ? kx2.b : extraSupportedSurfaceCombinations;
    }
}
