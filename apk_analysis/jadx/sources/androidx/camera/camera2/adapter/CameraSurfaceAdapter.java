package androidx.camera.camera2.adapter;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.config.CameraAppComponent;
import androidx.camera.camera2.config.CameraModule;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.FeatureCombinationQueryImpl;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.core.util.Preconditions;
import defpackage.fg;
import defpackage.j59;
import defpackage.mx2;
import defpackage.qn1;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CameraSurfaceAdapter implements CameraDeviceSurfaceManager {
    private final CameraAppComponent component;
    private final Context context;
    private final Object lock;
    private Map<String, SupportedSurfaceCombination> supportedSurfaceCombinationMap;

    public CameraSurfaceAdapter(Context context, Object obj, Set<String> set) throws InitializationException {
        context.getClass();
        set.getClass();
        this.context = context;
        obj.getClass();
        this.component = (CameraAppComponent) obj;
        this.lock = new Object();
        this.supportedSurfaceCombinationMap = mx2.b;
        try {
            onCamerasUpdated(qn1.t0(set));
        } catch (CameraUpdateException e) {
            throw new InitializationException(e);
        }
    }

    private final Map<String, SupportedSurfaceCombination> buildSurfaceCombinations(List<String> list) throws CameraUpdateException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!list.isEmpty()) {
            try {
                for (String str : list) {
                    CameraMetadata cameraMetadataM237awaitCameraMetadataFpsL5FU$default = CameraDevices.m237awaitCameraMetadataFpsL5FU$default(this.component.getCameraDevices(), CameraId.m352constructorimpl(str), null, 2, null);
                    if (cameraMetadataM237awaitCameraMetadataFpsL5FU$default != null) {
                        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
                        key.getClass();
                        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadataM237awaitCameraMetadataFpsL5FU$default.get(key);
                        CameraQuirks cameraQuirks = new CameraQuirks(cameraMetadataM237awaitCameraMetadataFpsL5FU$default, new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(cameraMetadataM237awaitCameraMetadataFpsL5FU$default, streamConfigurationMap)));
                        linkedHashMap.put(str, new SupportedSurfaceCombination(this.context, cameraMetadataM237awaitCameraMetadataFpsL5FU$default, CameraModule.Companion.provideEncoderProfilesProvider(str, cameraQuirks), Build.VERSION.SDK_INT >= 35 ? new FeatureCombinationQueryImpl(cameraMetadataM237awaitCameraMetadataFpsL5FU$default, this.component.getCameraPipe(), cameraQuirks) : FeatureCombinationQuery.NO_OP_FEATURE_COMBINATION_QUERY));
                    }
                }
            } catch (DoNotDisturbException e) {
                throw new CameraUpdateException("Failed to query camera metadata", e);
            } catch (Exception e2) {
                throw new CameraUpdateException("Failed to build surface combinations", e2);
            }
        }
        return linkedHashMap;
    }

    public final boolean checkIfSupportedCombinationExist$camera_camera2(String str) {
        str.getClass();
        return this.supportedSurfaceCombinationMap.containsKey(str);
    }

    @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager
    public SurfaceStreamSpecQueryResult getSuggestedStreamSpecs(int i, String str, List<? extends AttachedSurfaceInfo> list, Map<UseCaseConfig<?>, ? extends List<Size>> map, VideoStabilization videoStabilization, boolean z, boolean z2, boolean z3) {
        SupportedSurfaceCombination supportedSurfaceCombination;
        str.getClass();
        list.getClass();
        map.getClass();
        videoStabilization.getClass();
        Preconditions.checkArgument(checkIfSupportedCombinationExist$camera_camera2(str), "No such camera id in supported combination list: ".concat(str));
        synchronized (this.lock) {
            supportedSurfaceCombination = this.supportedSurfaceCombinationMap.get(str);
        }
        if (supportedSurfaceCombination != null) {
            return supportedSurfaceCombination.getSuggestedStreamSpecifications(i, list, map, videoStabilization, z, z2, z3);
        }
        fg.c("No such camera id in supported combination list: ".concat(str));
        return null;
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public void onCamerasUpdated(List<String> list) throws CameraUpdateException {
        List<String> listG0;
        list.getClass();
        synchronized (this.lock) {
            listG0 = qn1.g0(this.supportedSurfaceCombinationMap.keySet(), list);
            j59 j59Var = j59.a;
        }
        if (!listG0.isEmpty()) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Creating new surface combinations for: " + listG0);
            }
        }
        Map<String, SupportedSurfaceCombination> mapBuildSurfaceCombinations = buildSurfaceCombinations(listG0);
        synchronized (this.lock) {
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (String str : list) {
                    if (this.supportedSurfaceCombinationMap.containsKey(str)) {
                        SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombinationMap.get(str);
                        supportedSurfaceCombination.getClass();
                        linkedHashMap.put(str, supportedSurfaceCombination);
                    }
                }
                linkedHashMap.putAll(mapBuildSurfaceCombinations);
                this.supportedSurfaceCombinationMap = linkedHashMap;
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Committed new surface combination map. Total cameras: " + linkedHashMap.size());
                }
                j59 j59Var2 = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager
    public SurfaceConfig transformSurfaceConfig(int i, String str, int i2, Size size, StreamUseCase streamUseCase) {
        SupportedSurfaceCombination supportedSurfaceCombination;
        str.getClass();
        size.getClass();
        streamUseCase.getClass();
        Preconditions.checkArgument(checkIfSupportedCombinationExist$camera_camera2(str), "No such camera id in supported combination list: ".concat(str));
        synchronized (this.lock) {
            supportedSurfaceCombination = this.supportedSurfaceCombinationMap.get(str);
        }
        if (supportedSurfaceCombination != null) {
            return supportedSurfaceCombination.transformSurfaceConfig(i, i2, size, streamUseCase);
        }
        fg.c("No such camera id in supported combination list: ".concat(str));
        return null;
    }
}
