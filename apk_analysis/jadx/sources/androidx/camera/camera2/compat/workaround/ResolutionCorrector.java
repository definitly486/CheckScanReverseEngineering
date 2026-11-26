package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.core.impl.SurfaceConfig;
import defpackage.aa4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ResolutionCorrector {
    private final ExtraCroppingQuirk extraCroppingQuirk = (ExtraCroppingQuirk) DeviceQuirks.INSTANCE.get(ExtraCroppingQuirk.class);

    public final List<Size> insertOrPrioritize(SurfaceConfig.ConfigType configType, List<Size> list) {
        Size verifiedResolution;
        configType.getClass();
        list.getClass();
        ExtraCroppingQuirk extraCroppingQuirk = this.extraCroppingQuirk;
        if (extraCroppingQuirk == null || (verifiedResolution = extraCroppingQuirk.getVerifiedResolution(configType)) == null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(verifiedResolution);
        for (Size size : list) {
            if (!aa4.e(size, verifiedResolution)) {
                arrayList.add(size);
            }
        }
        return arrayList;
    }
}
