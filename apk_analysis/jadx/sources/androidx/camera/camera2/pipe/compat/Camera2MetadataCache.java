package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.config.CameraPipeContext;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.Timestamps;
import defpackage.av0;
import defpackage.cg;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh;
import defpackage.mr7;
import defpackage.mx2;
import defpackage.ox2;
import defpackage.qn1;
import defpackage.u4;
import java.util.Arrays;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2MetadataCache implements Camera2MetadataProvider {
    private final ArrayMap<String, CameraMetadata> cache;
    private final CameraPipe.CameraMetadataConfig cameraMetadataConfig;
    private final Context cameraPipeContext;
    private final ArrayMap<String, CameraExtensionMetadata> extensionCache;
    private final ArrayMap<String, CameraExtensionCharacteristics> extensionCharacteristicsCache;
    private final Permissions permissions;
    private final Threads threads;
    private final TimeSource timeSource;

    public Camera2MetadataCache(@CameraPipeContext Context context, Threads threads, Permissions permissions, CameraPipe.CameraMetadataConfig cameraMetadataConfig, TimeSource timeSource) {
        context.getClass();
        threads.getClass();
        permissions.getClass();
        cameraMetadataConfig.getClass();
        timeSource.getClass();
        this.cameraPipeContext = context;
        this.threads = threads;
        this.permissions = permissions;
        this.cameraMetadataConfig = cameraMetadataConfig;
        this.timeSource = timeSource;
        this.cache = new ArrayMap<>();
        this.extensionCache = new ArrayMap<>();
        this.extensionCharacteristicsCache = new ArrayMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createCameraExtensionMetadata-RzXb1QE, reason: not valid java name */
    public final Camera2CameraExtensionMetadata m774createCameraExtensionMetadataRzXb1QE(String str, boolean z, int i) {
        String str2;
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo855nowvQl9yQU = this.timeSource.mo855nowvQl9yQU();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m357toStringimpl(str)) + "#readCameraExtensionMetadata");
            try {
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Loading extension metadata for " + ((Object) CameraId.m357toStringimpl(str)));
                }
                Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = new Camera2CameraExtensionMetadata(str, z, i, m776getCameraExtensionCharacteristicsEfqyGwQ(str), mx2.b, null);
                if (log.getINFO_LOGGABLE()) {
                    long jM845constructorimpl = DurationNs.m845constructorimpl(this.timeSource.mo855nowvQl9yQU() - jMo855nowvQl9yQU);
                    if (!z) {
                        str2 = "";
                    } else {
                        if (!z) {
                            throw new NoWhenBranchMatchedException();
                        }
                        str2 = " (redacted)";
                    }
                    android.util.Log.i(Log.TAG, "Loaded extension metadata for " + ((Object) CameraId.m357toStringimpl(str)) + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM845constructorimpl / 1000000.0d)}, 1)) + str2);
                }
                Trace.endSection();
                return camera2CameraExtensionMetadata;
            } catch (Throwable th) {
                throw new IllegalStateException("Failed to load extension metadata for " + ((Object) CameraId.m357toStringimpl(str)) + '!', th);
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createCameraMetadata-0r8Bogc, reason: not valid java name */
    public final Camera2CameraMetadata m775createCameraMetadata0r8Bogc(String str, boolean z) {
        Set<CameraCharacteristics.Key<?>> setM;
        String str2;
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo855nowvQl9yQU = this.timeSource.mo855nowvQl9yQU();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m357toStringimpl(str)) + "#readCameraMetadata");
            try {
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Loading metadata for " + ((Object) CameraId.m357toStringimpl(str)));
                }
                Object systemService = this.cameraPipeContext.getSystemService("camera");
                systemService.getClass();
                CameraCharacteristics cameraCharacteristics = ((CameraManager) systemService).getCameraCharacteristics(str);
                cameraCharacteristics.getClass();
                if (shouldBlockSensorOrientationCache(cameraCharacteristics)) {
                    Set<CameraCharacteristics.Key<?>> set = this.cameraMetadataConfig.getCameraCacheBlocklist().get(CameraId.m351boximpl(str));
                    if (set == null) {
                        set = ox2.b;
                    }
                    setM = mr7.m(set, CameraCharacteristics.SENSOR_ORIENTATION);
                } else {
                    setM = this.cameraMetadataConfig.getCameraCacheBlocklist().get(CameraId.m351boximpl(str));
                }
                Camera2CameraMetadata camera2CameraMetadata = new Camera2CameraMetadata(str, z, cameraCharacteristics, this, mx2.b, setM == null ? this.cameraMetadataConfig.getCacheBlocklist() : mr7.l(this.cameraMetadataConfig.getCacheBlocklist(), setM), null);
                if (log.getINFO_LOGGABLE()) {
                    long jM845constructorimpl = DurationNs.m845constructorimpl(this.timeSource.mo855nowvQl9yQU() - jMo855nowvQl9yQU);
                    if (!z) {
                        str2 = "";
                    } else {
                        if (!z) {
                            throw new NoWhenBranchMatchedException();
                        }
                        str2 = " (redacted)";
                    }
                    android.util.Log.i(Log.TAG, "Loaded metadata for " + ((Object) CameraId.m357toStringimpl(str)) + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM845constructorimpl / 1000000.0d)}, 1)) + str2);
                }
                Trace.endSection();
                return camera2CameraMetadata;
            } catch (Throwable th) {
                if (CameraError.Companion.shouldHandleDoNotDisturbException$camera_camera2_pipe(th)) {
                    throw new DoNotDisturbException("Failed to load metadata: Do Not Disturb mode is on!");
                }
                throw new IllegalStateException("Failed to load metadata for " + ((Object) CameraId.m357toStringimpl(str)) + '!', th);
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getCameraExtensionCharacteristics-EfqyGwQ, reason: not valid java name */
    public final CameraExtensionCharacteristics m776getCameraExtensionCharacteristicsEfqyGwQ(String str) throws CameraAccessException {
        synchronized (this.extensionCharacteristicsCache) {
            CameraExtensionCharacteristics cameraExtensionCharacteristicsB = u4.b(this.extensionCharacteristicsCache.get(str));
            if (cameraExtensionCharacteristicsB != null) {
                return cameraExtensionCharacteristicsB;
            }
            j59 j59Var = j59.a;
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Retrieving CameraExtensionCharacteristics for " + ((Object) CameraId.m357toStringimpl(str)));
            }
            Object systemService = this.cameraPipeContext.getSystemService("camera");
            systemService.getClass();
            CameraExtensionCharacteristics cameraExtensionCharacteristics = Api31Compat.getCameraExtensionCharacteristics((CameraManager) systemService, str);
            if (cameraExtensionCharacteristics != null) {
                return cameraExtensionCharacteristics;
            }
            cg.f(CameraId.m357toStringimpl(str), "Failed to get CameraExtensionCharacteristics for ", 33);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMetadataRedacted() {
        return !this.permissions.getHasCameraPermission();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldBlockSensorOrientationCache(CameraCharacteristics cameraCharacteristics) {
        return Build.VERSION.SDK_INT >= 32 && cameraCharacteristics.get(CameraCharacteristics.INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP) != null;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: awaitCameraExtensionMetadata-0r8Bogc, reason: not valid java name */
    public CameraExtensionMetadata mo777awaitCameraExtensionMetadata0r8Bogc(String str, int i) throws Exception {
        CameraExtensionMetadata cameraExtensionMetadataM774createCameraExtensionMetadataRzXb1QE;
        str.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31) {
            throw new Exception(jh.b(i2, "Extension sessions are only supported on Android S or higher. Device SDK is "));
        }
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m357toStringimpl(str)) + "#awaitExtensionMetadata");
            synchronized (this.extensionCache) {
                try {
                    cameraExtensionMetadataM774createCameraExtensionMetadataRzXb1QE = (CameraExtensionMetadata) this.extensionCache.get(str);
                    if (cameraExtensionMetadataM774createCameraExtensionMetadataRzXb1QE == null) {
                        if (isMetadataRedacted()) {
                            j59 j59Var = j59.a;
                            cameraExtensionMetadataM774createCameraExtensionMetadataRzXb1QE = m774createCameraExtensionMetadataRzXb1QE(str, true, i);
                        } else {
                            cameraExtensionMetadataM774createCameraExtensionMetadataRzXb1QE = m774createCameraExtensionMetadataRzXb1QE(str, false, i);
                            this.extensionCache.put(str, cameraExtensionMetadataM774createCameraExtensionMetadataRzXb1QE);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            Trace.endSection();
            return cameraExtensionMetadataM774createCameraExtensionMetadataRzXb1QE;
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ, reason: not valid java name */
    public CameraMetadata mo778awaitCameraMetadataEfqyGwQ(String str) {
        CameraMetadata cameraMetadataM775createCameraMetadata0r8Bogc;
        str.getClass();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m357toStringimpl(str)) + "#awaitMetadata");
            synchronized (this.cache) {
                try {
                    cameraMetadataM775createCameraMetadata0r8Bogc = (CameraMetadata) this.cache.get(str);
                    if (cameraMetadataM775createCameraMetadata0r8Bogc == null) {
                        if (isMetadataRedacted()) {
                            j59 j59Var = j59.a;
                            cameraMetadataM775createCameraMetadata0r8Bogc = m775createCameraMetadata0r8Bogc(str, true);
                        } else {
                            cameraMetadataM775createCameraMetadata0r8Bogc = m775createCameraMetadata0r8Bogc(str, false);
                            this.cache.put(str, cameraMetadataM775createCameraMetadata0r8Bogc);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            Trace.endSection();
            return cameraMetadataM775createCameraMetadata0r8Bogc;
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: getCameraExtensionMetadata-RzXb1QE, reason: not valid java name */
    public Object mo779getCameraExtensionMetadataRzXb1QE(String str, int i, e02<? super CameraExtensionMetadata> e02Var) {
        synchronized (this.extensionCache) {
            CameraExtensionMetadata cameraExtensionMetadata = this.extensionCache.get(str);
            if (cameraExtensionMetadata != null) {
                return cameraExtensionMetadata;
            }
            j59 j59Var = j59.a;
            return av0.d(this.threads.getBackgroundDispatcher(), new Camera2MetadataCache$getCameraExtensionMetadata$3(this, str, i, null), e02Var);
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc, reason: not valid java name */
    public Object mo780getCameraMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var) {
        synchronized (this.cache) {
            CameraMetadata cameraMetadata = this.cache.get(str);
            if (cameraMetadata != null) {
                return cameraMetadata;
            }
            j59 j59Var = j59.a;
            return av0.d(this.threads.getBackgroundDispatcher(), new Camera2MetadataCache$getCameraMetadata$3(this, str, null), e02Var);
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: getSupportedCameraExtensions-EfqyGwQ, reason: not valid java name */
    public Set<Integer> mo781getSupportedCameraExtensionsEfqyGwQ(String str) {
        str.getClass();
        return Build.VERSION.SDK_INT >= 31 ? qn1.y0(Api31Compat.getSupportedExtensions(m776getCameraExtensionCharacteristicsEfqyGwQ(str))) : ox2.b;
    }
}
