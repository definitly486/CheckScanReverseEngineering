package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.core.impl.SurfaceConfig;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class MaxPreviewSize {
    private final ExtraCroppingQuirk extraCroppingQuirk;

    public /* synthetic */ MaxPreviewSize(ExtraCroppingQuirk extraCroppingQuirk, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? (ExtraCroppingQuirk) DeviceQuirks.INSTANCE.get(ExtraCroppingQuirk.class) : extraCroppingQuirk);
    }

    public final Size getMaxPreviewResolution(Size size) {
        Size verifiedResolution;
        size.getClass();
        ExtraCroppingQuirk extraCroppingQuirk = this.extraCroppingQuirk;
        if (extraCroppingQuirk == null || (verifiedResolution = extraCroppingQuirk.getVerifiedResolution(SurfaceConfig.ConfigType.PRIV)) == null) {
            return size;
        }
        return verifiedResolution.getHeight() * verifiedResolution.getWidth() > size.getHeight() * size.getWidth() ? verifiedResolution : size;
    }

    public MaxPreviewSize(ExtraCroppingQuirk extraCroppingQuirk) {
        this.extraCroppingQuirk = extraCroppingQuirk;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MaxPreviewSize() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
