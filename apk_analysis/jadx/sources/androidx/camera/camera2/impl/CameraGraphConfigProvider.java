package androidx.camera.camera2.impl;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.media.MediaCodec;
import android.os.Build;
import android.util.Range;
import android.util.Size;
import android.view.SurfaceHolder;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CaptureSessionStuckQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk;
import androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopWithSessionProcessorQuirk;
import androidx.camera.camera2.compat.quirk.FinalizeSessionOnCloseQuirk;
import androidx.camera.camera2.compat.quirk.QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;
import androidx.camera.camera2.compat.workaround.CloseCameraOnCameraGraphClose;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.internal.DynamicRangeConversions;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfigurator;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ImageSourceConfig;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.CameraPipeKeys;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.TagBundle;
import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.aa4;
import defpackage.g2;
import defpackage.jh2;
import defpackage.mx2;
import defpackage.n05;
import defpackage.qn1;
import defpackage.u96;
import defpackage.uz4;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraGraphConfigProvider {
    private final CameraCallbackMap callbackMap;
    private final CameraConfig cameraConfig;
    private final CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository;
    private final CameraMetadata cameraMetadata;
    private final CameraQuirks cameraQuirks;
    private final CameraXConfig cameraXConfig;
    private final CloseCameraOnCameraGraphClose closeCameraOnCameraGraphClose;
    private final ComboRequestListener requestListener;
    private final DynamicRangeProfiles supportedDynamicRangeProfiles;
    private final TemplateParamsOverride templateParamsOverride;
    private final ZslControl zslControl;

    public static final class CameraGraphCreationResult {
        private final CameraGraph.Config config;
        private final Map<CameraStream.Config, DeferrableSurface> streamConfigMap;

        /* JADX WARN: Multi-variable type inference failed */
        public CameraGraphCreationResult(CameraGraph.Config config, Map<CameraStream.Config, ? extends DeferrableSurface> map) {
            config.getClass();
            map.getClass();
            this.config = config;
            this.streamConfigMap = map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CameraGraphCreationResult copy$default(CameraGraphCreationResult cameraGraphCreationResult, CameraGraph.Config config, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                config = cameraGraphCreationResult.config;
            }
            if ((i & 2) != 0) {
                map = cameraGraphCreationResult.streamConfigMap;
            }
            return cameraGraphCreationResult.copy(config, map);
        }

        public final CameraGraph.Config component1() {
            return this.config;
        }

        public final Map<CameraStream.Config, DeferrableSurface> component2() {
            return this.streamConfigMap;
        }

        public final CameraGraphCreationResult copy(CameraGraph.Config config, Map<CameraStream.Config, ? extends DeferrableSurface> map) {
            config.getClass();
            map.getClass();
            return new CameraGraphCreationResult(config, map);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CameraGraphCreationResult)) {
                return false;
            }
            CameraGraphCreationResult cameraGraphCreationResult = (CameraGraphCreationResult) obj;
            return aa4.e(this.config, cameraGraphCreationResult.config) && aa4.e(this.streamConfigMap, cameraGraphCreationResult.streamConfigMap);
        }

        public final CameraGraph.Config getConfig() {
            return this.config;
        }

        public final Map<CameraStream.Config, DeferrableSurface> getStreamConfigMap() {
            return this.streamConfigMap;
        }

        public int hashCode() {
            return this.streamConfigMap.hashCode() + (this.config.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("CameraGraphCreationResult(config=");
            sb.append(this.config);
            sb.append(", streamConfigMap=");
            return g2.c(sb, this.streamConfigMap, ')');
        }
    }

    public CameraGraphConfigProvider(CameraCallbackMap cameraCallbackMap, ComboRequestListener comboRequestListener, CameraConfig cameraConfig, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository) {
        DynamicRangeProfilesCompat dynamicRangeProfilesCompatFromCameraMetaData;
        cameraCallbackMap.getClass();
        comboRequestListener.getClass();
        cameraConfig.getClass();
        cameraQuirks.getClass();
        zslControl.getClass();
        templateParamsOverride.getClass();
        this.callbackMap = cameraCallbackMap;
        this.requestListener = comboRequestListener;
        this.cameraConfig = cameraConfig;
        this.cameraQuirks = cameraQuirks;
        this.zslControl = zslControl;
        this.templateParamsOverride = templateParamsOverride;
        this.cameraMetadata = cameraMetadata;
        this.cameraXConfig = cameraXConfig;
        this.cameraInteropStateCallbackRepository = cameraInteropStateCallbackRepository;
        this.closeCameraOnCameraGraphClose = new CloseCameraOnCameraGraphClose();
        DynamicRangeProfiles dynamicRangeProfiles = null;
        if (Build.VERSION.SDK_INT >= 33 && cameraMetadata != null && (dynamicRangeProfilesCompatFromCameraMetaData = DynamicRangeProfilesCompat.Companion.fromCameraMetaData(cameraMetadata)) != null) {
            dynamicRangeProfiles = dynamicRangeProfilesCompatFromCameraMetaData.toDynamicRangeProfiles();
        }
        this.supportedDynamicRangeProfiles = dynamicRangeProfiles;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: create-79VDu0o$default, reason: not valid java name */
    public static /* synthetic */ CameraGraphCreationResult m45create79VDu0o$default(CameraGraphConfigProvider cameraGraphConfigProvider, int i, SessionConfig sessionConfig, boolean z, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Integer num, Map map, Map map2, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            graphStateToCameraStateAdapter = null;
        }
        if ((i2 & 16) != 0) {
            num = null;
        }
        int i3 = i2 & 32;
        mx2 mx2Var = mx2.b;
        if (i3 != 0) {
            map = mx2Var;
        }
        if ((i2 & 64) != 0) {
            map2 = mx2Var;
        }
        return cameraGraphConfigProvider.m49create79VDu0o(i, sessionConfig, z, graphStateToCameraStateAdapter, num, map, map2);
    }

    private final CameraGraph.Flags createCameraGraphFlags(CameraQuirks cameraQuirks, boolean z) {
        if (cameraQuirks.getQuirks().contains(CaptureSessionStuckQuirk.class)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CameraPipe should be enabling CaptureSessionStuckQuirk by default");
            }
        }
        int iM30getBehaviorBm6Tfm4 = FinalizeSessionOnCloseQuirk.Companion.m30getBehaviorBm6Tfm4();
        boolean zShouldCloseCameraDevice = this.closeCameraOnCameraGraphClose.shouldCloseCameraDevice(z);
        boolean z2 = false;
        if ((!z || DeviceQuirks.INSTANCE.get(DisableAbortCapturesOnStopWithSessionProcessorQuirk.class) == null) && DeviceQuirks.INSTANCE.get(DisableAbortCapturesOnStopQuirk.class) == null && Build.VERSION.SDK_INT >= 30) {
            z2 = true;
        }
        return new CameraGraph.Flags(false, z2, new CameraGraph.RepeatingRequestRequirementsBeforeCapture(cameraQuirks.getQuirks().contains(QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.class) ? 1 : 0, CameraGraph.RepeatingRequestRequirementsBeforeCapture.CompletionBehavior.AT_LEAST, null), null, iM30getBehaviorBm6Tfm4, true, zShouldCloseCameraDevice, true, 9, null);
    }

    private final CameraStream.Config createPostviewStream(SessionConfig.OutputConfig outputConfig, String str) {
        OutputStream.MirrorMode mirrorModeM563boximpl;
        OutputStream.MirrorMode mirrorMode;
        DeferrableSurface surface = outputConfig.getSurface();
        surface.getClass();
        if (str == null) {
            str = outputConfig.getPhysicalCameraId();
        }
        int mirrorMode2 = outputConfig.getMirrorMode();
        OutputStream.Config.Companion companion = OutputStream.Config.Companion;
        Size prescribedSize = surface.getPrescribedSize();
        prescribedSize.getClass();
        int iM678constructorimpl = StreamFormat.m678constructorimpl(surface.getPrescribedStreamFormat());
        String strM352constructorimpl = str == null ? null : CameraId.m352constructorimpl(str);
        if (mirrorMode2 != 0) {
            if (mirrorMode2 != 1) {
                mirrorMode = null;
            } else {
                mirrorModeM563boximpl = OutputStream.MirrorMode.m563boximpl(OutputStream.MirrorMode.m564constructorimpl(2));
            }
            return CameraStream.Config.Companion.create$default(CameraStream.Config.Companion, OutputStream.Config.Companion.m539createvBYXiEU$default(companion, prescribedSize, iM678constructorimpl, strM352constructorimpl, null, mirrorMode, null, null, null, null, null, 1000, null), (ImageSourceConfig) null, 2, (Object) null);
        }
        mirrorModeM563boximpl = OutputStream.MirrorMode.m563boximpl(OutputStream.MirrorMode.m564constructorimpl(1));
        mirrorMode = mirrorModeM563boximpl;
        return CameraStream.Config.Companion.create$default(CameraStream.Config.Companion, OutputStream.Config.Companion.m539createvBYXiEU$default(companion, prescribedSize, iM678constructorimpl, strM352constructorimpl, null, mirrorMode, null, null, null, null, null, 1000, null), (ImageSourceConfig) null, 2, (Object) null);
    }

    /* JADX INFO: renamed from: getStreamUseCase-MhLBY4I, reason: not valid java name */
    private final OutputStream.StreamUseCase m46getStreamUseCaseMhLBY4I(DeferrableSurface deferrableSurface, Map<DeferrableSurface, Long> map, CameraMetadata cameraMetadata) {
        Long l = map.get(deferrableSurface);
        OutputStream.StreamUseCase streamUseCaseM583boximpl = l != null ? OutputStream.StreamUseCase.m583boximpl(OutputStream.StreamUseCase.m584constructorimpl(l.longValue())) : null;
        if (Build.VERSION.SDK_INT >= 33 && streamUseCaseM583boximpl != null && cameraMetadata != null) {
            CameraCharacteristics.Key key = CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES;
            key.getClass();
            long[] jArr = (long[]) cameraMetadata.get(key);
            if (jArr != null && yr.D(jArr, streamUseCaseM583boximpl.m589unboximpl())) {
                return streamUseCaseM583boximpl;
            }
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled(Log.TAG)) {
            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Expected stream use case for " + deferrableSurface + ", " + streamUseCaseM583boximpl + " cannot be set!");
        }
        return null;
    }

    /* JADX INFO: renamed from: getStreamUseHint-kVKJKLA, reason: not valid java name */
    private final OutputStream.StreamUseHint m47getStreamUseHintkVKJKLA(DeferrableSurface deferrableSurface, Map<DeferrableSurface, Long> map) {
        Long l = map.get(deferrableSurface);
        if (l != null) {
            return OutputStream.StreamUseHint.m597boximpl(OutputStream.StreamUseHint.m598constructorimpl(l.longValue()));
        }
        return null;
    }

    private final Integer getVideoStabilizationModeFromCaptureConfig(CaptureConfig captureConfig) {
        int previewStabilizationMode = captureConfig.getPreviewStabilizationMode();
        int videoStabilizationMode = captureConfig.getVideoStabilizationMode();
        if (previewStabilizationMode == 1 || videoStabilizationMode == 1) {
            return 0;
        }
        if (previewStabilizationMode == 2) {
            return 2;
        }
        return videoStabilizationMode == 2 ? 1 : null;
    }

    private final Camera2ImplConfig toCamera2ImplConfig(SessionConfig sessionConfig) {
        Config implementationOptions = sessionConfig.getImplementationOptions();
        implementationOptions.getClass();
        return new Camera2ImplConfig(implementationOptions);
    }

    /* JADX INFO: renamed from: toDynamicRangeProfile--zsJmt4, reason: not valid java name */
    private final OutputStream.DynamicRangeProfile m48toDynamicRangeProfilezsJmt4(DynamicRange dynamicRange) {
        if (Build.VERSION.SDK_INT < 33) {
            return null;
        }
        OutputStream.DynamicRangeProfile dynamicRangeProfileM543boximpl = OutputStream.DynamicRangeProfile.m543boximpl(OutputStream.DynamicRangeProfile.Companion.m562getSTANDARDfFAQAUE());
        DynamicRangeProfiles dynamicRangeProfiles = this.supportedDynamicRangeProfiles;
        if (dynamicRangeProfiles != null) {
            Long lDynamicRangeToFirstSupportedProfile = DynamicRangeConversions.INSTANCE.dynamicRangeToFirstSupportedProfile(dynamicRange, dynamicRangeProfiles);
            if (lDynamicRangeToFirstSupportedProfile != null) {
                return OutputStream.DynamicRangeProfile.m543boximpl(OutputStream.DynamicRangeProfile.m544constructorimpl(lDynamicRangeToFirstSupportedProfile.longValue()));
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled(Log.TAG)) {
                android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Requested dynamic range is not supported. Defaulting to STANDARD dynamic range profile.\nRequested dynamic range:\n " + dynamicRange);
            }
        }
        return dynamicRangeProfileM543boximpl;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x01e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x01e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:34:0x0104  */
    /* JADX WARN: Code duplicated, block: B:36:0x010d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0115  */
    /* JADX WARN: Code duplicated, block: B:39:0x011c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0124  */
    /* JADX WARN: Code duplicated, block: B:42:0x012b  */
    /* JADX WARN: Code duplicated, block: B:43:0x0132  */
    /* JADX WARN: Code duplicated, block: B:45:0x013b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0146  */
    /* JADX WARN: Code duplicated, block: B:48:0x014c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0155  */
    /* JADX WARN: Code duplicated, block: B:53:0x0180  */
    /* JADX WARN: Code duplicated, block: B:55:0x019f  */
    /* JADX WARN: Code duplicated, block: B:57:0x01af  */
    /* JADX WARN: Code duplicated, block: B:58:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:61:0x01cc  */
    /* JADX INFO: renamed from: create-79VDu0o, reason: not valid java name */
    public final CameraGraphCreationResult m49create79VDu0o(int i, SessionConfig sessionConfig, boolean z, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Integer num, Map<DeferrableSurface, Long> map, Map<DeferrableSurface, Long> map2) {
        int i2;
        Integer videoStabilizationModeFromCaptureConfig;
        ArrayList arrayList;
        CameraStream.Config config;
        Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator;
        CameraStream.Config configCreatePostviewStream;
        OutputStream.MirrorMode mirrorModeM563boximpl;
        OutputStream.MirrorMode mirrorMode;
        OutputStream.OutputType surface;
        OutputStream.StreamUseCase streamUseCaseM46getStreamUseCaseMhLBY4I;
        OutputStream.StreamUseHint streamUseHintM47getStreamUseHintkVKJKLA;
        OutputStream.Config configM539createvBYXiEU$default;
        Iterator it;
        DeferrableSurface deferrableSurface;
        CameraStream.Config configCreate$default;
        ZslControl zslControl;
        List list;
        Class<?> containerClass;
        map.getClass();
        map2.getClass();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        boolean zM335equalsimpl0 = CameraGraph.OperatingMode.m335equalsimpl0(i, companion.m340getEXTENSION2uNL3no());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        int i3 = 1;
        int iM647constructorimpl = RequestTemplate.m647constructorimpl(1);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        if (sessionConfig != null) {
            CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository = this.cameraInteropStateCallbackRepository;
            if (cameraInteropStateCallbackRepository != null) {
                cameraInteropStateCallbackRepository.updateCallbacks(sessionConfig);
            }
            if (sessionConfig.getTemplateType() != -1) {
                iM647constructorimpl = RequestTemplate.m647constructorimpl(sessionConfig.getTemplateType());
            }
            linkedHashMap2.putAll(this.templateParamsOverride.mo38getOverrideParamsxlOpshk(RequestTemplate.m646boximpl(iM647constructorimpl)));
            Config implementationOptions = sessionConfig.getImplementationOptions();
            implementationOptions.getClass();
            linkedHashMap2.putAll(Camera2ImplConfigKt.toParameters(implementationOptions));
            if (CameraGraph.OperatingMode.m335equalsimpl0(i, companion.m340getEXTENSION2uNL3no())) {
                Metadata.Key<Integer> camera2ExtensionMode = CameraPipeKeys.INSTANCE.getCamera2ExtensionMode();
                num.getClass();
                linkedHashMap2.put(camera2ExtensionMode, num);
            }
            String physicalCameraId = toCamera2ImplConfig(sessionConfig).getPhysicalCameraId(null);
            CameraStream.Config config2 = null;
            for (SessionConfig.OutputConfig outputConfig : sessionConfig.getOutputConfigs()) {
                DeferrableSurface surface2 = outputConfig.getSurface();
                surface2.getClass();
                String physicalCameraId2 = physicalCameraId == null ? outputConfig.getPhysicalCameraId() : physicalCameraId;
                int i4 = 2;
                DynamicRange dynamicRange = outputConfig.getDynamicRange();
                dynamicRange.getClass();
                int mirrorMode2 = outputConfig.getMirrorMode();
                OutputStream.Config.Companion companion2 = OutputStream.Config.Companion;
                OutputStream.DynamicRangeProfile dynamicRangeProfileM48toDynamicRangeProfilezsJmt4 = m48toDynamicRangeProfilezsJmt4(dynamicRange);
                Size prescribedSize = surface2.getPrescribedSize();
                prescribedSize.getClass();
                int iM678constructorimpl = StreamFormat.m678constructorimpl(surface2.getPrescribedStreamFormat());
                String strM352constructorimpl = physicalCameraId2 == null ? null : CameraId.m352constructorimpl(physicalCameraId2);
                if (mirrorMode2 != 0) {
                    if (mirrorMode2 != i3) {
                        mirrorMode = null;
                    } else {
                        mirrorModeM563boximpl = OutputStream.MirrorMode.m563boximpl(OutputStream.MirrorMode.m564constructorimpl(2));
                    }
                    if (z) {
                        containerClass = outputConfig.getSurface().getContainerClass();
                        if (aa4.e(containerClass, MediaCodec.class)) {
                            surface = OutputStream.OutputType.Companion.getMEDIA_CODEC();
                        } else if (aa4.e(containerClass, SurfaceHolder.class)) {
                            surface = OutputStream.OutputType.Companion.getSURFACE_VIEW();
                        } else if (aa4.e(containerClass, SurfaceTexture.class)) {
                            surface = OutputStream.OutputType.Companion.getSURFACE_TEXTURE();
                        } else {
                            surface = OutputStream.OutputType.Companion.getSURFACE();
                        }
                    } else {
                        surface = OutputStream.OutputType.Companion.getSURFACE();
                    }
                    OutputStream.OutputType outputType = surface;
                    if (zM335equalsimpl0) {
                        streamUseCaseM46getStreamUseCaseMhLBY4I = null;
                    } else {
                        streamUseCaseM46getStreamUseCaseMhLBY4I = m46getStreamUseCaseMhLBY4I(surface2, map, this.cameraMetadata);
                    }
                    if (zM335equalsimpl0) {
                        streamUseHintM47getStreamUseHintkVKJKLA = null;
                    } else {
                        streamUseHintM47getStreamUseHintkVKJKLA = m47getStreamUseHintkVKJKLA(surface2, map2);
                    }
                    configM539createvBYXiEU$default = OutputStream.Config.Companion.m539createvBYXiEU$default(companion2, prescribedSize, iM678constructorimpl, strM352constructorimpl, outputType, mirrorMode, null, dynamicRangeProfileM48toDynamicRangeProfilezsJmt4, streamUseCaseM46getStreamUseCaseMhLBY4I, streamUseHintM47getStreamUseHintkVKJKLA, null, Utils.PULSE_ANIMATOR_DURATION, null);
                    List<DeferrableSurface> sharedSurfaces = outputConfig.getSharedSurfaces();
                    sharedSurfaces.getClass();
                    String str = physicalCameraId;
                    it = qn1.i0(surface2, sharedSurfaces).iterator();
                    while (it.hasNext()) {
                        it = it;
                        deferrableSurface = (DeferrableSurface) it.next();
                        iM647constructorimpl = iM647constructorimpl;
                        configCreate$default = CameraStream.Config.Companion.create$default(CameraStream.Config.Companion, configM539createvBYXiEU$default, (ImageSourceConfig) null, i4, (Object) null);
                        linkedHashMap3.put(configCreate$default, deferrableSurface);
                        if (outputConfig.getSurfaceGroupId() != -1) {
                            list = (List) linkedHashMap.get(Integer.valueOf(outputConfig.getSurfaceGroupId()));
                            if (list == null) {
                                linkedHashMap.put(Integer.valueOf(outputConfig.getSurfaceGroupId()), u96.k(configCreate$default));
                            } else {
                                list.add(configCreate$default);
                            }
                        }
                        if (aa4.e(deferrableSurface, surface2)) {
                            zslControl = this.zslControl;
                            deferrableSurface.getClass();
                            if (zslControl.isZslSurface(deferrableSurface, sessionConfig)) {
                                config2 = configCreate$default;
                                i4 = 2;
                            }
                        }
                        i4 = 2;
                    }
                    physicalCameraId = str;
                    i3 = 1;
                } else {
                    mirrorModeM563boximpl = OutputStream.MirrorMode.m563boximpl(OutputStream.MirrorMode.m564constructorimpl(i3));
                }
                mirrorMode = mirrorModeM563boximpl;
                if (z) {
                    containerClass = outputConfig.getSurface().getContainerClass();
                    if (aa4.e(containerClass, MediaCodec.class)) {
                        surface = OutputStream.OutputType.Companion.getMEDIA_CODEC();
                    } else if (aa4.e(containerClass, SurfaceHolder.class)) {
                        surface = OutputStream.OutputType.Companion.getSURFACE_VIEW();
                    } else if (aa4.e(containerClass, SurfaceTexture.class)) {
                        surface = OutputStream.OutputType.Companion.getSURFACE_TEXTURE();
                    } else {
                        surface = OutputStream.OutputType.Companion.getSURFACE();
                    }
                } else {
                    surface = OutputStream.OutputType.Companion.getSURFACE();
                }
                OutputStream.OutputType outputType2 = surface;
                if (zM335equalsimpl0) {
                    streamUseCaseM46getStreamUseCaseMhLBY4I = m46getStreamUseCaseMhLBY4I(surface2, map, this.cameraMetadata);
                } else {
                    streamUseCaseM46getStreamUseCaseMhLBY4I = null;
                }
                if (zM335equalsimpl0) {
                    streamUseHintM47getStreamUseHintkVKJKLA = m47getStreamUseHintkVKJKLA(surface2, map2);
                } else {
                    streamUseHintM47getStreamUseHintkVKJKLA = null;
                }
                configM539createvBYXiEU$default = OutputStream.Config.Companion.m539createvBYXiEU$default(companion2, prescribedSize, iM678constructorimpl, strM352constructorimpl, outputType2, mirrorMode, null, dynamicRangeProfileM48toDynamicRangeProfilezsJmt4, streamUseCaseM46getStreamUseCaseMhLBY4I, streamUseHintM47getStreamUseHintkVKJKLA, null, Utils.PULSE_ANIMATOR_DURATION, null);
                List<DeferrableSurface> sharedSurfaces2 = outputConfig.getSharedSurfaces();
                sharedSurfaces2.getClass();
                String str2 = physicalCameraId;
                it = qn1.i0(surface2, sharedSurfaces2).iterator();
                while (it.hasNext()) {
                    it = it;
                    deferrableSurface = (DeferrableSurface) it.next();
                    iM647constructorimpl = iM647constructorimpl;
                    configCreate$default = CameraStream.Config.Companion.create$default(CameraStream.Config.Companion, configM539createvBYXiEU$default, (ImageSourceConfig) null, i4, (Object) null);
                    linkedHashMap3.put(configCreate$default, deferrableSurface);
                    if (outputConfig.getSurfaceGroupId() != -1) {
                        list = (List) linkedHashMap.get(Integer.valueOf(outputConfig.getSurfaceGroupId()));
                        if (list == null) {
                            linkedHashMap.put(Integer.valueOf(outputConfig.getSurfaceGroupId()), u96.k(configCreate$default));
                        } else {
                            list.add(configCreate$default);
                        }
                    }
                    if (aa4.e(deferrableSurface, surface2)) {
                        zslControl = this.zslControl;
                        deferrableSurface.getClass();
                        if (zslControl.isZslSurface(deferrableSurface, sessionConfig)) {
                            config2 = configCreate$default;
                            i4 = 2;
                        }
                    }
                    i4 = 2;
                }
                physicalCameraId = str2;
                i3 = 1;
            }
            int i5 = iM647constructorimpl;
            if (sessionConfig.getInputConfiguration() != null && config2 != null) {
                arrayList2.add(new InputStream.Config(config2, 1, ((OutputStream.Config) qn1.k0(config2.getOutputs())).m534getFormat8FPWQzE(), null));
            }
            i2 = i5;
        } else {
            i2 = iM647constructorimpl;
        }
        CameraGraph.Flags flagsCreateCameraGraphFlags = createCameraGraphFlags(this.cameraQuirks, zM335equalsimpl0);
        if (sessionConfig != null) {
            CaptureConfig repeatingCaptureConfig = sessionConfig.getRepeatingCaptureConfig();
            repeatingCaptureConfig.getClass();
            videoStabilizationModeFromCaptureConfig = getVideoStabilizationModeFromCaptureConfig(repeatingCaptureConfig);
        } else {
            videoStabilizationModeFromCaptureConfig = null;
        }
        Range<Integer> expectedFrameRateRange = sessionConfig != null ? sessionConfig.getExpectedFrameRateRange() : null;
        if (aa4.e(expectedFrameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            expectedFrameRateRange = null;
        }
        uz4 uz4Var = new uz4();
        if (zM335equalsimpl0) {
            uz4Var.put(CameraPipeKeys.INSTANCE.getIgnore3ARequiredParameters(), Boolean.TRUE);
        }
        if (videoStabilizationModeFromCaptureConfig != null) {
            uz4Var.put(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, Integer.valueOf(videoStabilizationModeFromCaptureConfig.intValue()));
        }
        uz4Var.put(CameraPipeKeys.INSTANCE.getCamera2CaptureRequestTag(), TagBundle.CAMERAX_USER_TAG_PREFIX);
        if (expectedFrameRateRange != null) {
            uz4Var.put(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, expectedFrameRateRange);
        }
        uz4 uz4VarB = uz4Var.b();
        if (expectedFrameRateRange != null) {
            linkedHashMap2.put(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, expectedFrameRateRange);
        }
        if (videoStabilizationModeFromCaptureConfig != null) {
            linkedHashMap2.put(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, videoStabilizationModeFromCaptureConfig);
        }
        if (sessionConfig != null) {
            arrayList = null;
            String physicalCameraId3 = toCamera2ImplConfig(sessionConfig).getPhysicalCameraId(null);
            SessionConfig.OutputConfig postviewOutputConfig = sessionConfig.getPostviewOutputConfig();
            if (postviewOutputConfig == null || (configCreatePostviewStream = createPostviewStream(postviewOutputConfig, physicalCameraId3)) == null) {
                configCreatePostviewStream = null;
            } else {
                linkedHashMap3.put(configCreatePostviewStream, postviewOutputConfig.getSurface());
            }
            config = configCreatePostviewStream;
        } else {
            arrayList = null;
            config = null;
        }
        CameraXConfig cameraXConfig = this.cameraXConfig;
        if (cameraXConfig != null && (camera2CaptureRequestConfigurator = Camera2CaptureRequestConfiguratorKt.getCamera2CaptureRequestConfigurator(cameraXConfig)) != null) {
            Camera2CaptureRequestConfiguratorKt.configureWithUnchecked(camera2CaptureRequestConfigurator, linkedHashMap2);
        }
        String strM39getCameraIdDz_R5H8 = this.cameraConfig.m39getCameraIdDz_R5H8();
        List listT0 = qn1.t0(linkedHashMap3.keySet());
        List listT1 = qn1.t0(linkedHashMap.values());
        if (!arrayList2.isEmpty()) {
            arrayList = arrayList2;
        }
        return new CameraGraphCreationResult(new CameraGraph.Config(strM39getCameraIdDz_R5H8, listT0, listT1, arrayList, config, i2, linkedHashMap2, i, 0, uz4VarB, u96.i(this.callbackMap, this.requestListener), u96.j(graphStateToCameraStateAdapter), null, null, null, null, flagsCreateCameraGraphFlags, null, 192768, null), n05.l(linkedHashMap3));
    }

    public String toString() {
        return "CameraGraphConfigProvider<" + ((Object) CameraId.m357toStringimpl(this.cameraConfig.m39getCameraIdDz_R5H8())) + '>';
    }

    public /* synthetic */ CameraGraphConfigProvider(CameraCallbackMap cameraCallbackMap, ComboRequestListener comboRequestListener, CameraConfig cameraConfig, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository, int i, jh2 jh2Var) {
        this(cameraCallbackMap, comboRequestListener, cameraConfig, cameraQuirks, zslControl, templateParamsOverride, cameraMetadata, (i & 128) != 0 ? null : cameraXConfig, (i & 256) != 0 ? null : cameraInteropStateCallbackRepository);
    }
}
