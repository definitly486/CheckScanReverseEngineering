package androidx.camera.camera2.adapter;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.workaround.ExtraSupportedSurfaceCombinationsContainer;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.compat.workaround.ResolutionCorrector;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.internal.DynamicRangeResolver;
import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.camera.camera2.internal.StreamUseCaseUtil;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraMode;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.ah;
import defpackage.aq5;
import defpackage.b36;
import defpackage.bg8;
import defpackage.c9;
import defpackage.cl4;
import defpackage.ej0;
import defpackage.fg;
import defpackage.fh8;
import defpackage.g03;
import defpackage.h03;
import defpackage.jg;
import defpackage.jh2;
import defpackage.k57;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.me0;
import defpackage.mx2;
import defpackage.nm4;
import defpackage.nn1;
import defpackage.po4;
import defpackage.qg;
import defpackage.qn1;
import defpackage.rg;
import defpackage.sg;
import defpackage.tg;
import defpackage.u96;
import defpackage.w7;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class SupportedSurfaceCombination {
    public static final Companion Companion = new Companion(null);
    private final String cameraId;
    private final CameraMetadata cameraMetadata;
    private final List<SurfaceCombination> concurrentSurfaceCombinations;
    private final DisplayInfoManager displayInfoManager;
    private final DynamicRangeResolver dynamicRangeResolver;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private final ExtraSupportedSurfaceCombinationsContainer extraSupportedSurfaceCombinationsContainer;
    private final FeatureCombinationQuery featureCombinationQuery;
    private final Map<FeatureSettings, List<SurfaceCombination>> featureSettingsToSupportedCombinationsMap;
    private final int hardwareLevel;
    private final HighSpeedResolver highSpeedResolver;
    private final List<SurfaceCombination> highSpeedSurfaceCombinations;
    private boolean isBurstCaptureSupported;
    private final boolean isConcurrentCameraModeSupported;
    private boolean isManualSensorSupported;
    private boolean isPreviewStabilizationSupported;
    private boolean isRawSupported;
    private final boolean isStreamUseCaseSupported;
    private boolean isUltraHighResolutionSensorSupported;
    private final List<SurfaceCombination> previewStabilizationSurfaceCombinations;
    private final ResolutionCorrector resolutionCorrector;
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;
    private final List<SurfaceCombination> surfaceCombinations;
    private final List<SurfaceCombination> surfaceCombinations10Bit;
    private final List<SurfaceCombination> surfaceCombinationsStreamUseCase;
    private final List<SurfaceCombination> surfaceCombinationsUltraHdr;
    public SurfaceSizeDefinition surfaceSizeDefinition;
    private final List<Integer> surfaceSizeDefinitionFormats;
    private final TargetAspectRatio targetAspectRatio;
    private final List<SurfaceCombination> ultraHighSurfaceCombinations;

    public static final class BestSizesAndMaxFpsForConfigs {
        private final List<Size> bestSizes;
        private final List<Size> bestSizesForStreamUseCase;
        private final int maxFpsForAllSizes;
        private final int maxFpsForBestSizes;
        private final int maxFpsForStreamUseCase;

        public BestSizesAndMaxFpsForConfigs(List<Size> list, List<Size> list2, int i, int i2, int i3) {
            list.getClass();
            this.bestSizes = list;
            this.bestSizesForStreamUseCase = list2;
            this.maxFpsForBestSizes = i;
            this.maxFpsForStreamUseCase = i2;
            this.maxFpsForAllSizes = i3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ BestSizesAndMaxFpsForConfigs copy$default(BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs, List list, List list2, int i, int i2, int i3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                list = bestSizesAndMaxFpsForConfigs.bestSizes;
            }
            if ((i4 & 2) != 0) {
                list2 = bestSizesAndMaxFpsForConfigs.bestSizesForStreamUseCase;
            }
            if ((i4 & 4) != 0) {
                i = bestSizesAndMaxFpsForConfigs.maxFpsForBestSizes;
            }
            if ((i4 & 8) != 0) {
                i2 = bestSizesAndMaxFpsForConfigs.maxFpsForStreamUseCase;
            }
            if ((i4 & 16) != 0) {
                i3 = bestSizesAndMaxFpsForConfigs.maxFpsForAllSizes;
            }
            int i5 = i3;
            int i6 = i;
            return bestSizesAndMaxFpsForConfigs.copy(list, list2, i6, i2, i5);
        }

        public final List<Size> component1() {
            return this.bestSizes;
        }

        public final List<Size> component2() {
            return this.bestSizesForStreamUseCase;
        }

        public final int component3() {
            return this.maxFpsForBestSizes;
        }

        public final int component4() {
            return this.maxFpsForStreamUseCase;
        }

        public final int component5() {
            return this.maxFpsForAllSizes;
        }

        public final BestSizesAndMaxFpsForConfigs copy(List<Size> list, List<Size> list2, int i, int i2, int i3) {
            list.getClass();
            return new BestSizesAndMaxFpsForConfigs(list, list2, i, i2, i3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BestSizesAndMaxFpsForConfigs)) {
                return false;
            }
            BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs = (BestSizesAndMaxFpsForConfigs) obj;
            return aa4.e(this.bestSizes, bestSizesAndMaxFpsForConfigs.bestSizes) && aa4.e(this.bestSizesForStreamUseCase, bestSizesAndMaxFpsForConfigs.bestSizesForStreamUseCase) && this.maxFpsForBestSizes == bestSizesAndMaxFpsForConfigs.maxFpsForBestSizes && this.maxFpsForStreamUseCase == bestSizesAndMaxFpsForConfigs.maxFpsForStreamUseCase && this.maxFpsForAllSizes == bestSizesAndMaxFpsForConfigs.maxFpsForAllSizes;
        }

        public final List<Size> getBestSizes() {
            return this.bestSizes;
        }

        public final List<Size> getBestSizesForStreamUseCase() {
            return this.bestSizesForStreamUseCase;
        }

        public final int getMaxFpsForAllSizes() {
            return this.maxFpsForAllSizes;
        }

        public final int getMaxFpsForBestSizes() {
            return this.maxFpsForBestSizes;
        }

        public final int getMaxFpsForStreamUseCase() {
            return this.maxFpsForStreamUseCase;
        }

        public int hashCode() {
            int iHashCode = this.bestSizes.hashCode() * 31;
            List<Size> list = this.bestSizesForStreamUseCase;
            return Integer.hashCode(this.maxFpsForAllSizes) + ej0.b(this.maxFpsForStreamUseCase, ej0.b(this.maxFpsForBestSizes, (iHashCode + (list == null ? 0 : list.hashCode())) * 31, 31), 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BestSizesAndMaxFpsForConfigs(bestSizes=");
            sb.append(this.bestSizes);
            sb.append(", bestSizesForStreamUseCase=");
            sb.append(this.bestSizesForStreamUseCase);
            sb.append(", maxFpsForBestSizes=");
            sb.append(this.maxFpsForBestSizes);
            sb.append(", maxFpsForStreamUseCase=");
            sb.append(this.maxFpsForStreamUseCase);
            sb.append(", maxFpsForAllSizes=");
            return rg.h(sb, this.maxFpsForAllSizes, ')');
        }
    }

    public enum CheckingMethod {
        WITHOUT_FEATURE_COMBO,
        WITH_FEATURE_COMBO,
        WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<CheckingMethod> getEntries() {
            return $ENTRIES;
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CheckingMethod.values().length];
            try {
                iArr[CheckingMethod.WITHOUT_FEATURE_COMBO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CheckingMethod.WITH_FEATURE_COMBO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CheckingMethod.WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SupportedSurfaceCombination(Context context, CameraMetadata cameraMetadata, EncoderProfilesProvider encoderProfilesProvider, FeatureCombinationQuery featureCombinationQuery) {
        context.getClass();
        cameraMetadata.getClass();
        encoderProfilesProvider.getClass();
        featureCombinationQuery.getClass();
        this.cameraMetadata = cameraMetadata;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.featureCombinationQuery = featureCombinationQuery;
        this.cameraId = cameraMetadata.mo370getCameraDz_R5H8();
        CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        key.getClass();
        Integer num = (Integer) cameraMetadata.get(key);
        this.hardwareLevel = num != null ? num.intValue() : 2;
        this.concurrentSurfaceCombinations = new ArrayList();
        this.surfaceCombinations = new ArrayList();
        this.surfaceCombinationsStreamUseCase = new ArrayList();
        this.ultraHighSurfaceCombinations = new ArrayList();
        this.previewStabilizationSurfaceCombinations = new ArrayList();
        this.highSpeedSurfaceCombinations = new ArrayList();
        this.featureSettingsToSupportedCombinationsMap = new LinkedHashMap();
        this.surfaceCombinations10Bit = new ArrayList();
        this.surfaceCombinationsUltraHdr = new ArrayList();
        this.isPreviewStabilizationSupported = CameraMetadata.Companion.getSupportsPreviewStabilization(cameraMetadata);
        this.surfaceSizeDefinitionFormats = new ArrayList();
        this.streamConfigurationMapCompat = getStreamConfigurationMapCompat();
        this.extraSupportedSurfaceCombinationsContainer = new ExtraSupportedSurfaceCombinationsContainer();
        this.displayInfoManager = DisplayInfoManager.Companion.getInstance(context);
        this.resolutionCorrector = new ResolutionCorrector();
        this.targetAspectRatio = new TargetAspectRatio();
        DynamicRangeResolver dynamicRangeResolver = new DynamicRangeResolver(cameraMetadata);
        this.dynamicRangeResolver = dynamicRangeResolver;
        this.highSpeedResolver = new HighSpeedResolver(cameraMetadata);
        checkCapabilities();
        generateSupportedCombinationList();
        if (this.isUltraHighResolutionSensorSupported) {
            generateUltraHighResolutionSupportedCombinationList();
        }
        boolean zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.hardware.camera.concurrent");
        this.isConcurrentCameraModeSupported = zHasSystemFeature;
        if (zHasSystemFeature) {
            generateConcurrentSupportedCombinationList();
        }
        if (dynamicRangeResolver.is10BitDynamicRangeSupported()) {
            generate10BitSupportedCombinationList();
        }
        if (this.isPreviewStabilizationSupported) {
            generatePreviewStabilizationSupportedCombinationList();
        }
        boolean zIsStreamUseCaseSupported = StreamUseCaseUtil.INSTANCE.isStreamUseCaseSupported(cameraMetadata);
        this.isStreamUseCaseSupported = zIsStreamUseCaseSupported;
        if (zIsStreamUseCaseSupported) {
            generateStreamUseCaseSupportedCombinationList();
        }
        generateSurfaceSizeDefinition();
    }

    private final void checkCapabilities() {
        CameraMetadata cameraMetadata = this.cameraMetadata;
        CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key.getClass();
        int[] iArr = (int[]) cameraMetadata.get(key);
        if (iArr != null) {
            this.isRawSupported = yr.C(iArr, 3);
            this.isBurstCaptureSupported = yr.C(iArr, 6);
            this.isUltraHighResolutionSensorSupported = yr.C(iArr, 16);
            this.isManualSensorSupported = yr.C(iArr, 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean checkSupported$default(SupportedSurfaceCombination supportedSurfaceCombination, FeatureSettings featureSettings, List list, Map map, List list2, List list3, int i, Object obj) {
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        Map map2 = map;
        int i2 = i & 8;
        kx2 kx2Var = kx2.b;
        return supportedSurfaceCombination.checkSupported(featureSettings, list, map2, i2 != 0 ? kx2Var : list2, (i & 16) != 0 ? kx2Var : list3);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0062 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0063 A[RETURN] */
    private final Range<Integer> compareIntersectingRanges(Range<Integer> range, Range<Integer> range2, Range<Integer> range3) {
        Range<Integer> rangeIntersect = range2.intersect(range);
        rangeIntersect.getClass();
        double rangeLength = getRangeLength(rangeIntersect);
        Range<Integer> rangeIntersect2 = range3.intersect(range);
        rangeIntersect2.getClass();
        double rangeLength2 = getRangeLength(rangeIntersect2);
        double rangeLength3 = rangeLength2 / ((double) getRangeLength(range3));
        double rangeLength4 = rangeLength / ((double) getRangeLength(range2));
        if (rangeLength2 > rangeLength) {
            if (rangeLength3 >= 0.5d || rangeLength3 >= rangeLength4) {
                return range3;
            }
            return range2;
        }
        if (rangeLength2 != rangeLength) {
            if (rangeLength4 >= 0.5d || rangeLength3 <= rangeLength4) {
                return range2;
            }
            return range3;
        }
        if (rangeLength3 <= rangeLength4 && (rangeLength3 != rangeLength4 || ((Number) range3.getLower()).intValue() <= ((Number) range2.getLower()).intValue())) {
            return range2;
        }
        return range3;
    }

    private final SessionConfig createFeatureComboSessionConfig(FeatureSettings featureSettings, List<SurfaceConfig> list, Map<SurfaceConfig, DynamicRange> map, List<? extends UseCaseConfig<?>> list2, List<Integer> list3) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
            Size resolution = surfaceConfig.getResolution(getUpdatedSurfaceSizeDefinitionByFormat(surfaceConfig.getImageFormat()));
            UseCaseConfig<?> useCaseConfig = list2.get(list3.get(i).intValue());
            FeatureCombinationQuery.Companion companion = FeatureCombinationQuery.Companion;
            DynamicRange dynamicRange = map.get(surfaceConfig);
            if (dynamicRange == null) {
                fg.c("Required value was null.");
                return null;
            }
            SessionConfig.Builder builderCreateSessionConfigBuilder = companion.createSessionConfigBuilder(useCaseConfig, resolution, dynamicRange);
            Range<Integer> targetFpsRange = featureSettings.getTargetFpsRange();
            Range<Integer> range = aa4.e(targetFpsRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) ? null : targetFpsRange;
            if (range == null) {
                range = FpsRangeFeature.DEFAULT_FPS_RANGE;
            }
            builderCreateSessionConfigBuilder.setExpectedFrameRateRange(range);
            if (featureSettings.getVideoStabilization() == VideoStabilization.PREVIEW) {
                builderCreateSessionConfigBuilder.setPreviewStabilization(2);
            } else if (featureSettings.getVideoStabilization() == VideoStabilization.ON) {
                builderCreateSessionConfigBuilder.setVideoStabilization(2);
            }
            validatingBuilder.add(builderCreateSessionConfigBuilder.build());
            Preconditions.checkState(validatingBuilder.isValid(), "Cannot create a combined SessionConfig for feature combo after adding " + useCaseConfig + " with " + surfaceConfig + " due to [" + validatingBuilder.getInvalidReason() + "]; surfaceConfigList = " + list + ", featureSettings = " + featureSettings + ", newUseCaseConfigs = " + list2);
            i = i2;
        }
        SessionConfig sessionConfigBuild = validatingBuilder.build();
        sessionConfigBuild.getClass();
        return sessionConfigBuild;
    }

    private final FeatureSettings createFeatureSettings(int i, boolean z, Map<UseCaseConfig<?>, DynamicRange> map, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range<Integer> range, boolean z6) {
        return validateSelf(new FeatureSettings(i, getRequiredMaxBitDepth(map), z, videoStabilization, z2, z3, z4, z5, range, z6));
    }

    public static /* synthetic */ Map filterSupportedSizes$camera_camera2$default(SupportedSurfaceCombination supportedSurfaceCombination, Map map, FeatureSettings featureSettings, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return supportedSurfaceCombination.filterSupportedSizes$camera_camera2(map, featureSettings, z);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x010f A[PHI: r14 r15 r17
      0x010f: PHI (r14v3 int) = (r14v1 int), (r14v1 int), (r14v5 int), (r14v6 int) binds: [B:34:0x00eb, B:36:0x00f1, B:42:0x00fe, B:46:0x010b] A[DONT_GENERATE, DONT_INLINE]
      0x010f: PHI (r15v2 boolean) = (r15v1 boolean), (r15v1 boolean), (r15v1 boolean), (r15v3 boolean) binds: [B:34:0x00eb, B:36:0x00f1, B:42:0x00fe, B:46:0x010b] A[DONT_GENERATE, DONT_INLINE]
      0x010f: PHI (r17v3 java.util.List<android.util.Size>) = 
      (r17v1 java.util.List<android.util.Size>)
      (r17v1 java.util.List<android.util.Size>)
      (r17v5 java.util.List<android.util.Size>)
      (r17v6 java.util.List<android.util.Size>)
     binds: [B:34:0x00eb, B:36:0x00f1, B:42:0x00fe, B:46:0x010b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x0111 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:63:0x013b  */
    private final BestSizesAndMaxFpsForConfigs findBestSizesAndFps(List<? extends List<Size>> list, List<? extends AttachedSurfaceInfo> list2, final List<? extends UseCaseConfig<?>> list3, int i, final List<Integer> list4, final FeatureSettings featureSettings, List<SurfaceConfig> list5, Map<UseCaseConfig<?>, DynamicRange> map, boolean z) {
        FeatureSettings featureSettings2;
        BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs;
        DynamicRange dynamicRange;
        DynamicRange dynamicRange2;
        Iterator<? extends List<Size>> it = list.iterator();
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        boolean z2 = false;
        boolean z3 = false;
        List<Size> list6 = null;
        List<Size> list7 = null;
        while (true) {
            if (!it.hasNext()) {
                featureSettings2 = featureSettings;
                bestSizesAndMaxFpsForConfigs = null;
                break;
            }
            List<Size> next = it.next();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            int i5 = i2;
            bestSizesAndMaxFpsForConfigs = null;
            final List<SurfaceConfig> surfaceConfigList = getSurfaceConfigList(featureSettings.getCameraMode(), list2, next, list3, list4, linkedHashMap, linkedHashMap2, featureSettings.getRequiresFeatureComboQuery());
            int currentConfigFrameRateCeiling = getCurrentConfigFrameRateCeiling(next, list3, list4, i, featureSettings.isHighSpeedOn());
            boolean zIsConfigFrameRateAcceptable = isConfigFrameRateAcceptable(i, featureSettings.getTargetFpsRange(), currentConfigFrameRateCeiling);
            final LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            int i6 = 0;
            for (Object obj : surfaceConfigList) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    u96.o();
                    throw null;
                }
                SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
                AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) linkedHashMap.get(Integer.valueOf(i6));
                if (attachedSurfaceInfo == null || (dynamicRange2 = attachedSurfaceInfo.getDynamicRange()) == null) {
                    DynamicRange dynamicRange3 = map.get(linkedHashMap2.get(Integer.valueOf(i6)));
                    if (dynamicRange3 == null) {
                        fg.c("Required value was null.");
                        return null;
                    }
                    dynamicRange = dynamicRange3;
                } else {
                    dynamicRange = dynamicRange2;
                }
                linkedHashMap3.put(surfaceConfig, dynamicRange);
                i6 = i7;
            }
            Iterator<? extends List<Size>> it2 = it;
            cl4 cl4VarA = nm4.a(po4.NONE, new ll3() { // from class: cg8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Boolean.valueOf(this.b.checkSupported(featureSettings, surfaceConfigList, linkedHashMap3, list3, list4));
                }
            });
            if (z && findBestSizesAndFps$lambda$2(cl4VarA) && (i3 == Integer.MAX_VALUE || i3 < currentConfigFrameRateCeiling)) {
                i3 = currentConfigFrameRateCeiling;
            }
            if (!z2 && findBestSizesAndFps$lambda$2(cl4VarA)) {
                if (i4 == Integer.MAX_VALUE || i4 < currentConfigFrameRateCeiling) {
                    i4 = currentConfigFrameRateCeiling;
                    list6 = next;
                }
                if (!zIsConfigFrameRateAcceptable) {
                    i2 = list5 == null ? i5 : i5;
                    it = it2;
                } else {
                    if (z3 && !z) {
                        featureSettings2 = featureSettings;
                        i4 = currentConfigFrameRateCeiling;
                        i2 = i5;
                        list6 = next;
                        break;
                    }
                    z2 = true;
                    i4 = currentConfigFrameRateCeiling;
                    list6 = next;
                    if (list5 == null) {
                    }
                    it = it2;
                }
            } else {
                if (list5 == null && !z3) {
                    featureSettings2 = featureSettings;
                    if (getOrderedSupportedStreamUseCaseSurfaceConfigList(featureSettings2, surfaceConfigList, linkedHashMap, linkedHashMap2) != null) {
                        if (i5 == Integer.MAX_VALUE || i5 < currentConfigFrameRateCeiling) {
                            i5 = currentConfigFrameRateCeiling;
                            list7 = next;
                        }
                        if (zIsConfigFrameRateAcceptable) {
                            if (z2 && !z) {
                                i2 = currentConfigFrameRateCeiling;
                                list7 = next;
                                break;
                            }
                            z3 = true;
                            i2 = currentConfigFrameRateCeiling;
                            list7 = next;
                        }
                    }
                    it = it2;
                }
                it = it2;
            }
        }
        return (list6 != null && (!featureSettings2.isFeatureComboInvocation() || aa4.e(featureSettings2.getTargetFpsRange(), StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) || (i4 != Integer.MAX_VALUE && i4 >= ((Number) featureSettings2.getTargetFpsRange().getUpper()).intValue()))) ? new BestSizesAndMaxFpsForConfigs(list6, list7, i4, i2, i3) : bestSizesAndMaxFpsForConfigs;
    }

    private static final boolean findBestSizesAndFps$lambda$2(cl4<Boolean> cl4Var) {
        return cl4Var.getValue().booleanValue();
    }

    private final void generate10BitSupportedCombinationList() {
        this.surfaceCombinations10Bit.addAll(GuaranteedConfigurationsUtil.get10BitSupportedCombinationList());
    }

    private final void generateConcurrentSupportedCombinationList() {
        this.concurrentSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getConcurrentSupportedCombinationList());
    }

    private final void generateHighSpeedSupportedCombinationList() {
        if (this.highSpeedResolver.isHighSpeedSupported()) {
            this.highSpeedSurfaceCombinations.clear();
            Size maxSize = this.highSpeedResolver.getMaxSize();
            if (maxSize != null) {
                this.highSpeedSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.generateHighSpeedSupportedCombinationList(maxSize, getUpdatedSurfaceSizeDefinitionByFormat(34)));
            }
        }
    }

    private final void generatePreviewStabilizationSupportedCombinationList() {
        this.previewStabilizationSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getPreviewStabilizationSupportedCombinationList());
    }

    private final void generateStreamUseCaseSupportedCombinationList() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.surfaceCombinationsStreamUseCase.addAll(GuaranteedConfigurationsUtil.INSTANCE.getStreamUseCaseSupportedCombinationList());
        }
    }

    private final Map<UseCaseConfig<?>, StreamSpec> generateSuggestedStreamSpecMap(BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs, List<? extends UseCaseConfig<?>> list, List<Integer> list2, Map<UseCaseConfig<?>, DynamicRange> map, FeatureSettings featureSettings) {
        Range<Integer>[] frameRateRangesFor;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Range<Integer> closestSupportedDeviceFrameRate = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (!aa4.e(featureSettings.getTargetFpsRange(), closestSupportedDeviceFrameRate)) {
            if (featureSettings.isHighSpeedOn()) {
                frameRateRangesFor = this.highSpeedResolver.getFrameRateRangesFor(bestSizesAndMaxFpsForConfigs.getBestSizes());
            } else {
                CameraMetadata cameraMetadata = this.cameraMetadata;
                CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES;
                key.getClass();
                frameRateRangesFor = (Range[]) cameraMetadata.get(key);
            }
            Range<Integer> closestSupportedDeviceFrameRate2 = getClosestSupportedDeviceFrameRate(featureSettings.getTargetFpsRange(), bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes(), frameRateRangesFor);
            if ((featureSettings.isFeatureComboInvocation() || featureSettings.isStrictFpsRequired()) && !aa4.e(closestSupportedDeviceFrameRate2, featureSettings.getTargetFpsRange())) {
                StringBuilder sb = new StringBuilder("Target FPS range ");
                sb.append(featureSettings.getTargetFpsRange());
                sb.append(" is not supported. Max FPS supported by the calculated best combination: ");
                sb.append(bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes());
                sb.append(". Calculated best FPS range for device: ");
                sb.append(closestSupportedDeviceFrameRate2);
                String string = Arrays.toString(frameRateRangesFor);
                string.getClass();
                sb.append(". Device supported FPS ranges: ");
                sb.append(string);
                sb.append('.');
                throw new IllegalArgumentException(sb.toString().toString());
            }
            closestSupportedDeviceFrameRate = closestSupportedDeviceFrameRate2;
        } else if (featureSettings.isHighSpeedOn()) {
            closestSupportedDeviceFrameRate = getClosestSupportedDeviceFrameRate(HighSpeedResolver.Companion.getDEFAULT_FPS(), bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes(), this.highSpeedResolver.getFrameRateRangesFor(bestSizesAndMaxFpsForConfigs.getBestSizes()));
        }
        int i = 0;
        for (UseCaseConfig<?> useCaseConfig : list) {
            int i2 = i + 1;
            StreamSpec.Builder sessionType = StreamSpec.builder(bestSizesAndMaxFpsForConfigs.getBestSizes().get(list2.indexOf(Integer.valueOf(i)))).setSessionType(featureSettings.isHighSpeedOn() ? 1 : 0);
            DynamicRange dynamicRange = map.get(useCaseConfig);
            if (dynamicRange == null) {
                ah.f("Required value was null.");
                return null;
            }
            StreamSpec.Builder zslDisabled = sessionType.setDynamicRange(dynamicRange).setImplementationOptions(StreamUseCaseUtil.INSTANCE.getStreamSpecImplementationOptions(useCaseConfig)).setZslDisabled(featureSettings.getHasVideoCapture());
            zslDisabled.getClass();
            if (!aa4.e(closestSupportedDeviceFrameRate, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                zslDisabled.setExpectedFrameRateRange(closestSupportedDeviceFrameRate);
            }
            linkedHashMap.put(useCaseConfig, zslDisabled.build());
            i = i2;
        }
        return linkedHashMap;
    }

    private final void generateSupportedCombinationList() {
        this.surfaceCombinations.addAll(GuaranteedConfigurationsUtil.generateSupportedCombinationList(this.hardwareLevel, this.isRawSupported, this.isBurstCaptureSupported));
        this.surfaceCombinations.addAll(this.extraSupportedSurfaceCombinationsContainer.get(this.cameraId));
    }

    private final void generateSurfaceSizeDefinition() {
        SurfaceSizeDefinition surfaceSizeDefinitionCreate = SurfaceSizeDefinition.create(SizeUtil.RESOLUTION_VGA, new LinkedHashMap(), this.displayInfoManager.getPreviewSize(), new LinkedHashMap(), getRecordSize(), new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap());
        surfaceSizeDefinitionCreate.getClass();
        setSurfaceSizeDefinition$camera_camera2(surfaceSizeDefinitionCreate);
    }

    private final void generateUltraHdrSupportedCombinationList() {
        this.surfaceCombinationsUltraHdr.addAll(GuaranteedConfigurationsUtil.getUltraHdrSupportedCombinationList());
    }

    private final void generateUltraHighResolutionSupportedCombinationList() {
        this.ultraHighSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getUltraHighResolutionSupportedCombinationList());
    }

    private final List<List<Size>> getAllPossibleSizeArrangements(List<? extends List<Size>> list) {
        Iterator<? extends List<Size>> it = list.iterator();
        int size = 1;
        while (it.hasNext()) {
            size *= it.next().size();
        }
        if (size == 0) {
            fg.c("Failed to find supported resolutions.");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(new ArrayList());
        }
        int size2 = size / list.get(0).size();
        int size3 = list.size();
        int i2 = size;
        for (int i3 = 0; i3 < size3; i3++) {
            List<Size> list2 = list.get(i3);
            for (int i4 = 0; i4 < size; i4++) {
                ((List) arrayList.get(i4)).add(list2.get((i4 % i2) / size2));
            }
            if (i3 < list.size() - 1) {
                i2 = size2;
                size2 /= list.get(i3 + 1).size();
            }
        }
        return arrayList;
    }

    private final boolean getAndValidateIsStrictFpsRequired(boolean z, Boolean bool) {
        if (bool == null || bool.equals(Boolean.valueOf(z))) {
            return z;
        }
        ah.f("All isStrictFpsRequired should be the same");
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
    private final CheckingMethod getCheckingMethod(Collection<DynamicRange> collection, Range<Integer> range, VideoStabilization videoStabilization, boolean z, boolean z2) {
        int i;
        int i2;
        Integer num;
        if (!z2) {
            return CheckingMethod.WITHOUT_FEATURE_COMBO;
        }
        ?? Contains = collection.contains(DynamicRange.HLG_10_BIT);
        if (range != null && (num = (Integer) range.getUpper()) != null && num.intValue() == 60) {
            i = Contains;
            i = Contains;
            i = Contains;
            i = Contains + 1;
        }
        i = Contains;
        i = Contains;
        i = Contains;
        i = Contains;
        i = Contains;
        i = Contains;
        if (videoStabilization == VideoStabilization.ON || videoStabilization == VideoStabilization.PREVIEW) {
            i2 = i;
            i2 = i + 1;
        }
        if (z) {
            i2++;
        }
        if (i2 > 1) {
            return CheckingMethod.WITH_FEATURE_COMBO;
        }
        return i2 == 1 ? CheckingMethod.WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT : CheckingMethod.WITHOUT_FEATURE_COMBO;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Range<Integer> getClosestSupportedDeviceFrameRate(Range<Integer> range, int i, Range<Integer>[] rangeArr) {
        Range<Integer> rangeCompareIntersectingRanges = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (aa4.e(range, rangeCompareIntersectingRanges)) {
            rangeCompareIntersectingRanges.getClass();
            return rangeCompareIntersectingRanges;
        }
        if (rangeArr == null) {
            rangeCompareIntersectingRanges.getClass();
            return rangeCompareIntersectingRanges;
        }
        Object lower = range.getLower();
        lower.getClass();
        Integer numValueOf = Integer.valueOf(Math.min(((Number) lower).intValue(), i));
        Object upper = range.getUpper();
        upper.getClass();
        Range<T> range2 = new Range<>(numValueOf, Integer.valueOf(Math.min(((Number) upper).intValue(), i)));
        int rangeLength = 0;
        for (Range<Integer> range3 : rangeArr) {
            if (i >= ((Number) range3.getLower()).intValue()) {
                if (aa4.e(rangeCompareIntersectingRanges, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                    rangeCompareIntersectingRanges = range3;
                }
                if (range3.equals(range2)) {
                    rangeCompareIntersectingRanges = range3;
                    break;
                }
                try {
                    Range<T> rangeIntersect = range3.intersect(range2);
                    rangeIntersect.getClass();
                    int rangeLength2 = getRangeLength(rangeIntersect);
                    if (rangeLength == 0) {
                        rangeCompareIntersectingRanges = range3;
                        rangeLength = rangeLength2;
                    } else if (rangeLength2 >= rangeLength) {
                        rangeCompareIntersectingRanges.getClass();
                        rangeCompareIntersectingRanges = compareIntersectingRanges(range2, rangeCompareIntersectingRanges, range3);
                        Range rangeIntersect2 = range2.intersect(rangeCompareIntersectingRanges);
                        rangeIntersect2.getClass();
                        rangeLength = getRangeLength(rangeIntersect2);
                    }
                } catch (IllegalArgumentException unused) {
                    if (rangeLength == 0) {
                        int rangeDistance = getRangeDistance(range3, range2);
                        rangeCompareIntersectingRanges.getClass();
                        if (rangeDistance < getRangeDistance(rangeCompareIntersectingRanges, range2) || (getRangeDistance(range3, range2) == getRangeDistance(rangeCompareIntersectingRanges, range2) && (((Number) range3.getLower()).intValue() > ((Number) rangeCompareIntersectingRanges.getUpper()).intValue() || getRangeLength(range3) < getRangeLength(rangeCompareIntersectingRanges)))) {
                            rangeCompareIntersectingRanges = range3;
                        }
                    }
                }
            }
        }
        rangeCompareIntersectingRanges.getClass();
        return rangeCompareIntersectingRanges;
    }

    private final int getCombinedMaximumFps(int i, int i2, Size size, boolean z, int i3) {
        return Math.min(i, getMaxFrameRate(i2, size, z, i3));
    }

    private final int getCurrentConfigFrameRateCeiling(List<Size> list, List<? extends UseCaseConfig<?>> list2, List<Integer> list3, int i, boolean z) {
        int i2 = 0;
        int combinedMaximumFps = i;
        for (Size size : list) {
            int i3 = i2 + 1;
            UseCaseConfig<?> useCaseConfig = list2.get(list3.get(i2).intValue());
            combinedMaximumFps = getCombinedMaximumFps(combinedMaximumFps, useCaseConfig.getInputFormat(), size, z, useCaseConfig.getCustomMaxFrameRate(size));
            i2 = i3;
        }
        return combinedMaximumFps;
    }

    private final int getMaxFrameRate(int i, Size size) {
        long outputMinFrameDuration = getStreamConfigurationMapCompat().getOutputMinFrameDuration(i, size);
        if (outputMinFrameDuration > 0) {
            return (int) (1.0E9d / outputMinFrameDuration);
        }
        if (!this.isManualSensorSupported) {
            return Integer.MAX_VALUE;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (!Logger.isWarnEnabled(Log.TAG)) {
            return 0;
        }
        android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "minFrameDuration: " + outputMinFrameDuration + " is invalid for imageFormat = " + i + ", size = " + size);
        return 0;
    }

    public static /* synthetic */ Size getMaxOutputSizeByFormat$camera_camera2$default(SupportedSurfaceCombination supportedSurfaceCombination, StreamConfigurationMap streamConfigurationMap, int i, boolean z, Rational rational, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            rational = null;
        }
        return supportedSurfaceCombination.getMaxOutputSizeByFormat$camera_camera2(streamConfigurationMap, i, z, rational);
    }

    private final int getMaxSupportedFpsFromAttachedSurfaces(List<? extends AttachedSurfaceInfo> list, boolean z) {
        int combinedMaximumFps = Integer.MAX_VALUE;
        for (AttachedSurfaceInfo attachedSurfaceInfo : list) {
            int imageFormat = attachedSurfaceInfo.getImageFormat();
            Size size = attachedSurfaceInfo.getSize();
            size.getClass();
            combinedMaximumFps = getCombinedMaximumFps(combinedMaximumFps, imageFormat, size, z, attachedSurfaceInfo.getCustomMaxFrameRate());
        }
        return combinedMaximumFps;
    }

    private final List<SurfaceConfig> getOrderedSupportedStreamUseCaseSurfaceConfigList(FeatureSettings featureSettings, List<SurfaceConfig> list, Map<Integer, AttachedSurfaceInfo> map, Map<Integer, UseCaseConfig<?>> map2) {
        if (!StreamUseCaseUtil.INSTANCE.shouldUseStreamUseCase(featureSettings)) {
            return null;
        }
        for (SurfaceCombination surfaceCombination : this.surfaceCombinationsStreamUseCase) {
            list.getClass();
            List<SurfaceConfig> orderedSupportedSurfaceConfigList = surfaceCombination.getOrderedSupportedSurfaceConfigList(list);
            if (orderedSupportedSurfaceConfigList != null) {
                boolean zAreCaptureTypesEligible = StreamUseCaseUtil.INSTANCE.areCaptureTypesEligible(map, map2, orderedSupportedSurfaceConfigList);
                fh8 fh8Var = new fh8(new bg8(0, this, orderedSupportedSurfaceConfigList));
                if (zAreCaptureTypesEligible && ((Boolean) fh8Var.getValue()).booleanValue()) {
                    return orderedSupportedSurfaceConfigList;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0(SupportedSurfaceCombination supportedSurfaceCombination, List list) {
        return StreamUseCaseUtil.INSTANCE.areStreamUseCasesAvailableForSurfaceConfigs(supportedSurfaceCombination.cameraMetadata, list);
    }

    private final List<SurfaceConfig> getOrderedSurfaceConfigListForStreamUseCase(List<? extends List<Size>> list, List<? extends AttachedSurfaceInfo> list2, List<? extends UseCaseConfig<?>> list3, List<Integer> list4, FeatureSettings featureSettings, Map<Integer, AttachedSurfaceInfo> map, Map<Integer, UseCaseConfig<?>> map2) {
        Iterator<? extends List<Size>> it = list.iterator();
        List<SurfaceConfig> orderedSupportedStreamUseCaseSurfaceConfigList = null;
        while (it.hasNext()) {
            orderedSupportedStreamUseCaseSurfaceConfigList = getOrderedSupportedStreamUseCaseSurfaceConfigList(featureSettings, getSurfaceConfigList(featureSettings.getCameraMode(), list2, it.next(), list3, list4, map, map2, false), map, map2);
            if (orderedSupportedStreamUseCaseSurfaceConfigList != null) {
                return orderedSupportedStreamUseCaseSurfaceConfigList;
            }
            map.clear();
            map2.clear();
        }
        return orderedSupportedStreamUseCaseSurfaceConfigList;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0010  */
    private final Size[] getOutputSizes(StreamConfigurationMap streamConfigurationMap, int i, Rational rational) {
        Object aVar;
        Object outputSizes;
        try {
            if (i == 34) {
                if (streamConfigurationMap != null) {
                    outputSizes = streamConfigurationMap.getOutputSizes(SurfaceTexture.class);
                } else {
                    outputSizes = null;
                }
            } else if (streamConfigurationMap != null) {
                outputSizes = streamConfigurationMap.getOutputSizes(i);
            } else {
                outputSizes = null;
            }
            aVar = outputSizes;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        Size[] sizeArr = (Size[]) aVar;
        if (sizeArr == null) {
            return null;
        }
        if (rational == null) {
            return sizeArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Size size : sizeArr) {
            if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
                arrayList.add(size);
            }
        }
        return (Size[]) arrayList.toArray(new Size[0]);
    }

    public static /* synthetic */ Size[] getOutputSizes$default(SupportedSurfaceCombination supportedSurfaceCombination, StreamConfigurationMap streamConfigurationMap, int i, Rational rational, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            rational = null;
        }
        return supportedSurfaceCombination.getOutputSizes(streamConfigurationMap, i, rational);
    }

    private final int getRangeDistance(Range<Integer> range, Range<Integer> range2) {
        if (range.contains(range2.getUpper()) || range.contains(range2.getLower())) {
            fg.c("Ranges must not intersect");
            return 0;
        }
        if (((Number) range.getLower()).intValue() > ((Number) range2.getUpper()).intValue()) {
            int iIntValue = ((Number) range.getLower()).intValue();
            Object upper = range2.getUpper();
            upper.getClass();
            return iIntValue - ((Number) upper).intValue();
        }
        int iIntValue2 = ((Number) range2.getLower()).intValue();
        Object upper2 = range.getUpper();
        upper2.getClass();
        return iIntValue2 - ((Number) upper2).intValue();
    }

    private final int getRangeLength(Range<Integer> range) {
        int iIntValue = ((Number) range.getUpper()).intValue();
        Object lower = range.getLower();
        lower.getClass();
        return (iIntValue - ((Number) lower).intValue()) + 1;
    }

    private final Size getRecordSize() {
        try {
            Integer.parseInt(this.cameraId);
            Size recordSizeFromCamcorderProfile = getRecordSizeFromCamcorderProfile();
            if (recordSizeFromCamcorderProfile != null) {
                return recordSizeFromCamcorderProfile;
            }
        } catch (NumberFormatException unused) {
        }
        Size recordSizeFromStreamConfigurationMapCompat = getRecordSizeFromStreamConfigurationMapCompat();
        if (recordSizeFromStreamConfigurationMapCompat != null) {
            return recordSizeFromStreamConfigurationMapCompat;
        }
        Size size = SizeUtil.RESOLUTION_480P;
        size.getClass();
        return size;
    }

    private final Size getRecordSizeFromCamcorderProfile() {
        EncoderProfilesProxy all;
        Iterator it = u96.i(1, 13, 10, 8, 12, 6, 5, 4).iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (this.encoderProfilesProvider.hasProfile(iIntValue) && (all = this.encoderProfilesProvider.getAll(iIntValue)) != null) {
                List<EncoderProfilesProxy.VideoProfileProxy> videoProfiles = all.getVideoProfiles();
                videoProfiles.getClass();
                if (!videoProfiles.isEmpty()) {
                    EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = all.getVideoProfiles().get(0);
                    videoProfileProxy.getClass();
                    return videoProfileProxy.getResolution();
                }
            }
        }
        return null;
    }

    private final Size getRecordSizeFromStreamConfigurationMapCompat() {
        Object aVar;
        Object outputSizes;
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMapCompat.toStreamConfigurationMap();
        if (streamConfigurationMap != null) {
            try {
                outputSizes = streamConfigurationMap.getOutputSizes(MediaRecorder.class);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
        } else {
            outputSizes = null;
        }
        aVar = outputSizes;
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        Size[] sizeArr = (Size[]) aVar;
        if (sizeArr == null) {
            return null;
        }
        Arrays.sort(sizeArr, new CompareSizesByArea(true));
        for (Size size : sizeArr) {
            int width = size.getWidth();
            Size size2 = SizeUtil.RESOLUTION_1080P;
            if (width <= size2.getWidth() && size.getHeight() <= size2.getHeight()) {
                return size;
            }
        }
        return null;
    }

    private final int getRequiredMaxBitDepth(Map<UseCaseConfig<?>, DynamicRange> map) {
        Iterator<DynamicRange> it = map.values().iterator();
        while (it.hasNext()) {
            if (it.next().getBitDepth() == 10) {
                return 10;
            }
        }
        return 8;
    }

    private final StreamConfigurationMapCompat getStreamConfigurationMapCompat() {
        CameraMetadata cameraMetadata = this.cameraMetadata;
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        key.getClass();
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(key);
        if (streamConfigurationMap != null) {
            return new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(this.cameraMetadata, streamConfigurationMap));
        }
        fg.c("Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP");
        return null;
    }

    public static /* synthetic */ SurfaceStreamSpecQueryResult getSuggestedStreamSpecifications$default(SupportedSurfaceCombination supportedSurfaceCombination, int i, List list, Map map, VideoStabilization videoStabilization, boolean z, boolean z2, boolean z3, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            videoStabilization = VideoStabilization.UNSPECIFIED;
        }
        VideoStabilization videoStabilization2 = videoStabilization;
        if ((i2 & 16) != 0) {
            z = false;
        }
        return supportedSurfaceCombination.getSuggestedStreamSpecifications(i, list, map, videoStabilization2, z, z2, z3);
    }

    private final List<List<Size>> getSupportedOutputSizesList(Map<UseCaseConfig<?>, ? extends List<Size>> map, List<? extends UseCaseConfig<?>> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = list2.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            List<Size> list3 = map.get(list.get(iIntValue));
            list3.getClass();
            arrayList.add(applyResolutionSelectionOrderRelatedWorkarounds(list3, list.get(iIntValue).getInputFormat()));
        }
        return arrayList;
    }

    private final List<SurfaceCombination> getSurfaceCombinationsByFeatureSettings(FeatureSettings featureSettings) {
        if (this.featureSettingsToSupportedCombinationsMap.containsKey(featureSettings)) {
            List<SurfaceCombination> list = this.featureSettingsToSupportedCombinationsMap.get(featureSettings);
            list.getClass();
            return list;
        }
        List<SurfaceCombination> arrayList = new ArrayList<>();
        if (featureSettings.getRequiresFeatureComboQuery()) {
            arrayList.addAll(GuaranteedConfigurationsUtil.INSTANCE.getQueryableFcqCombinations$camera_camera2(this.cameraMetadata, featureSettings.getVideoStabilization()));
        } else if (featureSettings.isUltraHdrOn()) {
            if (this.surfaceCombinationsUltraHdr.isEmpty()) {
                generateUltraHdrSupportedCombinationList();
            }
            if (featureSettings.getCameraMode() == 0) {
                arrayList.addAll(this.surfaceCombinationsUltraHdr);
            }
        } else if (featureSettings.isHighSpeedOn()) {
            if (this.highSpeedSurfaceCombinations.isEmpty()) {
                generateHighSpeedSupportedCombinationList();
            }
            arrayList.addAll(this.highSpeedSurfaceCombinations);
        } else if (featureSettings.getRequiredMaxBitDepth() == 8) {
            int cameraMode = featureSettings.getCameraMode();
            if (cameraMode == 1) {
                arrayList = this.concurrentSurfaceCombinations;
            } else if (cameraMode != 2) {
                arrayList.addAll(featureSettings.getVideoStabilization() == VideoStabilization.PREVIEW ? this.previewStabilizationSurfaceCombinations : this.surfaceCombinations);
            } else {
                arrayList.addAll(this.ultraHighSurfaceCombinations);
                arrayList.addAll(this.surfaceCombinations);
            }
        } else if (featureSettings.getRequiredMaxBitDepth() == 10 && featureSettings.getCameraMode() == 0) {
            arrayList.addAll(this.surfaceCombinations10Bit);
        }
        this.featureSettingsToSupportedCombinationsMap.put(featureSettings, arrayList);
        return arrayList;
    }

    private final List<SurfaceConfig> getSurfaceConfigList(int i, List<? extends AttachedSurfaceInfo> list, List<Size> list2, List<? extends UseCaseConfig<?>> list3, List<Integer> list4, Map<Integer, AttachedSurfaceInfo> map, Map<Integer, UseCaseConfig<?>> map2, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (AttachedSurfaceInfo attachedSurfaceInfo : list) {
            SurfaceConfig surfaceConfig = attachedSurfaceInfo.getSurfaceConfig();
            surfaceConfig.getClass();
            arrayList.add(surfaceConfig);
            if (map != null) {
                map.put(Integer.valueOf(arrayList.size() - 1), attachedSurfaceInfo);
            }
        }
        int i2 = 0;
        for (Size size : list2) {
            int i3 = i2 + 1;
            UseCaseConfig<?> useCaseConfig = list3.get(list4.get(i2).intValue());
            int inputFormat = useCaseConfig.getInputFormat();
            StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
            streamUseCase.getClass();
            arrayList.add(SurfaceConfig.Companion.transformSurfaceConfig(inputFormat, size, getUpdatedSurfaceSizeDefinitionByFormat(inputFormat), i, z ? SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE : SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase));
            if (map2 != null) {
                map2.put(Integer.valueOf(arrayList.size() - 1), useCaseConfig);
            }
            i2 = i3;
        }
        return arrayList;
    }

    private final Range<Integer> getTargetFpsRange(List<? extends AttachedSurfaceInfo> list, List<? extends UseCaseConfig<?>> list2, List<Integer> list3, boolean z) {
        Range<Integer> updatedTargetFrameRate = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        updatedTargetFrameRate.getClass();
        Iterator<? extends AttachedSurfaceInfo> it = list.iterator();
        while (it.hasNext()) {
            Range<Integer> targetFrameRate = it.next().getTargetFrameRate();
            targetFrameRate.getClass();
            updatedTargetFrameRate = getUpdatedTargetFrameRate(targetFrameRate, updatedTargetFrameRate, z);
        }
        Iterator<Integer> it2 = list3.iterator();
        while (it2.hasNext()) {
            Range<Integer> targetFrameRate2 = list2.get(it2.next().intValue()).getTargetFrameRate(StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
            targetFrameRate2.getClass();
            updatedTargetFrameRate = getUpdatedTargetFrameRate(targetFrameRate2, updatedTargetFrameRate, z);
        }
        return updatedTargetFrameRate;
    }

    private final Range<Integer> getUpdatedTargetFrameRate(Range<Integer> range, Range<Integer> range2, boolean z) {
        Range<Integer> range3 = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (aa4.e(range2, range3) && aa4.e(range, range3)) {
            range3.getClass();
            return range3;
        }
        if (aa4.e(range2, range3)) {
            return range;
        }
        if (!aa4.e(range, range3)) {
            if (z) {
                Preconditions.checkState(aa4.e(range, range2), "All targetFrameRate should be the same if strict fps is required");
                return range;
            }
            try {
                Range rangeIntersect = range2.intersect(range);
                rangeIntersect.getClass();
                return rangeIntersect;
            } catch (IllegalArgumentException unused) {
            }
        }
        return range2;
    }

    private final List<Integer> getUseCasesPriorityOrder(List<? extends UseCaseConfig<?>> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<? extends UseCaseConfig<?>> it = list.iterator();
        while (it.hasNext()) {
            int surfaceOccupancyPriority = it.next().getSurfaceOccupancyPriority(0);
            if (!arrayList2.contains(Integer.valueOf(surfaceOccupancyPriority))) {
                arrayList2.add(Integer.valueOf(surfaceOccupancyPriority));
            }
        }
        nn1.I(arrayList2);
        Collections.reverse(arrayList2);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Number) it2.next()).intValue();
            for (UseCaseConfig<?> useCaseConfig : list) {
                if (iIntValue == useCaseConfig.getSurfaceOccupancyPriority(0)) {
                    arrayList.add(Integer.valueOf(list.indexOf(useCaseConfig)));
                }
            }
        }
        return arrayList;
    }

    private final boolean isConfigFrameRateAcceptable(int i, Range<Integer> range, int i2) {
        return aa4.e(range, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) || i2 >= i || i2 >= ((Number) range.getUpper()).intValue();
    }

    private final boolean isStrictFpsRequired(List<? extends AttachedSurfaceInfo> list, List<? extends UseCaseConfig<?>> list2) {
        Iterator<? extends AttachedSurfaceInfo> it = list.iterator();
        Boolean boolValueOf = null;
        while (it.hasNext()) {
            boolValueOf = Boolean.valueOf(getAndValidateIsStrictFpsRequired(it.next().isStrictFrameRateRequired(), boolValueOf));
        }
        Iterator<? extends UseCaseConfig<?>> it2 = list2.iterator();
        while (it2.hasNext()) {
            boolValueOf = Boolean.valueOf(getAndValidateIsStrictFpsRequired(it2.next().isStrictFrameRateRequired(), boolValueOf));
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    private final boolean isUseCasesCombinationSupported(FeatureSettings featureSettings, List<? extends AttachedSurfaceInfo> list, Map<UseCaseConfig<?>, ? extends List<Size>> map) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends AttachedSurfaceInfo> it = list.iterator();
        while (it.hasNext()) {
            SurfaceConfig surfaceConfig = it.next().getSurfaceConfig();
            surfaceConfig.getClass();
            arrayList.add(surfaceConfig);
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
        for (UseCaseConfig<?> useCaseConfig : map.keySet()) {
            List<Size> list2 = map.get(useCaseConfig);
            if (list2 == null || list2.isEmpty()) {
                w7.g(useCaseConfig, "No available output size is found for ", 46);
                return false;
            }
            Size size = (Size) Collections.min(list2, compareSizesByArea);
            int inputFormat = useCaseConfig.getInputFormat();
            StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
            streamUseCase.getClass();
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            size.getClass();
            arrayList.add(companion.transformSurfaceConfig(inputFormat, size, getUpdatedSurfaceSizeDefinitionByFormat(inputFormat), featureSettings.getCameraMode(), SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase));
        }
        return checkSupported$default(this, featureSettings, arrayList, null, null, null, 28, null);
    }

    private final void populateReducedSizeListAndUniqueMaxFpsMap(FeatureSettings featureSettings, Size size, int i, int i2, StreamUseCase streamUseCase, boolean z, Map<SurfaceConfig.ConfigSize, Set<Integer>> map, List<Size> list) {
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.Companion.transformSurfaceConfig(i, size, getUpdatedSurfaceSizeDefinitionByFormat(i), featureSettings.getCameraMode(), featureSettings.getRequiresFeatureComboQuery() ? SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE : SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase).getConfigSize();
        Range<Integer> targetFpsRange = featureSettings.getTargetFpsRange();
        Range<Integer> range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        int maxFrameRate = (!aa4.e(targetFpsRange, range) || z) ? getMaxFrameRate(i, size, featureSettings.isHighSpeedOn(), i2) : Integer.MAX_VALUE;
        if (featureSettings.isFeatureComboInvocation()) {
            if (configSize == SurfaceConfig.ConfigSize.NOT_SUPPORT) {
                return;
            }
            if (!aa4.e(featureSettings.getTargetFpsRange(), range) && maxFrameRate < ((Number) featureSettings.getTargetFpsRange().getUpper()).intValue()) {
                return;
            }
        }
        Set<Integer> linkedHashSet = map.get(configSize);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet<>();
            map.put(configSize, linkedHashSet);
        }
        if (linkedHashSet.contains(Integer.valueOf(maxFrameRate))) {
            return;
        }
        list.add(size);
        linkedHashSet.add(Integer.valueOf(maxFrameRate));
    }

    private final void populateStreamUseCaseIfSameSavedSizes(BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs, List<SurfaceConfig> list, List<? extends AttachedSurfaceInfo> list2, Map<AttachedSurfaceInfo, StreamSpec> map, Map<UseCaseConfig<?>, StreamSpec> map2, Map<Integer, AttachedSurfaceInfo> map3, Map<Integer, UseCaseConfig<?>> map4) {
        if (list == null || bestSizesAndMaxFpsForConfigs.getMaxFpsForBestSizes() != bestSizesAndMaxFpsForConfigs.getMaxFpsForStreamUseCase()) {
            return;
        }
        int size = bestSizesAndMaxFpsForConfigs.getBestSizes().size();
        List<Size> bestSizesForStreamUseCase = bestSizesAndMaxFpsForConfigs.getBestSizesForStreamUseCase();
        bestSizesForStreamUseCase.getClass();
        if (size == bestSizesForStreamUseCase.size()) {
            ArrayList<b36> arrayListZ0 = qn1.z0(bestSizesAndMaxFpsForConfigs.getBestSizes(), bestSizesAndMaxFpsForConfigs.getBestSizesForStreamUseCase());
            if (!arrayListZ0.isEmpty()) {
                for (b36 b36Var : arrayListZ0) {
                    if (!aa4.e(b36Var.b, b36Var.c)) {
                        return;
                    }
                }
            }
            StreamUseCaseUtil streamUseCaseUtil = StreamUseCaseUtil.INSTANCE;
            if (streamUseCaseUtil.populateStreamUseCaseStreamSpecOptionWithInteropOverride(this.cameraMetadata, list2, map2, map)) {
                return;
            }
            streamUseCaseUtil.populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(map2, map, map3, map4, list);
        }
    }

    private final void refreshPreviewSize() {
        this.displayInfoManager.refreshPreviewSize();
        if (this.surfaceSizeDefinition == null) {
            generateSurfaceSizeDefinition();
            return;
        }
        SurfaceSizeDefinition surfaceSizeDefinitionCreate = SurfaceSizeDefinition.create(getSurfaceSizeDefinition$camera_camera2().getAnalysisSize(), getSurfaceSizeDefinition$camera_camera2().getS720pSizeMap(), this.displayInfoManager.getPreviewSize(), getSurfaceSizeDefinition$camera_camera2().getS1440pSizeMap(), getSurfaceSizeDefinition$camera_camera2().getRecordSize(), getSurfaceSizeDefinition$camera_camera2().getMaximumSizeMap(), getSurfaceSizeDefinition$camera_camera2().getMaximum4x3SizeMap(), getSurfaceSizeDefinition$camera_camera2().getMaximum16x9SizeMap(), getSurfaceSizeDefinition$camera_camera2().getUltraMaximumSizeMap());
        surfaceSizeDefinitionCreate.getClass();
        setSurfaceSizeDefinition$camera_camera2(surfaceSizeDefinitionCreate);
    }

    private final SurfaceStreamSpecQueryResult resolveSpecsByCheckingMethod(CheckingMethod checkingMethod, FeatureSettings featureSettings, List<? extends AttachedSurfaceInfo> list, Map<UseCaseConfig<?>, ? extends List<Size>> map, List<? extends UseCaseConfig<?>> list2, List<Integer> list3, Map<UseCaseConfig<?>, DynamicRange> map2, boolean z) {
        CheckingMethod checkingMethod2;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            String str = Camera2Logger.TRUNCATED_TAG;
            StringBuilder sb = new StringBuilder("resolveSpecsByCheckingMethod: checkingMethod = ");
            checkingMethod2 = checkingMethod;
            sb.append(checkingMethod2);
            android.util.Log.d(str, sb.toString());
        } else {
            checkingMethod2 = checkingMethod;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[checkingMethod2.ordinal()];
        if (i == 1) {
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, false, null, false, 895, null)), list, map, list2, list3, map2, z);
        }
        if (i == 2) {
            Range<Integer> targetFpsRange = (featureSettings.isFeatureComboInvocation() && featureSettings.getTargetFpsRange() == StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED && featureSettings.getRequiresFeatureComboQuery()) ? FpsRangeFeature.DEFAULT_FPS_RANGE : featureSettings.getTargetFpsRange();
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, true, targetFpsRange, false, 639, null)), list, map, list2, list3, map2, z);
        }
        if (i != 3) {
            me0.e();
            return null;
        }
        try {
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, false, null, false, 895, null)), list, map, list2, list3, map2, z);
        } catch (IllegalArgumentException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Failed to find a supported combination without feature combo, trying again with feature combo", e);
            }
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, true, null, false, 895, null)), list, map, list2, list3, map2, z);
        }
    }

    private final SurfaceStreamSpecQueryResult resolveSpecsBySettings(FeatureSettings featureSettings, List<? extends AttachedSurfaceInfo> list, Map<UseCaseConfig<?>, ? extends List<Size>> map, List<? extends UseCaseConfig<?>> list2, List<Integer> list3, Map<UseCaseConfig<?>, DynamicRange> map2, boolean z) {
        List<SurfaceConfig> list4;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "resolveSpecsBySettings: featureSettings = " + featureSettings);
        }
        if (!featureSettings.isFeatureComboInvocation() && !isUseCasesCombinationSupported(featureSettings, list, map)) {
            throw new IllegalArgumentException(("No supported surface combination is found for camera device - Id : " + this.cameraId + ". May be attempting to bind too many use cases. Existing surfaces: " + list + ". New configs: " + list2 + ". GroupableFeature settings: " + featureSettings + '.').toString());
        }
        List<List<Size>> supportedOutputSizesList = getSupportedOutputSizesList(filterSupportedSizes$camera_camera2(map, featureSettings, z), list2, list3);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        List<List<Size>> sizeArrangements = featureSettings.isHighSpeedOn() ? this.highSpeedResolver.getSizeArrangements(supportedOutputSizesList) : getAllPossibleSizeArrangements(supportedOutputSizesList);
        boolean zContainsZslUseCase = StreamUseCaseUtil.INSTANCE.containsZslUseCase(list, list2);
        if (!this.isStreamUseCaseSupported || zContainsZslUseCase) {
            list4 = null;
        } else {
            List<SurfaceConfig> orderedSurfaceConfigListForStreamUseCase = getOrderedSurfaceConfigListForStreamUseCase(sizeArrangements, list, list2, list3, featureSettings, linkedHashMap, linkedHashMap2);
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "orderedSurfaceConfigListForStreamUseCase = " + orderedSurfaceConfigListForStreamUseCase);
            }
            list4 = orderedSurfaceConfigListForStreamUseCase;
        }
        BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigsFindBestSizesAndFps = findBestSizesAndFps(sizeArrangements, list, list2, getMaxSupportedFpsFromAttachedSurfaces(list, featureSettings.isHighSpeedOn()), list3, featureSettings, list4, map2, z);
        if (bestSizesAndMaxFpsForConfigsFindBestSizesAndFps != null) {
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "resolveSpecsBySettings: bestSizesAndFps = " + bestSizesAndMaxFpsForConfigsFindBestSizesAndFps);
            }
            Map<UseCaseConfig<?>, StreamSpec> mapGenerateSuggestedStreamSpecMap = generateSuggestedStreamSpecMap(bestSizesAndMaxFpsForConfigsFindBestSizesAndFps, list2, list3, map2, featureSettings);
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            populateStreamUseCaseIfSameSavedSizes(bestSizesAndMaxFpsForConfigsFindBestSizesAndFps, list4, list, linkedHashMap3, mapGenerateSuggestedStreamSpecMap, linkedHashMap, linkedHashMap2);
            return new SurfaceStreamSpecQueryResult(mapGenerateSuggestedStreamSpecMap, linkedHashMap3, bestSizesAndMaxFpsForConfigsFindBestSizesAndFps.getMaxFpsForAllSizes());
        }
        StringBuilder sb = new StringBuilder("No supported surface combination is found for camera device - Id : ");
        sb.append(this.cameraId);
        sb.append(" and Hardware level: ");
        sb.append(this.hardwareLevel);
        sb.append(". May be the specified resolution is too large and not supported. Existing surfaces: ");
        sb.append(list);
        sb.append(". New configs: ");
        c9.f(qg.f(sb, list2, '.'));
        return null;
    }

    private final void updateMaximumSizeByFormat(Map<Integer, Size> map, int i, Rational rational) {
        Size maxOutputSizeByFormat$camera_camera2 = getMaxOutputSizeByFormat$camera_camera2(this.streamConfigurationMapCompat.toStreamConfigurationMap(), i, true, rational);
        if (maxOutputSizeByFormat$camera_camera2 != null) {
            map.put(Integer.valueOf(i), maxOutputSizeByFormat$camera_camera2);
        }
    }

    public static /* synthetic */ void updateMaximumSizeByFormat$default(SupportedSurfaceCombination supportedSurfaceCombination, Map map, int i, Rational rational, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            rational = null;
        }
        supportedSurfaceCombination.updateMaximumSizeByFormat(map, i, rational);
    }

    private final void updateS720pOrS1440pSizeByFormat(Map<Integer, Size> map, Size size, int i) {
        if (this.isConcurrentCameraModeSupported) {
            Size maxOutputSizeByFormat$camera_camera2$default = getMaxOutputSizeByFormat$camera_camera2$default(this, this.streamConfigurationMapCompat.toStreamConfigurationMap(), i, false, null, 8, null);
            Integer numValueOf = Integer.valueOf(i);
            if (maxOutputSizeByFormat$camera_camera2$default != null) {
                size = (Size) Collections.min(u96.i(size, maxOutputSizeByFormat$camera_camera2$default), new CompareSizesByArea());
            }
            map.put(numValueOf, size);
        }
    }

    private final void updateUltraMaximumSizeByFormat(Map<Integer, Size> map, int i) {
        Size maxOutputSizeByFormat$camera_camera2$default;
        if (Build.VERSION.SDK_INT < 31 || !this.isUltraHighResolutionSensorSupported) {
            return;
        }
        CameraMetadata cameraMetadata = this.cameraMetadata;
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION;
        key.getClass();
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(key);
        if (streamConfigurationMap == null || (maxOutputSizeByFormat$camera_camera2$default = getMaxOutputSizeByFormat$camera_camera2$default(this, streamConfigurationMap, i, true, null, 8, null)) == null) {
            return;
        }
        map.put(Integer.valueOf(i), maxOutputSizeByFormat$camera_camera2$default);
    }

    private final FeatureSettings validateSelf(FeatureSettings featureSettings) {
        if (featureSettings.getCameraMode() != 0 && featureSettings.isUltraHdrOn()) {
            jg.e("Camera device Id is ", this.cameraId, ". Ultra HDR is not currently supported in ", CameraMode.toLabelString(featureSettings.getCameraMode()), " camera mode.");
            return null;
        }
        if (featureSettings.getCameraMode() != 0 && featureSettings.getRequiredMaxBitDepth() == 10) {
            jg.e("Camera device Id is ", this.cameraId, ". 10 bit dynamic range is not currently supported in ", CameraMode.toLabelString(featureSettings.getCameraMode()), " camera mode.");
            return null;
        }
        if (featureSettings.getCameraMode() != 0 && featureSettings.isFeatureComboInvocation()) {
            jg.e("Camera device Id is ", this.cameraId, ". feature combination is not currently supported in ", CameraMode.toLabelString(featureSettings.getCameraMode()), " camera mode.");
            return null;
        }
        if (featureSettings.isHighSpeedOn() && featureSettings.isFeatureComboInvocation()) {
            fg.c("High-speed session is not supported with feature combination");
            return null;
        }
        if (!featureSettings.isHighSpeedOn() || this.highSpeedResolver.isHighSpeedSupported()) {
            return featureSettings;
        }
        fg.c("High-speed session is not supported on this device.");
        return null;
    }

    public final List<Size> applyResolutionSelectionOrderRelatedWorkarounds(List<Size> list, int i) {
        Rational rational;
        ArrayList arrayList;
        list.getClass();
        int i2 = this.targetAspectRatio.get(this.cameraMetadata, this.streamConfigurationMapCompat);
        if (i2 == 0) {
            rational = AspectRatioUtil.ASPECT_RATIO_4_3;
        } else if (i2 != 1) {
            rational = null;
            if (i2 == 2) {
                Size maximumSize = getUpdatedSurfaceSizeDefinitionByFormat(256).getMaximumSize(256);
                if (maximumSize != null) {
                    rational = new Rational(maximumSize.getWidth(), maximumSize.getHeight());
                }
            } else if (i2 != 3) {
                ad2.e(this.targetAspectRatio, "Undefined targetAspectRatio: ");
                return null;
            }
        } else {
            rational = AspectRatioUtil.ASPECT_RATIO_16_9;
        }
        if (rational == null) {
            arrayList = new ArrayList(list);
        } else {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Size size : list) {
                if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
                    arrayList2.add(size);
                } else {
                    arrayList3.add(size);
                }
            }
            arrayList3.addAll(0, arrayList2);
            arrayList = arrayList3;
        }
        return this.resolutionCorrector.insertOrPrioritize(SurfaceConfig.Companion.getConfigType(i), arrayList);
    }

    public final boolean checkSupported(FeatureSettings featureSettings, List<SurfaceConfig> list, Map<SurfaceConfig, DynamicRange> map, List<? extends UseCaseConfig<?>> list2, List<Integer> list3) {
        featureSettings.getClass();
        list.getClass();
        map.getClass();
        list2.getClass();
        list3.getClass();
        List<SurfaceCombination> surfaceCombinationsByFeatureSettings = getSurfaceCombinationsByFeatureSettings(featureSettings);
        boolean z = false;
        if (!(surfaceCombinationsByFeatureSettings instanceof Collection) || !surfaceCombinationsByFeatureSettings.isEmpty()) {
            Iterator<T> it = surfaceCombinationsByFeatureSettings.iterator();
            while (it.hasNext()) {
                if (((SurfaceCombination) it.next()).getOrderedSupportedSurfaceConfigList(list) != null) {
                    z = true;
                    break;
                }
            }
        }
        if (!z || !featureSettings.getRequiresFeatureComboQuery()) {
            return z;
        }
        SessionConfig sessionConfigCreateFeatureComboSessionConfig = createFeatureComboSessionConfig(featureSettings, list, map, list2, list3);
        boolean zIsSupported = this.featureCombinationQuery.isSupported(sessionConfigCreateFeatureComboSessionConfig);
        List<DeferrableSurface> surfaces = sessionConfigCreateFeatureComboSessionConfig.getSurfaces();
        surfaces.getClass();
        Iterator<T> it2 = surfaces.iterator();
        while (it2.hasNext()) {
            ((DeferrableSurface) it2.next()).close();
        }
        return zIsSupported;
    }

    public final Map<UseCaseConfig<?>, List<Size>> filterSupportedSizes$camera_camera2(Map<UseCaseConfig<?>, ? extends List<Size>> map, FeatureSettings featureSettings, boolean z) {
        map.getClass();
        featureSettings.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (UseCaseConfig<?> useCaseConfig : map.keySet()) {
            ArrayList arrayList = new ArrayList();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            List<Size> list = map.get(useCaseConfig);
            list.getClass();
            for (Size size : list) {
                int inputFormat = useCaseConfig.getInputFormat();
                int customMaxFrameRate = useCaseConfig.getCustomMaxFrameRate(size);
                StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
                streamUseCase.getClass();
                populateReducedSizeListAndUniqueMaxFpsMap(featureSettings, size, inputFormat, customMaxFrameRate, streamUseCase, z, linkedHashMap2, arrayList);
            }
            linkedHashMap.put(useCaseConfig, arrayList);
        }
        return linkedHashMap;
    }

    public final Size getMaxOutputSizeByFormat$camera_camera2(StreamConfigurationMap streamConfigurationMap, int i, boolean z, Rational rational) {
        Size[] outputSizes = getOutputSizes(streamConfigurationMap, i, rational);
        if (outputSizes == null || outputSizes.length == 0) {
            return null;
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
        Size size = (Size) Collections.max(aq5.b(outputSizes), compareSizesByArea);
        Size size2 = SizeUtil.RESOLUTION_ZERO;
        if (z) {
            Size[] highResolutionOutputSizes = streamConfigurationMap != null ? streamConfigurationMap.getHighResolutionOutputSizes(i) : null;
            if (highResolutionOutputSizes != null && highResolutionOutputSizes.length != 0) {
                size2 = (Size) Collections.max(aq5.b(highResolutionOutputSizes), compareSizesByArea);
            }
        }
        return (Size) Collections.max(u96.i(size, size2), compareSizesByArea);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SurfaceStreamSpecQueryResult getSuggestedStreamSpecifications(int i, List<? extends AttachedSurfaceInfo> list, Map<UseCaseConfig<?>, ? extends List<Size>> map, VideoStabilization videoStabilization, boolean z, boolean z2, boolean z3) {
        b36 b36Var;
        list.getClass();
        map.getClass();
        videoStabilization.getClass();
        refreshPreviewSize();
        boolean zIsHighSpeedOn = HighSpeedResolver.Companion.isHighSpeedOn(list, map.keySet());
        Map<UseCaseConfig<?>, ? extends List<Size>> mapFilterCommonSupportedSizes = zIsHighSpeedOn ? this.highSpeedResolver.filterCommonSupportedSizes(map) : map;
        List<? extends UseCaseConfig<?>> listT0 = qn1.t0(mapFilterCommonSupportedSizes.keySet());
        List<Integer> useCasesPriorityOrder = getUseCasesPriorityOrder(listT0);
        Map<UseCaseConfig<?>, DynamicRange> mapResolveAndValidateDynamicRanges = this.dynamicRangeResolver.resolveAndValidateDynamicRanges(list, listT0, useCasesPriorityOrder);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "resolvedDynamicRanges = " + mapResolveAndValidateDynamicRanges);
        }
        boolean zIsUltraHdrOn = Companion.isUltraHdrOn(list, mapFilterCommonSupportedSizes);
        if (z3) {
            b36Var = new b36(Boolean.FALSE, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
        } else {
            boolean zIsStrictFpsRequired = isStrictFpsRequired(list, listT0);
            b36Var = new b36(Boolean.valueOf(zIsStrictFpsRequired), getTargetFpsRange(list, listT0, useCasesPriorityOrder, zIsStrictFpsRequired));
        }
        boolean zBooleanValue = ((Boolean) b36Var.b).booleanValue();
        Range<Integer> range = (Range) b36Var.c;
        boolean z4 = videoStabilization == VideoStabilization.PREVIEW;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "getSuggestedStreamSpecifications: isPreviewStabilizationSupported = " + this.isPreviewStabilizationSupported + ", isFeatureComboInvocation = " + z2);
        }
        if (z4 && !this.isPreviewStabilizationSupported && z2) {
            fg.c("Preview stabilization is not supported by the camera.");
            return null;
        }
        range.getClass();
        return resolveSpecsByCheckingMethod(getCheckingMethod(mapResolveAndValidateDynamicRanges.values(), range, videoStabilization, zIsUltraHdrOn, z2), createFeatureSettings(i, z, mapResolveAndValidateDynamicRanges, videoStabilization, zIsUltraHdrOn, zIsHighSpeedOn, z2, false, range, zBooleanValue), list, mapFilterCommonSupportedSizes, listT0, useCasesPriorityOrder, mapResolveAndValidateDynamicRanges, z3);
    }

    public final SurfaceSizeDefinition getSurfaceSizeDefinition$camera_camera2() {
        SurfaceSizeDefinition surfaceSizeDefinition = this.surfaceSizeDefinition;
        if (surfaceSizeDefinition != null) {
            return surfaceSizeDefinition;
        }
        aa4.j("surfaceSizeDefinition");
        throw null;
    }

    public final SurfaceSizeDefinition getUpdatedSurfaceSizeDefinitionByFormat(int i) {
        SupportedSurfaceCombination supportedSurfaceCombination;
        if (this.surfaceSizeDefinitionFormats.contains(Integer.valueOf(i))) {
            supportedSurfaceCombination = this;
        } else {
            Map<Integer, Size> s720pSizeMap = getSurfaceSizeDefinition$camera_camera2().getS720pSizeMap();
            s720pSizeMap.getClass();
            Size size = SizeUtil.RESOLUTION_720P;
            size.getClass();
            updateS720pOrS1440pSizeByFormat(s720pSizeMap, size, i);
            Map<Integer, Size> s1440pSizeMap = getSurfaceSizeDefinition$camera_camera2().getS1440pSizeMap();
            s1440pSizeMap.getClass();
            Size size2 = SizeUtil.RESOLUTION_1440P;
            size2.getClass();
            updateS720pOrS1440pSizeByFormat(s1440pSizeMap, size2, i);
            Map<Integer, Size> maximumSizeMap = getSurfaceSizeDefinition$camera_camera2().getMaximumSizeMap();
            maximumSizeMap.getClass();
            supportedSurfaceCombination = this;
            updateMaximumSizeByFormat$default(supportedSurfaceCombination, maximumSizeMap, i, null, 4, null);
            Map<Integer, Size> maximum4x3SizeMap = supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2().getMaximum4x3SizeMap();
            maximum4x3SizeMap.getClass();
            supportedSurfaceCombination.updateMaximumSizeByFormat(maximum4x3SizeMap, i, AspectRatioUtil.ASPECT_RATIO_4_3);
            Map<Integer, Size> maximum16x9SizeMap = supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2().getMaximum16x9SizeMap();
            maximum16x9SizeMap.getClass();
            supportedSurfaceCombination.updateMaximumSizeByFormat(maximum16x9SizeMap, i, AspectRatioUtil.ASPECT_RATIO_16_9);
            Map<Integer, Size> ultraMaximumSizeMap = supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2().getUltraMaximumSizeMap();
            ultraMaximumSizeMap.getClass();
            supportedSurfaceCombination.updateUltraMaximumSizeByFormat(ultraMaximumSizeMap, i);
            supportedSurfaceCombination.surfaceSizeDefinitionFormats.add(Integer.valueOf(i));
        }
        return supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2();
    }

    public final void setSurfaceSizeDefinition$camera_camera2(SurfaceSizeDefinition surfaceSizeDefinition) {
        surfaceSizeDefinition.getClass();
        this.surfaceSizeDefinition = surfaceSizeDefinition;
    }

    public final SurfaceConfig transformSurfaceConfig(int i, int i2, Size size, StreamUseCase streamUseCase) {
        size.getClass();
        streamUseCase.getClass();
        return SurfaceConfig.Companion.transformSurfaceConfig(i2, size, getUpdatedSurfaceSizeDefinitionByFormat(i2), i, SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isUltraHdrOn(List<? extends AttachedSurfaceInfo> list, Map<UseCaseConfig<?>, ? extends List<Size>> map) {
            Iterator<? extends AttachedSurfaceInfo> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().getImageFormat() == 4101) {
                    return true;
                }
            }
            Iterator<UseCaseConfig<?>> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                if (it2.next().getInputFormat() == 4101) {
                    return true;
                }
            }
            return false;
        }

        private Companion() {
        }
    }

    public static final class FeatureSettings {
        private final int cameraMode;
        private final boolean hasVideoCapture;
        private final boolean isFeatureComboInvocation;
        private final boolean isHighSpeedOn;
        private final boolean isStrictFpsRequired;
        private final boolean isUltraHdrOn;
        private final int requiredMaxBitDepth;
        private final boolean requiresFeatureComboQuery;
        private final Range<Integer> targetFpsRange;
        private final VideoStabilization videoStabilization;

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ FeatureSettings(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range range, boolean z6, int i3, jh2 jh2Var) {
            z = (i3 & 4) != 0 ? false : z;
            videoStabilization = (i3 & 8) != 0 ? VideoStabilization.UNSPECIFIED : videoStabilization;
            z2 = (i3 & 16) != 0 ? false : z2;
            z3 = (i3 & 32) != 0 ? false : z3;
            z4 = (i3 & 64) != 0 ? false : z4;
            z5 = (i3 & 128) != 0 ? false : z5;
            if ((i3 & 256) != 0) {
                range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
                range.getClass();
            }
            this(i, i2, z, videoStabilization, z2, z3, z4, z5, range, (i3 & 512) != 0 ? false : z6);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ FeatureSettings copy$default(FeatureSettings featureSettings, int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range range, boolean z6, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = featureSettings.cameraMode;
            }
            if ((i3 & 2) != 0) {
                i2 = featureSettings.requiredMaxBitDepth;
            }
            if ((i3 & 4) != 0) {
                z = featureSettings.hasVideoCapture;
            }
            if ((i3 & 8) != 0) {
                videoStabilization = featureSettings.videoStabilization;
            }
            if ((i3 & 16) != 0) {
                z2 = featureSettings.isUltraHdrOn;
            }
            if ((i3 & 32) != 0) {
                z3 = featureSettings.isHighSpeedOn;
            }
            if ((i3 & 64) != 0) {
                z4 = featureSettings.isFeatureComboInvocation;
            }
            if ((i3 & 128) != 0) {
                z5 = featureSettings.requiresFeatureComboQuery;
            }
            if ((i3 & 256) != 0) {
                range = featureSettings.targetFpsRange;
            }
            if ((i3 & 512) != 0) {
                z6 = featureSettings.isStrictFpsRequired;
            }
            Range range2 = range;
            boolean z7 = z6;
            boolean z8 = z4;
            boolean z9 = z5;
            boolean z10 = z2;
            boolean z11 = z3;
            return featureSettings.copy(i, i2, z, videoStabilization, z10, z11, z8, z9, range2, z7);
        }

        public final int component1() {
            return this.cameraMode;
        }

        public final boolean component10() {
            return this.isStrictFpsRequired;
        }

        public final int component2() {
            return this.requiredMaxBitDepth;
        }

        public final boolean component3() {
            return this.hasVideoCapture;
        }

        public final VideoStabilization component4() {
            return this.videoStabilization;
        }

        public final boolean component5() {
            return this.isUltraHdrOn;
        }

        public final boolean component6() {
            return this.isHighSpeedOn;
        }

        public final boolean component7() {
            return this.isFeatureComboInvocation;
        }

        public final boolean component8() {
            return this.requiresFeatureComboQuery;
        }

        public final Range<Integer> component9() {
            return this.targetFpsRange;
        }

        public final FeatureSettings copy(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range<Integer> range, boolean z6) {
            videoStabilization.getClass();
            range.getClass();
            return new FeatureSettings(i, i2, z, videoStabilization, z2, z3, z4, z5, range, z6);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FeatureSettings)) {
                return false;
            }
            FeatureSettings featureSettings = (FeatureSettings) obj;
            return this.cameraMode == featureSettings.cameraMode && this.requiredMaxBitDepth == featureSettings.requiredMaxBitDepth && this.hasVideoCapture == featureSettings.hasVideoCapture && this.videoStabilization == featureSettings.videoStabilization && this.isUltraHdrOn == featureSettings.isUltraHdrOn && this.isHighSpeedOn == featureSettings.isHighSpeedOn && this.isFeatureComboInvocation == featureSettings.isFeatureComboInvocation && this.requiresFeatureComboQuery == featureSettings.requiresFeatureComboQuery && aa4.e(this.targetFpsRange, featureSettings.targetFpsRange) && this.isStrictFpsRequired == featureSettings.isStrictFpsRequired;
        }

        public final int getCameraMode() {
            return this.cameraMode;
        }

        public final boolean getHasVideoCapture() {
            return this.hasVideoCapture;
        }

        public final int getRequiredMaxBitDepth() {
            return this.requiredMaxBitDepth;
        }

        public final boolean getRequiresFeatureComboQuery() {
            return this.requiresFeatureComboQuery;
        }

        public final Range<Integer> getTargetFpsRange() {
            return this.targetFpsRange;
        }

        public final VideoStabilization getVideoStabilization() {
            return this.videoStabilization;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isStrictFpsRequired) + ((this.targetFpsRange.hashCode() + tg.c(tg.c(tg.c(tg.c((this.videoStabilization.hashCode() + tg.c(ej0.b(this.requiredMaxBitDepth, Integer.hashCode(this.cameraMode) * 31, 31), 31, this.hasVideoCapture)) * 31, 31, this.isUltraHdrOn), 31, this.isHighSpeedOn), 31, this.isFeatureComboInvocation), 31, this.requiresFeatureComboQuery)) * 31);
        }

        public final boolean isFeatureComboInvocation() {
            return this.isFeatureComboInvocation;
        }

        public final boolean isHighSpeedOn() {
            return this.isHighSpeedOn;
        }

        public final boolean isStrictFpsRequired() {
            return this.isStrictFpsRequired;
        }

        public final boolean isUltraHdrOn() {
            return this.isUltraHdrOn;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("FeatureSettings(cameraMode=");
            sb.append(this.cameraMode);
            sb.append(", requiredMaxBitDepth=");
            sb.append(this.requiredMaxBitDepth);
            sb.append(", hasVideoCapture=");
            sb.append(this.hasVideoCapture);
            sb.append(", videoStabilization=");
            sb.append(this.videoStabilization);
            sb.append(", isUltraHdrOn=");
            sb.append(this.isUltraHdrOn);
            sb.append(", isHighSpeedOn=");
            sb.append(this.isHighSpeedOn);
            sb.append(", isFeatureComboInvocation=");
            sb.append(this.isFeatureComboInvocation);
            sb.append(", requiresFeatureComboQuery=");
            sb.append(this.requiresFeatureComboQuery);
            sb.append(", targetFpsRange=");
            sb.append(this.targetFpsRange);
            sb.append(", isStrictFpsRequired=");
            return sg.d(sb, this.isStrictFpsRequired, ')');
        }

        public FeatureSettings(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range<Integer> range, boolean z6) {
            videoStabilization.getClass();
            range.getClass();
            this.cameraMode = i;
            this.requiredMaxBitDepth = i2;
            this.hasVideoCapture = z;
            this.videoStabilization = videoStabilization;
            this.isUltraHdrOn = z2;
            this.isHighSpeedOn = z3;
            this.isFeatureComboInvocation = z4;
            this.requiresFeatureComboQuery = z5;
            this.targetFpsRange = range;
            this.isStrictFpsRequired = z6;
        }
    }

    private final int getMaxFrameRate(int i, Size size, boolean z, int i2) {
        int maxFrameRate;
        if (!z) {
            maxFrameRate = getMaxFrameRate(i, size);
        } else if (i == 34) {
            maxFrameRate = this.highSpeedResolver.getMaxFrameRate(size);
        } else {
            ah.f("Check failed.");
            return 0;
        }
        return Math.min(i2, maxFrameRate);
    }
}
