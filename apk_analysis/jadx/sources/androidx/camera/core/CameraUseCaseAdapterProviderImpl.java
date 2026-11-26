package androidx.camera.core;

import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.internal.StreamSpecsCalculator;

/* JADX INFO: loaded from: classes.dex */
public final class CameraUseCaseAdapterProviderImpl implements CameraUseCaseAdapterProvider {
    private final CameraCoordinator cameraCoordinator;
    private final CameraRepository cameraRepository;
    private final StreamSpecsCalculator streamSpecsCalculator;
    private final UseCaseConfigFactory useCaseConfigFactory;

    public CameraUseCaseAdapterProviderImpl(CameraRepository cameraRepository, CameraCoordinator cameraCoordinator, UseCaseConfigFactory useCaseConfigFactory, StreamSpecsCalculator streamSpecsCalculator) {
        cameraRepository.getClass();
        cameraCoordinator.getClass();
        useCaseConfigFactory.getClass();
        streamSpecsCalculator.getClass();
        this.cameraRepository = cameraRepository;
        this.cameraCoordinator = cameraCoordinator;
        this.useCaseConfigFactory = useCaseConfigFactory;
        this.streamSpecsCalculator = streamSpecsCalculator;
    }

    private final CameraUseCaseAdapter provideInternal(CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        return new CameraUseCaseAdapter(cameraInternal, cameraInternal2, adapterCameraInfo, adapterCameraInfo2, compositionSettings, compositionSettings2, this.cameraCoordinator, this.streamSpecsCalculator, this.useCaseConfigFactory);
    }

    public static /* synthetic */ CameraUseCaseAdapter provideInternal$default(CameraUseCaseAdapterProviderImpl cameraUseCaseAdapterProviderImpl, CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, int i, Object obj) {
        if ((i & 2) != 0) {
            cameraInternal2 = null;
        }
        if ((i & 8) != 0) {
            adapterCameraInfo2 = null;
        }
        if ((i & 16) != 0) {
            compositionSettings = CompositionSettings.DEFAULT;
            compositionSettings.getClass();
        }
        if ((i & 32) != 0) {
            compositionSettings2 = CompositionSettings.DEFAULT;
            compositionSettings2.getClass();
        }
        return cameraUseCaseAdapterProviderImpl.provideInternal(cameraInternal, cameraInternal2, adapterCameraInfo, adapterCameraInfo2, compositionSettings, compositionSettings2);
    }

    @Override // androidx.camera.core.CameraUseCaseAdapterProvider
    public CameraUseCaseAdapter provide(String str) {
        str.getClass();
        CameraInternal camera = this.cameraRepository.getCamera(str);
        camera.getClass();
        return provideInternal$default(this, camera, null, new AdapterCameraInfo(camera.getCameraInfoInternal(), CameraConfigs.defaultConfig()), null, null, null, 58, null);
    }

    @Override // androidx.camera.core.CameraUseCaseAdapterProvider
    public CameraUseCaseAdapter provide(CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        cameraInternal.getClass();
        adapterCameraInfo.getClass();
        compositionSettings.getClass();
        compositionSettings2.getClass();
        return provideInternal(cameraInternal, cameraInternal2, adapterCameraInfo, adapterCameraInfo2, compositionSettings, compositionSettings2);
    }
}
