package androidx.camera.viewfinder.core.impl.quirk;

import defpackage.ar4;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceQuirksLoader {
    public static final DeviceQuirksLoader INSTANCE = new DeviceQuirksLoader();

    private DeviceQuirksLoader() {
    }

    public static final List<Quirk> loadQuirks() {
        ar4 ar4VarE = u96.e();
        if (SurfaceViewStretchedQuirk.load()) {
            ar4VarE.add(SurfaceViewStretchedQuirk.INSTANCE);
        }
        if (SurfaceViewNotCroppedByParentQuirk.load()) {
            ar4VarE.add(SurfaceViewNotCroppedByParentQuirk.INSTANCE);
        }
        return u96.d(ar4VarE);
    }
}
