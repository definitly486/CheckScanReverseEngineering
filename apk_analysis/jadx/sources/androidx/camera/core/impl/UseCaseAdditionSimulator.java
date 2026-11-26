package androidx.camera.core.impl;

import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.internal.CalculatedUseCaseInfo;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import defpackage.aa4;
import defpackage.ah;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseAdditionSimulator {
    public static final UseCaseAdditionSimulator INSTANCE = new UseCaseAdditionSimulator();
    public static CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider;

    private UseCaseAdditionSimulator() {
    }

    public static final CameraUseCaseAdapterProvider getCameraUseCaseAdapterProvider() {
        CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2 = cameraUseCaseAdapterProvider;
        if (cameraUseCaseAdapterProvider2 != null) {
            return cameraUseCaseAdapterProvider2;
        }
        aa4.j("cameraUseCaseAdapterProvider");
        throw null;
    }

    public static /* synthetic */ void getCameraUseCaseAdapterProvider$annotations() {
    }

    public static final void setCameraUseCaseAdapterProvider(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2) {
        cameraUseCaseAdapterProvider2.getClass();
        cameraUseCaseAdapterProvider = cameraUseCaseAdapterProvider2;
    }

    public static final CalculatedUseCaseInfo simulateAddUseCases(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig, boolean z, ResolvedFeatureGroup resolvedFeatureGroup) {
        cameraInfoInternal.getClass();
        sessionConfig.getClass();
        if (cameraUseCaseAdapterProvider == null) {
            ah.f("mCameraUseCaseAdapterProvider must be initialized first!");
            return null;
        }
        CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2 = getCameraUseCaseAdapterProvider();
        String cameraId = cameraInfoInternal.getCameraId();
        cameraId.getClass();
        CameraUseCaseAdapter cameraUseCaseAdapterProvide = cameraUseCaseAdapterProvider2.provide(cameraId);
        cameraUseCaseAdapterProvide.setViewPort(sessionConfig.getViewPort());
        cameraUseCaseAdapterProvide.setEffects(sessionConfig.getEffects());
        cameraUseCaseAdapterProvide.setSessionType(sessionConfig.getSessionType());
        cameraUseCaseAdapterProvide.setFrameRate(sessionConfig.getFrameRateRange());
        List<UseCase> useCases = sessionConfig.getUseCases();
        if (resolvedFeatureGroup == null) {
            resolvedFeatureGroup = ResolvedFeatureGroup.Companion.resolveFeatureGroup$default(ResolvedFeatureGroup.Companion, sessionConfig, cameraInfoInternal, null, 2, null);
        }
        CalculatedUseCaseInfo calculatedUseCaseInfoSimulateAddUseCases = cameraUseCaseAdapterProvide.simulateAddUseCases(useCases, resolvedFeatureGroup, z);
        calculatedUseCaseInfoSimulateAddUseCases.getClass();
        return calculatedUseCaseInfoSimulateAddUseCases;
    }

    public static /* synthetic */ CalculatedUseCaseInfo simulateAddUseCases$default(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig, boolean z, ResolvedFeatureGroup resolvedFeatureGroup, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            resolvedFeatureGroup = null;
        }
        return simulateAddUseCases(cameraInfoInternal, sessionConfig, z, resolvedFeatureGroup);
    }

    public static final CalculatedUseCaseInfo simulateAddUseCases(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig, boolean z) {
        cameraInfoInternal.getClass();
        sessionConfig.getClass();
        return simulateAddUseCases$default(cameraInfoInternal, sessionConfig, z, null, 8, null);
    }

    public static final CalculatedUseCaseInfo simulateAddUseCases(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig) {
        cameraInfoInternal.getClass();
        sessionConfig.getClass();
        return simulateAddUseCases$default(cameraInfoInternal, sessionConfig, false, null, 12, null);
    }
}
