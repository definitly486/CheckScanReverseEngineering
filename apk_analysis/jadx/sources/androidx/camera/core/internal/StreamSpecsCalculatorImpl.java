package androidx.camera.core.internal;

import android.graphics.Rect;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.streamsharing.StreamSharing;
import defpackage.ah;
import defpackage.du6;
import defpackage.fg;
import defpackage.jh2;
import defpackage.n05;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class StreamSpecsCalculatorImpl implements StreamSpecsCalculator {
    private static final Companion Companion = new Companion(null);
    private static final String TAG = "StreamSpecsCalculatorImpl";
    private CameraDeviceSurfaceManager cameraDeviceSurfaceManager;
    private final UseCaseConfigFactory useCaseConfigFactory;

    public StreamSpecsCalculatorImpl(UseCaseConfigFactory useCaseConfigFactory, CameraDeviceSurfaceManager cameraDeviceSurfaceManager) {
        useCaseConfigFactory.getClass();
        this.useCaseConfigFactory = useCaseConfigFactory;
        this.cameraDeviceSurfaceManager = cameraDeviceSurfaceManager;
    }

    private final Pair<Map<UseCase, StreamSpec>, Map<AttachedSurfaceInfo, UseCase>> calculateSuggestedStreamSpecsForAttachedUseCases(int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list) {
        ArrayList arrayList = new ArrayList();
        String cameraId = cameraInfoInternal.getCameraId();
        cameraId.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (UseCase useCase : list) {
            StreamSpec attachedStreamSpec = useCase.getAttachedStreamSpec();
            if (attachedStreamSpec == null) {
                fg.c("Attached stream spec cannot be null for already attached use cases.");
                return null;
            }
            CameraDeviceSurfaceManager cameraDeviceSurfaceManager = this.cameraDeviceSurfaceManager;
            if (cameraDeviceSurfaceManager == null) {
                ah.f("Required value was null.");
                return null;
            }
            int imageFormat = useCase.getImageFormat();
            Size attachedSurfaceResolution = useCase.getAttachedSurfaceResolution();
            if (attachedSurfaceResolution == null) {
                fg.c("Attached surface resolution cannot be null for already attached use cases.");
                return null;
            }
            SurfaceConfig surfaceConfigTransformSurfaceConfig = cameraDeviceSurfaceManager.transformSurfaceConfig(i, cameraId, imageFormat, attachedSurfaceResolution, useCase.getCurrentConfig().getStreamUseCase());
            surfaceConfigTransformSurfaceConfig.getClass();
            int imageFormat2 = useCase.getImageFormat();
            Size attachedSurfaceResolution2 = useCase.getAttachedSurfaceResolution();
            attachedSurfaceResolution2.getClass();
            DynamicRange dynamicRange = attachedStreamSpec.getDynamicRange();
            List<UseCaseConfigFactory.CaptureType> captureTypes = StreamSharing.getCaptureTypes(useCase);
            Config implementationOptions = attachedStreamSpec.getImplementationOptions();
            int sessionType = useCase.getCurrentConfig().getSessionType(0);
            Range<Integer> targetFrameRate = useCase.getCurrentConfig().getTargetFrameRate(StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
            if (targetFrameRate == null) {
                fg.c("Required value was null.");
                return null;
            }
            boolean zIsStrictFrameRateRequired = useCase.getCurrentConfig().isStrictFrameRateRequired();
            UseCaseConfig<?> currentConfig = useCase.getCurrentConfig();
            Size attachedSurfaceResolution3 = useCase.getAttachedSurfaceResolution();
            attachedSurfaceResolution3.getClass();
            AttachedSurfaceInfo attachedSurfaceInfoCreate = AttachedSurfaceInfo.create(surfaceConfigTransformSurfaceConfig, imageFormat2, attachedSurfaceResolution2, dynamicRange, captureTypes, implementationOptions, sessionType, targetFrameRate, zIsStrictFrameRateRequired, currentConfig.getCustomMaxFrameRate(attachedSurfaceResolution3));
            attachedSurfaceInfoCreate.getClass();
            arrayList.add(attachedSurfaceInfoCreate);
            linkedHashMap2.put(attachedSurfaceInfoCreate, useCase);
            linkedHashMap.put(useCase, attachedStreamSpec);
        }
        return new Pair<>(linkedHashMap, linkedHashMap2);
    }

    private final StreamSpecQueryResult calculateSuggestedStreamSpecsForNewUseCases(int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, Map<AttachedSurfaceInfo, ? extends UseCase> map, Map<UseCase, ? extends CameraUseCaseAdapter.ConfigPair> map2, boolean z, boolean z2) {
        int iComponent3;
        Rect sensorRect;
        String cameraId = cameraInfoInternal.getCameraId();
        cameraId.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list.isEmpty()) {
            iComponent3 = Integer.MAX_VALUE;
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            try {
                sensorRect = cameraInfoInternal.getSensorRect();
            } catch (NullPointerException unused) {
                sensorRect = null;
            }
            SupportedOutputSizesSorter supportedOutputSizesSorter = new SupportedOutputSizesSorter(cameraInfoInternal, sensorRect != null ? TransformUtils.rectToSize(sensorRect) : null);
            for (UseCase useCase : list) {
                CameraUseCaseAdapter.ConfigPair configPair = map2.get(useCase);
                if (configPair == null) {
                    fg.c("Required value was null.");
                    return null;
                }
                CameraUseCaseAdapter.ConfigPair configPair2 = configPair;
                UseCaseConfig<?> useCaseConfigMergeConfigs = useCase.mergeConfigs(cameraInfoInternal, configPair2.mExtendedConfig, configPair2.mCameraConfig);
                useCaseConfigMergeConfigs.getClass();
                linkedHashMap2.put(useCaseConfigMergeConfigs, useCase);
                linkedHashMap3.put(useCaseConfigMergeConfigs, supportedOutputSizesSorter.getSortedSupportedOutputSizes(useCaseConfigMergeConfigs));
            }
            List<? extends UseCase> list2 = list;
            VideoStabilization videoStabilization = UseCaseUtil.getVideoStabilization(list2, new du6(1, map2, cameraInfoInternal));
            CameraDeviceSurfaceManager cameraDeviceSurfaceManager = this.cameraDeviceSurfaceManager;
            if (cameraDeviceSurfaceManager == null) {
                ah.f("Required value was null.");
                return null;
            }
            SurfaceStreamSpecQueryResult suggestedStreamSpecs = cameraDeviceSurfaceManager.getSuggestedStreamSpecs(i, cameraId, new ArrayList(map.keySet()), linkedHashMap3, videoStabilization, UseCaseUtil.containsVideoCapture(list2), z, z2);
            suggestedStreamSpecs.getClass();
            Map<UseCaseConfig<?>, StreamSpec> mapComponent1 = suggestedStreamSpecs.component1();
            Map<AttachedSurfaceInfo, StreamSpec> mapComponent2 = suggestedStreamSpecs.component2();
            iComponent3 = suggestedStreamSpecs.component3();
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                Object value = entry.getValue();
                StreamSpec streamSpec = mapComponent1.get(entry.getKey());
                if (streamSpec == null) {
                    fg.c("Required value was null.");
                    return null;
                }
                linkedHashMap.put(value, streamSpec);
            }
            for (Map.Entry<AttachedSurfaceInfo, StreamSpec> entry2 : mapComponent2.entrySet()) {
                if (map.containsKey(entry2.getKey())) {
                    UseCase useCase2 = map.get(entry2.getKey());
                    if (useCase2 == null) {
                        fg.c("Required value was null.");
                        return null;
                    }
                    linkedHashMap.put(useCase2, entry2.getValue());
                }
            }
        }
        return new StreamSpecQueryResult(linkedHashMap, iComponent3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseConfig calculateSuggestedStreamSpecsForNewUseCases$lambda$0(Map map, CameraInfoInternal cameraInfoInternal, UseCase useCase) {
        useCase.getClass();
        Object obj = map.get(useCase);
        if (obj == null) {
            fg.c("Required value was null.");
            return null;
        }
        CameraUseCaseAdapter.ConfigPair configPair = (CameraUseCaseAdapter.ConfigPair) obj;
        UseCaseConfig<?> useCaseConfigMergeConfigs = useCase.mergeConfigs(cameraInfoInternal, configPair.mExtendedConfig, configPair.mCameraConfig);
        useCaseConfigMergeConfigs.getClass();
        return useCaseConfigMergeConfigs;
    }

    @Override // androidx.camera.core.internal.StreamSpecsCalculator
    public StreamSpecQueryResult calculateSuggestedStreamSpecs(int i, CameraInfoInternal cameraInfoInternal, List<? extends UseCase> list, List<? extends UseCase> list2, CameraConfig cameraConfig, int i2, Range<Integer> range, boolean z, boolean z2) {
        cameraInfoInternal.getClass();
        list.getClass();
        list2.getClass();
        cameraConfig.getClass();
        range.getClass();
        Pair<Map<UseCase, StreamSpec>, Map<AttachedSurfaceInfo, UseCase>> pairCalculateSuggestedStreamSpecsForAttachedUseCases = calculateSuggestedStreamSpecsForAttachedUseCases(i, cameraInfoInternal, list2);
        Object obj = pairCalculateSuggestedStreamSpecsForAttachedUseCases.second;
        obj.getClass();
        Map<UseCase, CameraUseCaseAdapter.ConfigPair> configs = CameraUseCaseAdapter.getConfigs(list, cameraConfig.getUseCaseConfigFactory(), this.useCaseConfigFactory, i2, range);
        configs.getClass();
        StreamSpecQueryResult streamSpecQueryResultCalculateSuggestedStreamSpecsForNewUseCases = calculateSuggestedStreamSpecsForNewUseCases(i, cameraInfoInternal, list, (Map) obj, configs, z, z2);
        Object obj2 = pairCalculateSuggestedStreamSpecsForAttachedUseCases.first;
        obj2.getClass();
        return new StreamSpecQueryResult(n05.g((Map) obj2, streamSpecQueryResultCalculateSuggestedStreamSpecsForNewUseCases.getStreamSpecs()), streamSpecQueryResultCalculateSuggestedStreamSpecsForNewUseCases.getMaxSupportedFrameRate());
    }

    @Override // androidx.camera.core.internal.StreamSpecsCalculator
    public void setCameraDeviceSurfaceManager(CameraDeviceSurfaceManager cameraDeviceSurfaceManager) {
        cameraDeviceSurfaceManager.getClass();
        this.cameraDeviceSurfaceManager = cameraDeviceSurfaceManager;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ StreamSpecsCalculatorImpl(UseCaseConfigFactory useCaseConfigFactory, CameraDeviceSurfaceManager cameraDeviceSurfaceManager, int i, jh2 jh2Var) {
        this(useCaseConfigFactory, (i & 2) != 0 ? null : cameraDeviceSurfaceManager);
    }
}
