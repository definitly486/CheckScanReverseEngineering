package androidx.camera.camera2.config;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import androidx.camera.camera2.adapter.CameraControlAdapter;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.camera.camera2.adapter.CameraInternalAdapter;
import androidx.camera.camera2.adapter.EncoderProfilesProviderAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.adapter.ZslControlImpl;
import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import defpackage.aq5;
import defpackage.jh2;
import defpackage.o22;
import defpackage.r22;
import defpackage.rm9;
import defpackage.w22;
import defpackage.z22;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraModule {
    public static final Companion Companion = new Companion(null);

    public abstract CameraControlInternal bindCameraControlInternal(CameraControlAdapter cameraControlAdapter);

    public abstract CameraInfoInternal bindCameraInfoInternal(CameraInfoAdapter cameraInfoAdapter);

    public abstract CameraInternal bindCameraInternal(CameraInternalAdapter cameraInternalAdapter);

    public abstract CameraProperties bindCameraProperties(CameraPipeCameraProperties cameraPipeCameraProperties);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @CameraScope
        public final Camera2CameraControl provideCamera2CameraControl(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
            camera2CameraControlCompat.getClass();
            useCaseThreads.getClass();
            comboRequestListener.getClass();
            return Camera2CameraControl.Companion.create(camera2CameraControlCompat, useCaseThreads, comboRequestListener);
        }

        @CameraScope
        public final String provideCameraIdString(CameraConfig cameraConfig) {
            cameraConfig.getClass();
            return cameraConfig.m39getCameraIdDz_R5H8();
        }

        @CameraScope
        public final CameraMetadata provideCameraMetadata(CameraPipe cameraPipe, CameraConfig cameraConfig) {
            cameraPipe.getClass();
            cameraConfig.getClass();
            try {
                return CameraDevices.m237awaitCameraMetadataFpsL5FU$default(cameraPipe.cameras(), cameraConfig.m39getCameraIdDz_R5H8(), null, 2, null);
            } catch (DoNotDisturbException unused) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled(Log.TAG)) {
                    android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Failed to inject camera metadata: Do Not Disturb mode is on.");
                }
                return null;
            }
        }

        @CameraScope
        public final Quirks provideCameraQuirksValues(CameraQuirks cameraQuirks) {
            cameraQuirks.getClass();
            return cameraQuirks.getQuirks();
        }

        @CameraScope
        public final EncoderProfilesProvider provideEncoderProfilesProvider(String str, CameraQuirks cameraQuirks) {
            str.getClass();
            cameraQuirks.getClass();
            return new EncoderProfilesProviderAdapter(str, cameraQuirks.getQuirks());
        }

        @CameraScope
        public final StreamConfigurationMap provideStreamConfigurationMap(CameraMetadata cameraMetadata) {
            if (cameraMetadata == null) {
                return null;
            }
            CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
            key.getClass();
            return (StreamConfigurationMap) cameraMetadata.get(key);
        }

        @CameraScope
        public final UseCaseThreads provideUseCaseThreads(CameraConfig cameraConfig, CameraThreadConfig cameraThreadConfig) {
            cameraConfig.getClass();
            cameraThreadConfig.getClass();
            Executor cameraExecutor = cameraThreadConfig.getCameraExecutor();
            cameraExecutor.getClass();
            Executor cameraExecutor2 = cameraThreadConfig.getCameraExecutor();
            cameraExecutor2.getClass();
            r22 r22VarX = aq5.x(cameraExecutor2);
            return new UseCaseThreads(z22.a(o22.a.C0306a.d(rm9.b(), r22VarX).plus(new w22("CXCP-UseCase-" + cameraConfig.m39getCameraIdDz_R5H8()))), cameraExecutor, r22VarX);
        }

        @CameraScope
        public final ZslControl provideZslControl(CameraProperties cameraProperties) {
            cameraProperties.getClass();
            return new ZslControlImpl(cameraProperties);
        }

        private Companion() {
        }
    }
}
