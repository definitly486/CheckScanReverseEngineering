package androidx.camera.video;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.camera.video.internal.BackupHdrProfileEncoderProfilesProvider;
import androidx.camera.video.internal.QualityExploredEncoderProfilesProvider;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityAddedEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityResolutionModifiedEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityValidatedEncoderProfilesProvider;
import defpackage.c9;
import defpackage.jh;
import defpackage.u96;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class EncoderProfilesProviderResolver {
    public static final EncoderProfilesProviderResolver INSTANCE = new EncoderProfilesProviderResolver();
    private static final String TAG = "EncoderProfilesResolver";

    private EncoderProfilesProviderResolver() {
    }

    private final boolean isHlg10Supported(CameraInfoInternal cameraInfoInternal) {
        Set<DynamicRange> supportedDynamicRanges = cameraInfoInternal.getSupportedDynamicRanges();
        supportedDynamicRanges.getClass();
        Set<DynamicRange> set = supportedDynamicRanges;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (DynamicRange dynamicRange : set) {
            if (dynamicRange.getEncoding() == 3 && dynamicRange.getBitDepth() == 10) {
                return true;
            }
        }
        return false;
    }

    public final EncoderProfilesProvider resolve(CameraInfoInternal cameraInfoInternal, int i, int i2, VideoEncoderInfo.Finder finder) {
        VideoEncoderInfo.Finder finder2;
        cameraInfoInternal.getClass();
        finder.getClass();
        if (i != 0 && i != 1) {
            c9.f(jh.b(i, "Not a supported video capabilities source: "));
            return null;
        }
        EncoderProfilesProvider encoderProfilesProvider = cameraInfoInternal.getEncoderProfilesProvider();
        encoderProfilesProvider.getClass();
        if (i2 == 2) {
            if (cameraInfoInternal.isHighSpeedSupported()) {
                return encoderProfilesProvider;
            }
            EncoderProfilesProvider encoderProfilesProvider2 = EncoderProfilesProvider.EMPTY;
            encoderProfilesProvider2.getClass();
            return encoderProfilesProvider2;
        }
        if (!CapabilitiesByQuality.containsSupportedQuality(encoderProfilesProvider, i2)) {
            Logger.w(TAG, "Camera EncoderProfilesProvider doesn't contain any supported Quality.");
            encoderProfilesProvider = new DefaultEncoderProfilesProvider(cameraInfoInternal, u96.i(Quality.FHD, Quality.HD, Quality.SD), finder);
        }
        Quirks all = DeviceQuirks.getAll();
        all.getClass();
        EncoderProfilesProvider qualityAddedEncoderProfilesProvider = new QualityAddedEncoderProfilesProvider(encoderProfilesProvider, all, cameraInfoInternal, finder);
        if (i == 1) {
            finder2 = finder;
            qualityAddedEncoderProfilesProvider = new QualityExploredEncoderProfilesProvider(qualityAddedEncoderProfilesProvider, Quality.getSortedQualities(), Collections.singleton(DynamicRange.SDR), cameraInfoInternal.getSupportedResolutions(34), finder2);
        } else {
            finder2 = finder;
        }
        EncoderProfilesProvider qualityResolutionModifiedEncoderProfilesProvider = new QualityResolutionModifiedEncoderProfilesProvider(qualityAddedEncoderProfilesProvider, all);
        if (isHlg10Supported(cameraInfoInternal)) {
            qualityResolutionModifiedEncoderProfilesProvider = new BackupHdrProfileEncoderProfilesProvider(qualityResolutionModifiedEncoderProfilesProvider, finder2);
        }
        return new QualityValidatedEncoderProfilesProvider(qualityResolutionModifiedEncoderProfilesProvider, cameraInfoInternal, all);
    }
}
