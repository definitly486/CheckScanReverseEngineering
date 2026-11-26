package androidx.camera.camera2.pipe;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraColorSpaceProfiles extends UnsafeWrapper {
    /* JADX INFO: renamed from: getSupportedColorSpaces-hNQ4ISI, reason: not valid java name */
    Set<CameraColorSpace> mo224getSupportedColorSpaceshNQ4ISI(int i);

    /* JADX INFO: renamed from: getSupportedColorSpacesForDynamicRange-sNWL0t8, reason: not valid java name */
    Set<CameraColorSpace> mo225getSupportedColorSpacesForDynamicRangesNWL0t8(int i, long j);

    /* JADX INFO: renamed from: getSupportedDynamicRangeProfiles-6Yu6yh8, reason: not valid java name */
    Set<OutputStream.DynamicRangeProfile> mo226getSupportedDynamicRangeProfiles6Yu6yh8(String str, int i);

    /* JADX INFO: renamed from: getSupportedImageFormatsForColorSpace-jRxjvBE, reason: not valid java name */
    Set<StreamFormat> mo227getSupportedImageFormatsForColorSpacejRxjvBE(String str);
}
