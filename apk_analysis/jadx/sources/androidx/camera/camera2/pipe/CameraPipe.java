package androidx.camera.camera2.pipe;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.os.Handler;
import android.os.Trace;
import androidx.camera.camera2.pipe.config.CameraPipeComponent;
import androidx.camera.camera2.pipe.config.CameraPipeConfigModule;
import androidx.camera.camera2.pipe.config.DaggerCameraPipeComponent;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.media.ImageSources;
import defpackage.aa4;
import defpackage.e02;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mx2;
import defpackage.ox2;
import defpackage.sg;
import defpackage.ul2;
import defpackage.y22;
import defpackage.zg;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface CameraPipe {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final CameraPipe create(Config config) {
            config.getClass();
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("CameraPipe");
                CameraPipeComponent cameraPipeComponentBuild = DaggerCameraPipeComponent.builder().cameraPipeConfigModule(new CameraPipeConfigModule(config)).threadConfigModule(new ThreadConfigModule(config.getThreadConfig())).build();
                Trace.endSection();
                cameraPipeComponentBuild.getClass();
                return new CameraPipeImpl(cameraPipeComponentBuild);
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
    }

    CameraSurfaceManager cameraSurfaceManager();

    CameraDevices cameras();

    @ul2
    CameraGraph create(CameraGraph.Config config);

    CameraGraph createCameraGraph(CameraGraph.Config config);

    List<CameraGraph> createCameraGraphs(CameraGraph.ConcurrentConfig concurrentConfig);

    FrameGraph createFrameGraph(FrameGraph.Config config);

    List<FrameGraph> createFrameGraphs(FrameGraph.ConcurrentConfig concurrentConfig);

    /* JADX INFO: renamed from: getGlobalAudioRestrictionMode-_b5Q8KE, reason: not valid java name */
    int mo375getGlobalAudioRestrictionMode_b5Q8KE();

    /* JADX INFO: renamed from: isConfigSupported-NpXggIU, reason: not valid java name */
    Object mo376isConfigSupportedNpXggIU(CameraGraph.Config config, e02<? super ConfigQueryResult> e02Var);

    void prewarmIsConfigSupported(CameraGraph.Config config);

    /* JADX INFO: renamed from: setGlobalAudioRestrictionMode-LwUUkyU, reason: not valid java name */
    void mo377setGlobalAudioRestrictionModeLwUUkyU(int i);

    void shutdown();

    public static final class Flags {
        private final boolean strictModeEnabled;

        public /* synthetic */ Flags(boolean z, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? false : z);
        }

        public static /* synthetic */ Flags copy$default(Flags flags, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = flags.strictModeEnabled;
            }
            return flags.copy(z);
        }

        public final boolean component1() {
            return this.strictModeEnabled;
        }

        public final Flags copy(boolean z) {
            return new Flags(z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Flags) && this.strictModeEnabled == ((Flags) obj).strictModeEnabled;
        }

        public final boolean getStrictModeEnabled() {
            return this.strictModeEnabled;
        }

        public int hashCode() {
            return Boolean.hashCode(this.strictModeEnabled);
        }

        public String toString() {
            return sg.d(new StringBuilder("Flags(strictModeEnabled="), this.strictModeEnabled, ')');
        }

        public Flags(boolean z) {
            this.strictModeEnabled = z;
        }

        public Flags() {
            this(false, 1, null);
        }
    }

    public static final class CameraMetadataConfig {
        private final Set<CameraCharacteristics.Key<?>> cacheBlocklist;
        private final Map<CameraId, Set<CameraCharacteristics.Key<?>>> cameraCacheBlocklist;

        public /* synthetic */ CameraMetadataConfig(Set set, Map map, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? ox2.b : set, (i & 2) != 0 ? mx2.b : map);
        }

        public final Set<CameraCharacteristics.Key<?>> getCacheBlocklist() {
            return this.cacheBlocklist;
        }

        public final Map<CameraId, Set<CameraCharacteristics.Key<?>>> getCameraCacheBlocklist() {
            return this.cameraCacheBlocklist;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CameraMetadataConfig(Set<? extends CameraCharacteristics.Key<?>> set, Map<CameraId, ? extends Set<? extends CameraCharacteristics.Key<?>>> map) {
            set.getClass();
            map.getClass();
            this.cacheBlocklist = set;
            this.cameraCacheBlocklist = map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CameraMetadataConfig() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }

    public static final class CameraInteropConfig {
        private final CameraInterop.CaptureSessionListener cameraCaptureSessionListener;
        private final CameraDevice.StateCallback cameraDeviceStateCallback;
        private final DurationNs cameraOpenRetryMaxTimeoutNs;

        public /* synthetic */ CameraInteropConfig(CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? null : stateCallback, (i & 2) != 0 ? null : captureSessionListener, (i & 4) != 0 ? null : durationNs, null);
        }

        /* JADX INFO: renamed from: copy-ck8WKOA$default, reason: not valid java name */
        public static /* synthetic */ CameraInteropConfig m379copyck8WKOA$default(CameraInteropConfig cameraInteropConfig, CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs, int i, Object obj) {
            if ((i & 1) != 0) {
                stateCallback = cameraInteropConfig.cameraDeviceStateCallback;
            }
            if ((i & 2) != 0) {
                captureSessionListener = cameraInteropConfig.cameraCaptureSessionListener;
            }
            if ((i & 4) != 0) {
                durationNs = cameraInteropConfig.cameraOpenRetryMaxTimeoutNs;
            }
            return cameraInteropConfig.m381copyck8WKOA(stateCallback, captureSessionListener, durationNs);
        }

        public final CameraDevice.StateCallback component1() {
            return this.cameraDeviceStateCallback;
        }

        public final CameraInterop.CaptureSessionListener component2() {
            return this.cameraCaptureSessionListener;
        }

        /* JADX INFO: renamed from: component3-QWez1Bs, reason: not valid java name */
        public final DurationNs m380component3QWez1Bs() {
            return this.cameraOpenRetryMaxTimeoutNs;
        }

        /* JADX INFO: renamed from: copy-ck8WKOA, reason: not valid java name */
        public final CameraInteropConfig m381copyck8WKOA(CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs) {
            return new CameraInteropConfig(stateCallback, captureSessionListener, durationNs, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CameraInteropConfig)) {
                return false;
            }
            CameraInteropConfig cameraInteropConfig = (CameraInteropConfig) obj;
            return aa4.e(this.cameraDeviceStateCallback, cameraInteropConfig.cameraDeviceStateCallback) && aa4.e(this.cameraCaptureSessionListener, cameraInteropConfig.cameraCaptureSessionListener) && aa4.e(this.cameraOpenRetryMaxTimeoutNs, cameraInteropConfig.cameraOpenRetryMaxTimeoutNs);
        }

        public final CameraInterop.CaptureSessionListener getCameraCaptureSessionListener() {
            return this.cameraCaptureSessionListener;
        }

        public final CameraDevice.StateCallback getCameraDeviceStateCallback() {
            return this.cameraDeviceStateCallback;
        }

        /* JADX INFO: renamed from: getCameraOpenRetryMaxTimeoutNs-QWez1Bs, reason: not valid java name */
        public final DurationNs m382getCameraOpenRetryMaxTimeoutNsQWez1Bs() {
            return this.cameraOpenRetryMaxTimeoutNs;
        }

        public int hashCode() {
            CameraDevice.StateCallback stateCallback = this.cameraDeviceStateCallback;
            int iHashCode = (stateCallback == null ? 0 : stateCallback.hashCode()) * 31;
            CameraInterop.CaptureSessionListener captureSessionListener = this.cameraCaptureSessionListener;
            int iHashCode2 = (iHashCode + (captureSessionListener == null ? 0 : captureSessionListener.hashCode())) * 31;
            DurationNs durationNs = this.cameraOpenRetryMaxTimeoutNs;
            return iHashCode2 + (durationNs != null ? DurationNs.m848hashCodeimpl(durationNs.m853unboximpl()) : 0);
        }

        public String toString() {
            return "CameraInteropConfig(cameraDeviceStateCallback=" + this.cameraDeviceStateCallback + ", cameraCaptureSessionListener=" + this.cameraCaptureSessionListener + ", cameraOpenRetryMaxTimeoutNs=" + this.cameraOpenRetryMaxTimeoutNs + ')';
        }

        private CameraInteropConfig(CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs) {
            this.cameraDeviceStateCallback = stateCallback;
            this.cameraCaptureSessionListener = captureSessionListener;
            this.cameraOpenRetryMaxTimeoutNs = durationNs;
        }

        public /* synthetic */ CameraInteropConfig(CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs, jh2 jh2Var) {
            this(stateCallback, captureSessionListener, durationNs);
        }
    }

    public static final class ThreadConfig {
        private final Executor defaultBackgroundExecutor;
        private final Executor defaultBlockingExecutor;
        private final Executor defaultCameraExecutor;
        private final Handler defaultCameraHandler;
        private final ll3<Handler> defaultCameraHandlerFn;
        private final Executor defaultLightweightExecutor;
        private final y22 testOnlyScope;

        public /* synthetic */ ThreadConfig(Executor executor, Executor executor2, Executor executor3, Executor executor4, Handler handler, ll3 ll3Var, y22 y22Var, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? null : executor, (i & 2) != 0 ? null : executor2, (i & 4) != 0 ? null : executor3, (i & 8) != 0 ? null : executor4, (i & 16) != 0 ? null : handler, (i & 32) != 0 ? null : ll3Var, (i & 64) != 0 ? null : y22Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ThreadConfig copy$default(ThreadConfig threadConfig, Executor executor, Executor executor2, Executor executor3, Executor executor4, Handler handler, ll3 ll3Var, y22 y22Var, int i, Object obj) {
            if ((i & 1) != 0) {
                executor = threadConfig.defaultLightweightExecutor;
            }
            if ((i & 2) != 0) {
                executor2 = threadConfig.defaultBackgroundExecutor;
            }
            if ((i & 4) != 0) {
                executor3 = threadConfig.defaultBlockingExecutor;
            }
            if ((i & 8) != 0) {
                executor4 = threadConfig.defaultCameraExecutor;
            }
            if ((i & 16) != 0) {
                handler = threadConfig.defaultCameraHandler;
            }
            if ((i & 32) != 0) {
                ll3Var = threadConfig.defaultCameraHandlerFn;
            }
            if ((i & 64) != 0) {
                y22Var = threadConfig.testOnlyScope;
            }
            ll3 ll3Var2 = ll3Var;
            y22 y22Var2 = y22Var;
            Handler handler2 = handler;
            Executor executor5 = executor3;
            return threadConfig.copy(executor, executor2, executor5, executor4, handler2, ll3Var2, y22Var2);
        }

        public final Executor component1() {
            return this.defaultLightweightExecutor;
        }

        public final Executor component2() {
            return this.defaultBackgroundExecutor;
        }

        public final Executor component3() {
            return this.defaultBlockingExecutor;
        }

        public final Executor component4() {
            return this.defaultCameraExecutor;
        }

        public final Handler component5() {
            return this.defaultCameraHandler;
        }

        public final ll3<Handler> component6() {
            return this.defaultCameraHandlerFn;
        }

        public final y22 component7() {
            return this.testOnlyScope;
        }

        public final ThreadConfig copy(Executor executor, Executor executor2, Executor executor3, Executor executor4, Handler handler, ll3<? extends Handler> ll3Var, y22 y22Var) {
            return new ThreadConfig(executor, executor2, executor3, executor4, handler, ll3Var, y22Var);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ThreadConfig)) {
                return false;
            }
            ThreadConfig threadConfig = (ThreadConfig) obj;
            return aa4.e(this.defaultLightweightExecutor, threadConfig.defaultLightweightExecutor) && aa4.e(this.defaultBackgroundExecutor, threadConfig.defaultBackgroundExecutor) && aa4.e(this.defaultBlockingExecutor, threadConfig.defaultBlockingExecutor) && aa4.e(this.defaultCameraExecutor, threadConfig.defaultCameraExecutor) && aa4.e(this.defaultCameraHandler, threadConfig.defaultCameraHandler) && aa4.e(this.defaultCameraHandlerFn, threadConfig.defaultCameraHandlerFn) && aa4.e(this.testOnlyScope, threadConfig.testOnlyScope);
        }

        public final Executor getDefaultBackgroundExecutor() {
            return this.defaultBackgroundExecutor;
        }

        public final Executor getDefaultBlockingExecutor() {
            return this.defaultBlockingExecutor;
        }

        public final Executor getDefaultCameraExecutor() {
            return this.defaultCameraExecutor;
        }

        public final Handler getDefaultCameraHandler() {
            return this.defaultCameraHandler;
        }

        public final ll3<Handler> getDefaultCameraHandlerFn() {
            return this.defaultCameraHandlerFn;
        }

        public final Executor getDefaultLightweightExecutor() {
            return this.defaultLightweightExecutor;
        }

        public final y22 getTestOnlyScope() {
            return this.testOnlyScope;
        }

        public int hashCode() {
            Executor executor = this.defaultLightweightExecutor;
            int iHashCode = (executor == null ? 0 : executor.hashCode()) * 31;
            Executor executor2 = this.defaultBackgroundExecutor;
            int iHashCode2 = (iHashCode + (executor2 == null ? 0 : executor2.hashCode())) * 31;
            Executor executor3 = this.defaultBlockingExecutor;
            int iHashCode3 = (iHashCode2 + (executor3 == null ? 0 : executor3.hashCode())) * 31;
            Executor executor4 = this.defaultCameraExecutor;
            int iHashCode4 = (iHashCode3 + (executor4 == null ? 0 : executor4.hashCode())) * 31;
            Handler handler = this.defaultCameraHandler;
            int iHashCode5 = (iHashCode4 + (handler == null ? 0 : handler.hashCode())) * 31;
            ll3<Handler> ll3Var = this.defaultCameraHandlerFn;
            int iHashCode6 = (iHashCode5 + (ll3Var == null ? 0 : ll3Var.hashCode())) * 31;
            y22 y22Var = this.testOnlyScope;
            return iHashCode6 + (y22Var != null ? y22Var.hashCode() : 0);
        }

        public String toString() {
            return "ThreadConfig(defaultLightweightExecutor=" + this.defaultLightweightExecutor + ", defaultBackgroundExecutor=" + this.defaultBackgroundExecutor + ", defaultBlockingExecutor=" + this.defaultBlockingExecutor + ", defaultCameraExecutor=" + this.defaultCameraExecutor + ", defaultCameraHandler=" + this.defaultCameraHandler + ", defaultCameraHandlerFn=" + this.defaultCameraHandlerFn + ", testOnlyScope=" + this.testOnlyScope + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ThreadConfig(Executor executor, Executor executor2, Executor executor3, Executor executor4, Handler handler, ll3<? extends Handler> ll3Var, y22 y22Var) {
            this.defaultLightweightExecutor = executor;
            this.defaultBackgroundExecutor = executor2;
            this.defaultBlockingExecutor = executor3;
            this.defaultCameraExecutor = executor4;
            this.defaultCameraHandler = handler;
            this.defaultCameraHandlerFn = ll3Var;
            this.testOnlyScope = y22Var;
        }

        public ThreadConfig() {
            this(null, null, null, null, null, null, null, androidx.tracing.Trace.MAX_TRACE_LABEL_LENGTH, null);
        }
    }

    public static final class CameraBackendConfig {
        private final Map<CameraBackendId, CameraBackendFactory> cameraBackends;
        private final String defaultBackend;
        private final CameraBackend internalBackend;

        /* JADX WARN: Multi-variable type inference failed */
        private CameraBackendConfig(CameraBackend cameraBackend, String str, Map<CameraBackendId, ? extends CameraBackendFactory> map) {
            map.getClass();
            this.internalBackend = cameraBackend;
            this.defaultBackend = str;
            this.cameraBackends = map;
            if (str != null) {
                if (map.containsKey(str != null ? CameraBackendId.m187boximpl(str) : null)) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append((Object) (str == null ? "null" : CameraBackendId.m192toStringimpl(str)));
                zg.g(sb, " does not exist in cameraBackends! Available backends are: ", map.keySet());
                throw null;
            }
        }

        public final Map<CameraBackendId, CameraBackendFactory> getCameraBackends() {
            return this.cameraBackends;
        }

        /* JADX INFO: renamed from: getDefaultBackend-AKmI2lo, reason: not valid java name */
        public final String m378getDefaultBackendAKmI2lo() {
            return this.defaultBackend;
        }

        public final CameraBackend getInternalBackend() {
            return this.internalBackend;
        }

        public /* synthetic */ CameraBackendConfig(CameraBackend cameraBackend, String str, Map map, jh2 jh2Var) {
            this(cameraBackend, str, map);
        }

        public /* synthetic */ CameraBackendConfig(CameraBackend cameraBackend, String str, Map map, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? null : cameraBackend, (i & 2) != 0 ? null : str, (i & 4) != 0 ? mx2.b : map, null);
        }
    }

    public static final class Config {
        private final Context appContext;
        private final CameraBackendConfig cameraBackendConfig;
        private final CameraInteropConfig cameraInteropConfig;
        private final CameraMetadataConfig cameraMetadataConfig;
        private final Flags flags;
        private final ImageSources imageSources;
        private final PlatformApiCompat platformApiCompat;
        private final ThreadConfig threadConfig;

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Config(Context context, ThreadConfig threadConfig, CameraMetadataConfig cameraMetadataConfig, CameraBackendConfig cameraBackendConfig, CameraInteropConfig cameraInteropConfig, ImageSources imageSources, Flags flags, PlatformApiCompat platformApiCompat, int i, jh2 jh2Var) {
            this(context, (i & 2) != 0 ? new ThreadConfig(null, null, null, null, null, null, null, androidx.tracing.Trace.MAX_TRACE_LABEL_LENGTH, null) : threadConfig, (i & 4) != 0 ? new CameraMetadataConfig(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0) : cameraMetadataConfig, (i & 8) != 0 ? new CameraBackendConfig(null, null, null, 7, null) : cameraBackendConfig, (i & 16) != 0 ? new CameraInteropConfig(null, null, null, 7, null) : cameraInteropConfig, (i & 32) != 0 ? null : imageSources, (i & 64) != 0 ? new Flags(false, 1, 0 == true ? 1 : 0) : flags, (i & 128) != 0 ? null : platformApiCompat);
        }

        public static /* synthetic */ Config copy$default(Config config, Context context, ThreadConfig threadConfig, CameraMetadataConfig cameraMetadataConfig, CameraBackendConfig cameraBackendConfig, CameraInteropConfig cameraInteropConfig, ImageSources imageSources, Flags flags, PlatformApiCompat platformApiCompat, int i, Object obj) {
            if ((i & 1) != 0) {
                context = config.appContext;
            }
            if ((i & 2) != 0) {
                threadConfig = config.threadConfig;
            }
            if ((i & 4) != 0) {
                cameraMetadataConfig = config.cameraMetadataConfig;
            }
            if ((i & 8) != 0) {
                cameraBackendConfig = config.cameraBackendConfig;
            }
            if ((i & 16) != 0) {
                cameraInteropConfig = config.cameraInteropConfig;
            }
            if ((i & 32) != 0) {
                imageSources = config.imageSources;
            }
            if ((i & 64) != 0) {
                flags = config.flags;
            }
            if ((i & 128) != 0) {
                platformApiCompat = config.platformApiCompat;
            }
            Flags flags2 = flags;
            PlatformApiCompat platformApiCompat2 = platformApiCompat;
            CameraInteropConfig cameraInteropConfig2 = cameraInteropConfig;
            ImageSources imageSources2 = imageSources;
            return config.copy(context, threadConfig, cameraMetadataConfig, cameraBackendConfig, cameraInteropConfig2, imageSources2, flags2, platformApiCompat2);
        }

        public final Context component1() {
            return this.appContext;
        }

        public final ThreadConfig component2() {
            return this.threadConfig;
        }

        public final CameraMetadataConfig component3() {
            return this.cameraMetadataConfig;
        }

        public final CameraBackendConfig component4() {
            return this.cameraBackendConfig;
        }

        public final CameraInteropConfig component5() {
            return this.cameraInteropConfig;
        }

        public final ImageSources component6() {
            return this.imageSources;
        }

        public final Flags component7() {
            return this.flags;
        }

        public final PlatformApiCompat component8() {
            return this.platformApiCompat;
        }

        public final Config copy(Context context, ThreadConfig threadConfig, CameraMetadataConfig cameraMetadataConfig, CameraBackendConfig cameraBackendConfig, CameraInteropConfig cameraInteropConfig, ImageSources imageSources, Flags flags, PlatformApiCompat platformApiCompat) {
            context.getClass();
            threadConfig.getClass();
            cameraMetadataConfig.getClass();
            cameraBackendConfig.getClass();
            cameraInteropConfig.getClass();
            flags.getClass();
            return new Config(context, threadConfig, cameraMetadataConfig, cameraBackendConfig, cameraInteropConfig, imageSources, flags, platformApiCompat);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Config)) {
                return false;
            }
            Config config = (Config) obj;
            return aa4.e(this.appContext, config.appContext) && aa4.e(this.threadConfig, config.threadConfig) && aa4.e(this.cameraMetadataConfig, config.cameraMetadataConfig) && aa4.e(this.cameraBackendConfig, config.cameraBackendConfig) && aa4.e(this.cameraInteropConfig, config.cameraInteropConfig) && aa4.e(this.imageSources, config.imageSources) && aa4.e(this.flags, config.flags) && aa4.e(this.platformApiCompat, config.platformApiCompat);
        }

        public final Context getAppContext() {
            return this.appContext;
        }

        public final CameraBackendConfig getCameraBackendConfig() {
            return this.cameraBackendConfig;
        }

        public final CameraInteropConfig getCameraInteropConfig() {
            return this.cameraInteropConfig;
        }

        public final CameraMetadataConfig getCameraMetadataConfig() {
            return this.cameraMetadataConfig;
        }

        public final Flags getFlags() {
            return this.flags;
        }

        public final ImageSources getImageSources() {
            return this.imageSources;
        }

        public final PlatformApiCompat getPlatformApiCompat() {
            return this.platformApiCompat;
        }

        public final ThreadConfig getThreadConfig() {
            return this.threadConfig;
        }

        public int hashCode() {
            int iHashCode = (this.cameraInteropConfig.hashCode() + ((this.cameraBackendConfig.hashCode() + ((this.cameraMetadataConfig.hashCode() + ((this.threadConfig.hashCode() + (this.appContext.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
            ImageSources imageSources = this.imageSources;
            int iHashCode2 = (this.flags.hashCode() + ((iHashCode + (imageSources == null ? 0 : imageSources.hashCode())) * 31)) * 31;
            PlatformApiCompat platformApiCompat = this.platformApiCompat;
            return iHashCode2 + (platformApiCompat != null ? platformApiCompat.hashCode() : 0);
        }

        public String toString() {
            return "Config(appContext=" + this.appContext + ", threadConfig=" + this.threadConfig + ", cameraMetadataConfig=" + this.cameraMetadataConfig + ", cameraBackendConfig=" + this.cameraBackendConfig + ", cameraInteropConfig=" + this.cameraInteropConfig + ", imageSources=" + this.imageSources + ", flags=" + this.flags + ", platformApiCompat=" + this.platformApiCompat + ')';
        }

        public Config(Context context, ThreadConfig threadConfig, CameraMetadataConfig cameraMetadataConfig, CameraBackendConfig cameraBackendConfig, CameraInteropConfig cameraInteropConfig, ImageSources imageSources, Flags flags, PlatformApiCompat platformApiCompat) {
            context.getClass();
            threadConfig.getClass();
            cameraMetadataConfig.getClass();
            cameraBackendConfig.getClass();
            cameraInteropConfig.getClass();
            flags.getClass();
            this.appContext = context;
            this.threadConfig = threadConfig;
            this.cameraMetadataConfig = cameraMetadataConfig;
            this.cameraBackendConfig = cameraBackendConfig;
            this.cameraInteropConfig = cameraInteropConfig;
            this.imageSources = imageSources;
            this.flags = flags;
            this.platformApiCompat = platformApiCompat;
        }
    }
}
