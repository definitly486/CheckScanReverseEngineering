package androidx.camera.camera2.pipe.config;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.camera2.CameraManager;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendFactory;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.AndroidDevicePolicyManagerWrapper;
import androidx.camera.camera2.pipe.compat.DevicePolicyManagerWrapper;
import androidx.camera.camera2.pipe.config.CameraPipeModule;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.internal.CameraBackendsImpl;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.camera2.pipe.media.ImageReaderImageSources;
import androidx.camera.camera2.pipe.media.ImageSources;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.qb4;
import defpackage.wg;
import defpackage.ws6;
import defpackage.zg;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraPipeModule {
    public static final Companion Companion = new Companion(null);

    public abstract CameraDevices bindCameras(CameraDevicesImpl cameraDevicesImpl);

    public abstract TimeSource bindTimeSource(SystemTimeSource systemTimeSource);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CameraBackend provideCameraBackends$lambda$2(CameraBackend cameraBackend, CameraContext cameraContext) {
            cameraContext.getClass();
            cameraBackend.getClass();
            return cameraBackend;
        }

        public final ImageSources configureImageSources(ImageReaderImageSources imageReaderImageSources, CameraPipe.Config config) {
            imageReaderImageSources.getClass();
            config.getClass();
            return config.getImageSources() != null ? config.getImageSources() : imageReaderImageSources;
        }

        public final CameraBackends provideCameraBackends(CameraPipe.Config config, @DefaultCameraBackend ws6<CameraBackend> ws6Var, @CameraPipeContext Context context, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
            Map map;
            config.getClass();
            ws6Var.getClass();
            context.getClass();
            threads.getClass();
            cameraPipeLifetime.getClass();
            final CameraBackend internalBackend = config.getCameraBackendConfig().getInternalBackend();
            if (internalBackend == null) {
                Debug debug = Debug.INSTANCE;
                try {
                    Trace.beginSection("Initialize defaultCameraBackend");
                    internalBackend = ws6Var.get();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            if (config.getCameraBackendConfig().getCameraBackends().containsKey(CameraBackendId.m187boximpl(internalBackend.mo178getIdQwmhuAM()))) {
                wg.c(CameraBackendId.m192toStringimpl(internalBackend.mo178getIdQwmhuAM()), "CameraBackendConfig#cameraBackends should not contain a backend with ", ". Use CameraBackendConfig#internalBackend field instead.");
                return null;
            }
            Map<CameraBackendId, CameraBackendFactory> cameraBackends = config.getCameraBackendConfig().getCameraBackends();
            CameraBackendId cameraBackendIdM187boximpl = CameraBackendId.m187boximpl(internalBackend.mo178getIdQwmhuAM());
            CameraBackendFactory cameraBackendFactory = new CameraBackendFactory() { // from class: e11
                @Override // androidx.camera.camera2.pipe.CameraBackendFactory
                public final CameraBackend create(CameraContext cameraContext) {
                    return CameraPipeModule.Companion.provideCameraBackends$lambda$2(internalBackend, cameraContext);
                }
            };
            cameraBackends.getClass();
            if (cameraBackends.isEmpty()) {
                Map mapSingletonMap = Collections.singletonMap(cameraBackendIdM187boximpl, cameraBackendFactory);
                mapSingletonMap.getClass();
                map = mapSingletonMap;
            } else {
                LinkedHashMap linkedHashMap = new LinkedHashMap(cameraBackends);
                linkedHashMap.put(cameraBackendIdM187boximpl, cameraBackendFactory);
                map = linkedHashMap;
            }
            String strM378getDefaultBackendAKmI2lo = config.getCameraBackendConfig().m378getDefaultBackendAKmI2lo();
            if (strM378getDefaultBackendAKmI2lo == null) {
                strM378getDefaultBackendAKmI2lo = internalBackend.mo178getIdQwmhuAM();
            }
            String str = strM378getDefaultBackendAKmI2lo;
            if (map.containsKey(CameraBackendId.m187boximpl(str))) {
                return new CameraBackendsImpl(str, map, context, threads, cameraPipeLifetime, null);
            }
            StringBuilder sb = new StringBuilder("Failed to find ");
            sb.append((Object) CameraBackendId.m192toStringimpl(str));
            zg.g(sb, " in the list of available CameraPipe backends! Available values are ", map.keySet());
            return null;
        }

        public final CameraContext provideCameraContext(@CameraPipeContext final Context context, final Threads threads, final CameraBackends cameraBackends) {
            context.getClass();
            threads.getClass();
            cameraBackends.getClass();
            return new CameraContext(context, threads, cameraBackends) { // from class: androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$provideCameraContext$1
                private final Context appContext;
                private final CameraBackends cameraBackends;
                private final Threads threads;

                {
                    this.appContext = context;
                    this.threads = threads;
                    this.cameraBackends = cameraBackends;
                }

                @Override // androidx.camera.camera2.pipe.CameraContext
                public Context getAppContext() {
                    return this.appContext;
                }

                @Override // androidx.camera.camera2.pipe.CameraContext
                public CameraBackends getCameraBackends() {
                    return this.cameraBackends;
                }

                @Override // androidx.camera.camera2.pipe.CameraContext
                public Threads getThreads() {
                    return this.threads;
                }
            };
        }

        public final CameraDeviceSetupCompatFactory provideCameraDeviceSetupCompatFactory(@CameraPipeContext Context context) {
            context.getClass();
            return new CameraDeviceSetupCompatFactory(context);
        }

        public final CameraManager provideCameraManager(@CameraPipeContext Context context) {
            context.getClass();
            Object systemService = context.getSystemService("camera");
            systemService.getClass();
            return (CameraManager) systemService;
        }

        public final CameraPipe.CameraMetadataConfig provideCameraMetadataConfig(CameraPipe.Config config) {
            config.getClass();
            return config.getCameraMetadataConfig();
        }

        @CameraPipeJob
        public final mb4 provideCameraPipeJob() {
            return qb4.a();
        }

        public final CameraSurfaceManager provideCameraSurfaceManager() {
            return new CameraSurfaceManager();
        }

        @CameraPipeContext
        public final Context provideContext(CameraPipe.Config config) {
            config.getClass();
            return config.getAppContext();
        }

        public final DevicePolicyManagerWrapper provideDevicePolicyManagerWrapper(@CameraPipeContext Context context) {
            context.getClass();
            Object systemService = context.getSystemService("device_policy");
            systemService.getClass();
            return new AndroidDevicePolicyManagerWrapper((DevicePolicyManager) systemService);
        }

        public final PackageManager providePackageManager(@CameraPipeContext Context context) {
            context.getClass();
            PackageManager packageManager = context.getPackageManager();
            packageManager.getClass();
            return packageManager;
        }

        public final StrictMode provideStrictMode(CameraPipe.Flags flags) {
            flags.getClass();
            return new StrictMode(flags.getStrictModeEnabled());
        }

        private Companion() {
        }
    }
}
