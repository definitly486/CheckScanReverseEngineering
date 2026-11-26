package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.DynamicRanges;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.video.internal.DynamicRangeMatchedEncoderProfilesProvider;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ox2;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class EncoderProfilesResolver {
    public static final Companion Companion = new Companion(null);
    public static final EncoderProfilesResolver EMPTY;
    private final Map<DynamicRange, CapabilitiesByQuality> fullySpecifiedMap;
    private final EncoderProfilesProvider hostProfilesProvider;
    private final Map<DynamicRange, CapabilitiesByQuality> nonFullySpecifiedMap;
    private final int qualitySource;
    private final Set<DynamicRange> supportedDynamicRanges;

    static {
        EncoderProfilesProvider encoderProfilesProvider = EncoderProfilesProvider.EMPTY;
        encoderProfilesProvider.getClass();
        EMPTY = new EncoderProfilesResolver(encoderProfilesProvider, 1, ox2.b);
    }

    public EncoderProfilesResolver(EncoderProfilesProvider encoderProfilesProvider, int i, Set<DynamicRange> set) {
        encoderProfilesProvider.getClass();
        set.getClass();
        this.hostProfilesProvider = encoderProfilesProvider;
        this.qualitySource = i;
        this.fullySpecifiedMap = new LinkedHashMap();
        this.nonFullySpecifiedMap = new LinkedHashMap();
        for (DynamicRange dynamicRange : set) {
            CapabilitiesByQuality capabilitiesByQuality = new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.hostProfilesProvider, dynamicRange), this.qualitySource);
            List<Quality> supportedQualities = capabilitiesByQuality.getSupportedQualities();
            supportedQualities.getClass();
            if (!supportedQualities.isEmpty()) {
                this.fullySpecifiedMap.put(dynamicRange, capabilitiesByQuality);
            }
        }
        this.supportedDynamicRanges = this.fullySpecifiedMap.keySet();
    }

    private final CapabilitiesByQuality getCapabilities(DynamicRange dynamicRange) {
        if (dynamicRange.isFullySpecified()) {
            return this.fullySpecifiedMap.get(dynamicRange);
        }
        Map<DynamicRange, CapabilitiesByQuality> map = this.nonFullySpecifiedMap;
        CapabilitiesByQuality capabilitiesByQuality = map.get(dynamicRange);
        if (capabilitiesByQuality == null) {
            capabilitiesByQuality = DynamicRanges.canResolve(dynamicRange, this.fullySpecifiedMap.keySet()) ? new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.hostProfilesProvider, dynamicRange), this.qualitySource) : null;
            map.put(dynamicRange, capabilitiesByQuality);
        }
        return capabilitiesByQuality;
    }

    public final VideoValidatedEncoderProfilesProxy findNearestHigherSupportedEncoderProfilesFor(Size size, DynamicRange dynamicRange) {
        size.getClass();
        dynamicRange.getClass();
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null) {
            return capabilities.findNearestHigherSupportedEncoderProfilesFor(size);
        }
        return null;
    }

    public final Quality findNearestHigherSupportedQualityFor(Size size, DynamicRange dynamicRange) {
        Quality qualityFindNearestHigherSupportedQualityFor;
        size.getClass();
        dynamicRange.getClass();
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null && (qualityFindNearestHigherSupportedQualityFor = capabilities.findNearestHigherSupportedQualityFor(size)) != null) {
            return qualityFindNearestHigherSupportedQualityFor;
        }
        Quality quality = Quality.NONE;
        quality.getClass();
        return quality;
    }

    public final VideoValidatedEncoderProfilesProxy getProfiles(Quality quality, DynamicRange dynamicRange) {
        quality.getClass();
        dynamicRange.getClass();
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null) {
            return capabilities.getProfiles(quality);
        }
        return null;
    }

    public final Size getResolution(Quality quality, DynamicRange dynamicRange) {
        quality.getClass();
        dynamicRange.getClass();
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null) {
            return capabilities.getResolution(quality);
        }
        return null;
    }

    public final Set<DynamicRange> getSupportedDynamicRanges() {
        return this.supportedDynamicRanges;
    }

    public final List<Quality> getSupportedQualities(DynamicRange dynamicRange) {
        List<Quality> supportedQualities;
        dynamicRange.getClass();
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        return (capabilities == null || (supportedQualities = capabilities.getSupportedQualities()) == null) ? kx2.b : supportedQualities;
    }

    public final boolean isQualitySupported(Quality quality, DynamicRange dynamicRange) {
        quality.getClass();
        dynamicRange.getClass();
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null) {
            return capabilities.isQualitySupported(quality);
        }
        return false;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
