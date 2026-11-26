package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.ah;
import defpackage.kx2;
import defpackage.l1;
import defpackage.uz4;
import defpackage.xg;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class StreamUseCaseUtil {
    public static final StreamUseCaseUtil INSTANCE = new StreamUseCaseUtil();
    private static final Config.Option<Long> STREAM_USE_CASE_STREAM_SPEC_OPTION;
    private static final Map<Long, Set<UseCaseConfigFactory.CaptureType>> STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP;
    private static final Map<Long, Set<UseCaseConfigFactory.CaptureType>> STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UseCaseConfigFactory.CaptureType.values().length];
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.STREAM_SHARING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.PREVIEW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        Class cls = Long.TYPE;
        cls.getClass();
        Config.Option<Long> optionCreate = Config.Option.create("camera2.streamSpec.streamUseCase", cls);
        optionCreate.getClass();
        STREAM_USE_CASE_STREAM_SPEC_OPTION = optionCreate;
        uz4 uz4Var = new uz4();
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            UseCaseConfigFactory.CaptureType captureType = UseCaseConfigFactory.CaptureType.PREVIEW;
            UseCaseConfigFactory.CaptureType captureType2 = UseCaseConfigFactory.CaptureType.METERING_REPEATING;
            UseCaseConfigFactory.CaptureType captureType3 = UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS;
            uz4Var.put(4L, yr.k0(new UseCaseConfigFactory.CaptureType[]{captureType, captureType2, captureType3}));
            uz4Var.put(1L, yr.k0(new UseCaseConfigFactory.CaptureType[]{captureType, captureType2, captureType3}));
            uz4Var.put(2L, l1.f(UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE));
            uz4Var.put(3L, l1.f(UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE));
        }
        STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP = uz4Var.b();
        uz4 uz4Var2 = new uz4();
        if (i >= 33) {
            UseCaseConfigFactory.CaptureType captureType4 = UseCaseConfigFactory.CaptureType.PREVIEW;
            UseCaseConfigFactory.CaptureType captureType5 = UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE;
            UseCaseConfigFactory.CaptureType captureType6 = UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
            uz4Var2.put(4L, yr.k0(new UseCaseConfigFactory.CaptureType[]{captureType4, captureType5, captureType6}));
            uz4Var2.put(3L, yr.k0(new UseCaseConfigFactory.CaptureType[]{captureType4, captureType6}));
        }
        STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP = uz4Var2.b();
    }

    private StreamUseCaseUtil() {
    }

    private final boolean areStreamUseCasesAvailable(Set<Long> set, Set<Long> set2) {
        Iterator<Long> it = set2.iterator();
        while (it.hasNext()) {
            if (!set.contains(Long.valueOf(it.next().longValue()))) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ void getSTREAM_USE_CASE_STREAM_SPEC_OPTION$annotations() {
    }

    private final int getSessionConfigTemplateType(UseCaseConfigFactory.CaptureType captureType, int i) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[captureType.ordinal()];
        if (i2 != 1) {
            return (i2 == 2 || i2 == 3) ? 3 : 1;
        }
        return i == 2 ? 5 : 1;
    }

    private final Config getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Config config, Long l) {
        Config.Option<Long> option = STREAM_USE_CASE_STREAM_SPEC_OPTION;
        if (config.containsOption(option) && aa4.e(config.retrieveOption(option), l)) {
            return null;
        }
        MutableOptionsBundle mutableOptionsBundleFrom = MutableOptionsBundle.from(config);
        mutableOptionsBundleFrom.getClass();
        mutableOptionsBundleFrom.insertOption(option, l);
        return new Camera2ImplConfig(mutableOptionsBundleFrom);
    }

    private final boolean isEligibleCaptureType(UseCaseConfigFactory.CaptureType captureType, long j, List<? extends UseCaseConfigFactory.CaptureType> list) {
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        if (captureType != UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
            Map<Long, Set<UseCaseConfigFactory.CaptureType>> map = STREAM_USE_CASE_TO_ELIGIBLE_CAPTURE_TYPES_MAP;
            if (map.containsKey(Long.valueOf(j))) {
                Set<UseCaseConfigFactory.CaptureType> set = map.get(Long.valueOf(j));
                set.getClass();
                if (set.contains(captureType)) {
                    return true;
                }
            }
            return false;
        }
        Map<Long, Set<UseCaseConfigFactory.CaptureType>> map2 = STREAM_USE_CASE_TO_ELIGIBLE_STREAM_SHARING_CHILDREN_TYPES_MAP;
        if (!map2.containsKey(Long.valueOf(j))) {
            return false;
        }
        Set<UseCaseConfigFactory.CaptureType> set2 = map2.get(Long.valueOf(j));
        set2.getClass();
        Set<UseCaseConfigFactory.CaptureType> set3 = set2;
        if (list.size() != set3.size()) {
            return false;
        }
        Iterator<? extends UseCaseConfigFactory.CaptureType> it = list.iterator();
        while (it.hasNext()) {
            if (!set3.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0028  */
    private final boolean isValidCamera2InteropOverride(List<? extends AttachedSurfaceInfo> list, List<? extends UseCaseConfig<?>> list2, Set<Long> set) {
        boolean z;
        boolean z2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<? extends AttachedSurfaceInfo> it = list.iterator();
        if (it.hasNext()) {
            AttachedSurfaceInfo next = it.next();
            Config implementationOptions = next.getImplementationOptions();
            implementationOptions.getClass();
            Config.Option<Long> option = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
            if (implementationOptions.containsOption(option)) {
                Config implementationOptions2 = next.getImplementationOptions();
                implementationOptions2.getClass();
                Object objRetrieveOption = implementationOptions2.retrieveOption(option);
                objRetrieveOption.getClass();
                if (((Number) objRetrieveOption).longValue() == 0) {
                    z2 = true;
                    z = false;
                } else {
                    z = true;
                    z2 = false;
                }
            } else {
                z2 = true;
                z = false;
            }
        } else {
            z = false;
            z2 = false;
        }
        for (UseCaseConfig<?> useCaseConfig : list2) {
            Config.Option<?> option2 = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
            if (useCaseConfig.containsOption(option2)) {
                Object objRetrieveOption2 = useCaseConfig.retrieveOption(option2);
                objRetrieveOption2.getClass();
                long jLongValue = ((Number) objRetrieveOption2).longValue();
                if (jLongValue != 0) {
                    if (z2) {
                        throwInvalidCamera2InteropOverrideException();
                    }
                    linkedHashSet.add(Long.valueOf(jLongValue));
                    z = true;
                } else if (z) {
                    throwInvalidCamera2InteropOverrideException();
                }
            } else if (z) {
                throwInvalidCamera2InteropOverrideException();
            }
            z2 = true;
        }
        return !z2 && areStreamUseCasesAvailable(set, linkedHashSet);
    }

    private final boolean isZslUseCase(Config config, UseCaseConfigFactory.CaptureType captureType) {
        Object objRetrieveOption = config.retrieveOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.FALSE);
        objRetrieveOption.getClass();
        if (((Boolean) objRetrieveOption).booleanValue()) {
            return false;
        }
        Config.Option<Integer> option = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        if (!config.containsOption(option)) {
            return false;
        }
        Object objRetrieveOption2 = config.retrieveOption(option);
        objRetrieveOption2.getClass();
        return getSessionConfigTemplateType(captureType, ((Number) objRetrieveOption2).intValue()) == 5;
    }

    private final void throwInvalidCamera2InteropOverrideException() {
        throw new IllegalArgumentException("Either all use cases must have non-default stream use case assigned or none should have it");
    }

    public final boolean areCaptureTypesEligible(Map<Integer, ? extends AttachedSurfaceInfo> map, Map<Integer, ? extends UseCaseConfig<?>> map2, List<SurfaceConfig> list) {
        List<UseCaseConfigFactory.CaptureType> captureTypes;
        map.getClass();
        map2.getClass();
        list.getClass();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            long value = list.get(i).getStreamUseCase().getValue();
            if (map.containsKey(Integer.valueOf(i))) {
                AttachedSurfaceInfo attachedSurfaceInfo = map.get(Integer.valueOf(i));
                attachedSurfaceInfo.getClass();
                UseCaseConfigFactory.CaptureType captureType = attachedSurfaceInfo.getCaptureTypes().size() == 1 ? attachedSurfaceInfo.getCaptureTypes().get(0) : UseCaseConfigFactory.CaptureType.STREAM_SHARING;
                captureType.getClass();
                List<UseCaseConfigFactory.CaptureType> captureTypes2 = attachedSurfaceInfo.getCaptureTypes();
                captureTypes2.getClass();
                if (!isEligibleCaptureType(captureType, value, captureTypes2)) {
                    return false;
                }
            } else {
                if (!map2.containsKey(Integer.valueOf(i))) {
                    xg.d("SurfaceConfig does not map to any use case");
                    return false;
                }
                UseCaseConfig<?> useCaseConfig = map2.get(Integer.valueOf(i));
                useCaseConfig.getClass();
                UseCaseConfig<?> useCaseConfig2 = useCaseConfig;
                UseCaseConfigFactory.CaptureType captureType2 = useCaseConfig2.getCaptureType();
                captureType2.getClass();
                if (useCaseConfig2.getCaptureType() == UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
                    captureTypes = ((StreamSharingConfig) useCaseConfig2).getCaptureTypes();
                    captureTypes.getClass();
                } else {
                    captureTypes = kx2.b;
                }
                if (!isEligibleCaptureType(captureType2, value, captureTypes)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean areStreamUseCasesAvailableForSurfaceConfigs(CameraMetadata cameraMetadata, List<SurfaceConfig> list) {
        cameraMetadata.getClass();
        list.getClass();
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
        key.getClass();
        long[] jArr = (long[]) cameraMetadata.get(key);
        if (jArr == null || jArr.length == 0) {
            return false;
        }
        HashSet hashSet = new HashSet();
        for (long j : jArr) {
            hashSet.add(Long.valueOf(j));
        }
        Iterator<SurfaceConfig> it = list.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains(Long.valueOf(it.next().getStreamUseCase().getValue()))) {
                return false;
            }
        }
        return true;
    }

    public final boolean containsZslUseCase(List<? extends AttachedSurfaceInfo> list, List<? extends UseCaseConfig<?>> list2) {
        list.getClass();
        list2.getClass();
        for (AttachedSurfaceInfo attachedSurfaceInfo : list) {
            List<UseCaseConfigFactory.CaptureType> captureTypes = attachedSurfaceInfo.getCaptureTypes();
            captureTypes.getClass();
            UseCaseConfigFactory.CaptureType captureType = captureTypes.get(0);
            Config implementationOptions = attachedSurfaceInfo.getImplementationOptions();
            implementationOptions.getClass();
            captureType.getClass();
            if (isZslUseCase(implementationOptions, captureType)) {
                return true;
            }
        }
        for (UseCaseConfig<?> useCaseConfig : list2) {
            UseCaseConfigFactory.CaptureType captureType2 = useCaseConfig.getCaptureType();
            captureType2.getClass();
            if (isZslUseCase(useCaseConfig, captureType2)) {
                return true;
            }
        }
        return false;
    }

    public final Config.Option<Long> getSTREAM_USE_CASE_STREAM_SPEC_OPTION() {
        return STREAM_USE_CASE_STREAM_SPEC_OPTION;
    }

    public final Camera2ImplConfig getStreamSpecImplementationOptions(UseCaseConfig<?> useCaseConfig) {
        useCaseConfig.getClass();
        MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
        mutableOptionsBundleCreate.getClass();
        Config.Option<?> option = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
        if (useCaseConfig.containsOption(option)) {
            mutableOptionsBundleCreate.insertOption(option, useCaseConfig.retrieveOption(option));
        }
        Config.Option<?> option2 = UseCaseConfig.OPTION_ZSL_DISABLED;
        if (useCaseConfig.containsOption(option2)) {
            mutableOptionsBundleCreate.insertOption(option2, useCaseConfig.retrieveOption(option2));
        }
        Config.Option<?> option3 = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        if (useCaseConfig.containsOption(option3)) {
            mutableOptionsBundleCreate.insertOption(option3, useCaseConfig.retrieveOption(option3));
        }
        Config.Option<?> option4 = ImageInputConfig.OPTION_INPUT_FORMAT;
        if (useCaseConfig.containsOption(option4)) {
            mutableOptionsBundleCreate.insertOption(option4, useCaseConfig.retrieveOption(option4));
        }
        return new Camera2ImplConfig(mutableOptionsBundleCreate);
    }

    public final boolean isStreamUseCaseSupported(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
        key.getClass();
        long[] jArr = (long[]) cameraMetadata.get(key);
        return (jArr == null || jArr.length == 0) ? false : true;
    }

    public final boolean populateStreamUseCaseStreamSpecOptionWithInteropOverride(CameraMetadata cameraMetadata, List<? extends AttachedSurfaceInfo> list, Map<UseCaseConfig<?>, StreamSpec> map, Map<AttachedSurfaceInfo, StreamSpec> map2) {
        cameraMetadata.getClass();
        list.getClass();
        map.getClass();
        map2.getClass();
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        ArrayList arrayList = new ArrayList(map.keySet());
        Iterator<? extends AttachedSurfaceInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getImplementationOptions() == null) {
                ah.f("Required value was null.");
                return false;
            }
        }
        Iterator<? extends UseCaseConfig<?>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            StreamSpec streamSpec = map.get(it2.next());
            if (streamSpec == null) {
                ah.f("Required value was null.");
                return false;
            }
            if (streamSpec.getImplementationOptions() == null) {
                ah.f("Required value was null.");
                return false;
            }
        }
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
        key.getClass();
        long[] jArr = (long[]) cameraMetadata.get(key);
        if (jArr != null && jArr.length != 0) {
            HashSet hashSet = new HashSet();
            for (long j : jArr) {
                hashSet.add(Long.valueOf(j));
            }
            if (isValidCamera2InteropOverride(list, arrayList, hashSet)) {
                for (AttachedSurfaceInfo attachedSurfaceInfo : list) {
                    Config implementationOptions = attachedSurfaceInfo.getImplementationOptions();
                    implementationOptions.getClass();
                    Config updatedImplementationOptionsWithUseCaseStreamSpecOption = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions, (Long) implementationOptions.retrieveOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION));
                    if (updatedImplementationOptionsWithUseCaseStreamSpecOption != null) {
                        map2.put(attachedSurfaceInfo, attachedSurfaceInfo.toStreamSpec(updatedImplementationOptionsWithUseCaseStreamSpecOption));
                    }
                }
                for (UseCaseConfig<?> useCaseConfig : arrayList) {
                    StreamSpec streamSpec2 = map.get(useCaseConfig);
                    streamSpec2.getClass();
                    Config implementationOptions2 = streamSpec2.getImplementationOptions();
                    implementationOptions2.getClass();
                    Config updatedImplementationOptionsWithUseCaseStreamSpecOption2 = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions2, (Long) implementationOptions2.retrieveOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION));
                    if (updatedImplementationOptionsWithUseCaseStreamSpecOption2 != null) {
                        map.put(useCaseConfig, streamSpec2.toBuilder().setImplementationOptions(updatedImplementationOptionsWithUseCaseStreamSpecOption2).build());
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(Map<UseCaseConfig<?>, StreamSpec> map, Map<AttachedSurfaceInfo, StreamSpec> map2, Map<Integer, ? extends AttachedSurfaceInfo> map3, Map<Integer, ? extends UseCaseConfig<?>> map4, List<SurfaceConfig> list) {
        map.getClass();
        map2.getClass();
        map3.getClass();
        map4.getClass();
        list.getClass();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            long value = list.get(i).getStreamUseCase().getValue();
            if (map3.containsKey(Integer.valueOf(i))) {
                AttachedSurfaceInfo attachedSurfaceInfo = map3.get(Integer.valueOf(i));
                attachedSurfaceInfo.getClass();
                Config implementationOptions = attachedSurfaceInfo.getImplementationOptions();
                implementationOptions.getClass();
                Config updatedImplementationOptionsWithUseCaseStreamSpecOption = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions, Long.valueOf(value));
                if (updatedImplementationOptionsWithUseCaseStreamSpecOption != null) {
                    map2.put(attachedSurfaceInfo, attachedSurfaceInfo.toStreamSpec(updatedImplementationOptionsWithUseCaseStreamSpecOption));
                }
            } else {
                if (!map4.containsKey(Integer.valueOf(i))) {
                    xg.d("SurfaceConfig does not map to any use case");
                    return;
                }
                UseCaseConfig<?> useCaseConfig = map4.get(Integer.valueOf(i));
                useCaseConfig.getClass();
                UseCaseConfig<?> useCaseConfig2 = useCaseConfig;
                StreamSpec streamSpec = map.get(useCaseConfig2);
                streamSpec.getClass();
                Config implementationOptions2 = streamSpec.getImplementationOptions();
                implementationOptions2.getClass();
                Config updatedImplementationOptionsWithUseCaseStreamSpecOption2 = getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(implementationOptions2, Long.valueOf(value));
                if (updatedImplementationOptionsWithUseCaseStreamSpecOption2 != null) {
                    StreamSpec streamSpecBuild = streamSpec.toBuilder().setImplementationOptions(updatedImplementationOptionsWithUseCaseStreamSpecOption2).build();
                    streamSpecBuild.getClass();
                    map.put(useCaseConfig2, streamSpecBuild);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void populateSurfaceToStreamUseCaseMapping(Collection<SessionConfig> collection, Collection<? extends UseCaseConfig<?>> collection2, Map<DeferrableSurface, Long> map) {
        collection.getClass();
        collection2.getClass();
        map.getClass();
        ArrayList arrayList = new ArrayList(collection2);
        for (SessionConfig sessionConfig : collection) {
            Config implementationOptions = sessionConfig.getImplementationOptions();
            Config.Option<Long> option = STREAM_USE_CASE_STREAM_SPEC_OPTION;
            if (implementationOptions.containsOption(option) && sessionConfig.getSurfaces().size() != 1) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled(Log.TAG)) {
                    android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "StreamUseCaseUtil: SessionConfig has stream use case but also contains " + sessionConfig.getSurfaces().size() + " surfaces, abort populateSurfaceToStreamUseCaseMapping().");
                    return;
                }
                return;
            }
            if (sessionConfig.getImplementationOptions().containsOption(option)) {
                int i = 0;
                for (SessionConfig sessionConfig2 : collection) {
                    if (((UseCaseConfig) arrayList.get(i)).getCaptureType() == UseCaseConfigFactory.CaptureType.METERING_REPEATING) {
                        List<DeferrableSurface> surfaces = sessionConfig2.getSurfaces();
                        surfaces.getClass();
                        Preconditions.checkState(!surfaces.isEmpty(), "MeteringRepeating should contain a surface");
                        map.put(sessionConfig2.getSurfaces().get(0), 1L);
                    } else {
                        Config implementationOptions2 = sessionConfig2.getImplementationOptions();
                        Config.Option<Long> option2 = STREAM_USE_CASE_STREAM_SPEC_OPTION;
                        if (implementationOptions2.containsOption(option2)) {
                            List<DeferrableSurface> surfaces2 = sessionConfig2.getSurfaces();
                            surfaces2.getClass();
                            if (!surfaces2.isEmpty()) {
                                DeferrableSurface deferrableSurface = sessionConfig2.getSurfaces().get(0);
                                Object objRetrieveOption = sessionConfig2.getImplementationOptions().retrieveOption(option2);
                                objRetrieveOption.getClass();
                                map.put(deferrableSurface, objRetrieveOption);
                            }
                        }
                    }
                    i++;
                }
                break;
            }
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "populateSurfaceToStreamUseCaseMapping() - streamUseCaseMap = " + map);
        }
    }

    public final boolean shouldUseStreamUseCase(SupportedSurfaceCombination.FeatureSettings featureSettings) {
        featureSettings.getClass();
        return featureSettings.getCameraMode() == 0 && featureSettings.getRequiredMaxBitDepth() == 8 && !featureSettings.isHighSpeedOn();
    }
}
