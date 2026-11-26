package androidx.camera.camera2.pipe;

import defpackage.ne4;
import defpackage.ox2;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class UnsupportedCameraColorSpaceProfiles implements CameraColorSpaceProfiles {
    public static final UnsupportedCameraColorSpaceProfiles INSTANCE = new UnsupportedCameraColorSpaceProfiles();

    private UnsupportedCameraColorSpaceProfiles() {
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedColorSpaces-hNQ4ISI */
    public Set<CameraColorSpace> mo224getSupportedColorSpaceshNQ4ISI(int i) {
        return ox2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedColorSpacesForDynamicRange-sNWL0t8 */
    public Set<CameraColorSpace> mo225getSupportedColorSpacesForDynamicRangesNWL0t8(int i, long j) {
        return ox2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedDynamicRangeProfiles-6Yu6yh8 */
    public Set<OutputStream.DynamicRangeProfile> mo226getSupportedDynamicRangeProfiles6Yu6yh8(String str, int i) {
        str.getClass();
        return ox2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedImageFormatsForColorSpace-jRxjvBE */
    public Set<StreamFormat> mo227getSupportedImageFormatsForColorSpacejRxjvBE(String str) {
        str.getClass();
        return ox2.b;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        ne4Var.getClass();
        return null;
    }
}
