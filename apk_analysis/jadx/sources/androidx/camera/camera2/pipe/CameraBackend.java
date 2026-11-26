package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.kx2;
import defpackage.mk2;
import defpackage.rd3;
import defpackage.ul2;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraBackend {
    static /* synthetic */ Object getCameraIds$suspendImpl(CameraBackend cameraBackend, e02<? super List<CameraId>> e02Var) {
        return cameraBackend.awaitCameraIds();
    }

    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m171getCameraMetadata0r8Bogc$suspendImpl(CameraBackend cameraBackend, String str, e02<? super CameraMetadata> e02Var) {
        return cameraBackend.mo174awaitCameraMetadataEfqyGwQ(str);
    }

    static /* synthetic */ Object getConcurrentCameraIds$suspendImpl(CameraBackend cameraBackend, e02<? super Set<? extends Set<CameraId>>> e02Var) {
        return cameraBackend.awaitConcurrentCameraIds();
    }

    /* JADX INFO: renamed from: isConfigSupported-NpXggIU$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m172isConfigSupportedNpXggIU$suspendImpl(CameraBackend cameraBackend, CameraGraph.Config config, e02<? super ConfigQueryResult> e02Var) {
        return ConfigQueryResult.m401boximpl(ConfigQueryResult.Companion.m409getUNKNOWNXp6DSB4());
    }

    @ul2
    /* JADX INFO: renamed from: prewarmGraphConfigQuery-0r8Bogc$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m173prewarmGraphConfigQuery0r8Bogc$suspendImpl(CameraBackend cameraBackend, String str, e02<? super CameraDeviceSetupCompat> e02Var) {
        return null;
    }

    List<CameraId> awaitCameraIds();

    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ, reason: not valid java name */
    CameraMetadata mo174awaitCameraMetadataEfqyGwQ(String str);

    Set<Set<CameraId>> awaitConcurrentCameraIds();

    CameraController createCameraController(CameraContext cameraContext, CameraGraphId cameraGraphId, CameraGraph.Config config, GraphListener graphListener, StreamGraph streamGraph, SurfaceTracker surfaceTracker);

    /* JADX INFO: renamed from: disconnect-EfqyGwQ, reason: not valid java name */
    void mo175disconnectEfqyGwQ(String str);

    void disconnectAll();

    mk2<j59> disconnectAllAsync();

    /* JADX INFO: renamed from: disconnectAsync-EfqyGwQ, reason: not valid java name */
    mk2<j59> mo176disconnectAsyncEfqyGwQ(String str);

    default hd3<List<CameraId>> getCameraIds() {
        List<CameraId> listAwaitCameraIds = awaitCameraIds();
        if (listAwaitCameraIds == null) {
            listAwaitCameraIds = kx2.b;
        }
        return new rd3(listAwaitCameraIds);
    }

    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc, reason: not valid java name */
    default Object mo177getCameraMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var) {
        return m171getCameraMetadata0r8Bogc$suspendImpl(this, str, e02Var);
    }

    default Object getConcurrentCameraIds(e02<? super Set<? extends Set<CameraId>>> e02Var) {
        return getConcurrentCameraIds$suspendImpl(this, e02Var);
    }

    /* JADX INFO: renamed from: getId-QwmhuAM, reason: not valid java name */
    String mo178getIdQwmhuAM();

    /* JADX INFO: renamed from: isConfigSupported-NpXggIU, reason: not valid java name */
    default Object mo179isConfigSupportedNpXggIU(CameraGraph.Config config, e02<? super ConfigQueryResult> e02Var) {
        return m172isConfigSupportedNpXggIU$suspendImpl(this, config, e02Var);
    }

    /* JADX INFO: renamed from: prewarm-EfqyGwQ, reason: not valid java name */
    void mo180prewarmEfqyGwQ(String str);

    @ul2
    /* JADX INFO: renamed from: prewarmGraphConfigQuery-0r8Bogc, reason: not valid java name */
    default Object m181prewarmGraphConfigQuery0r8Bogc(String str, e02<? super CameraDeviceSetupCompat> e02Var) {
        return m173prewarmGraphConfigQuery0r8Bogc$suspendImpl(this, str, e02Var);
    }

    /* JADX INFO: renamed from: prewarmIsConfigSupported-EfqyGwQ, reason: not valid java name */
    default void mo182prewarmIsConfigSupportedEfqyGwQ(String str) {
        str.getClass();
    }

    mk2<j59> shutdownAsync();

    public static final class DefaultImpls {
        @Deprecated
        public static hd3<List<CameraId>> getCameraIds(CameraBackend cameraBackend) {
            return CameraBackend.super.getCameraIds();
        }

        @Deprecated
        /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc, reason: not valid java name */
        public static Object m183getCameraMetadata0r8Bogc(CameraBackend cameraBackend, String str, e02<? super CameraMetadata> e02Var) {
            return CameraBackend.super.mo177getCameraMetadata0r8Bogc(str, e02Var);
        }

        @Deprecated
        public static Object getConcurrentCameraIds(CameraBackend cameraBackend, e02<? super Set<? extends Set<CameraId>>> e02Var) {
            return CameraBackend.super.getConcurrentCameraIds(e02Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: isConfigSupported-NpXggIU, reason: not valid java name */
        public static Object m184isConfigSupportedNpXggIU(CameraBackend cameraBackend, CameraGraph.Config config, e02<? super ConfigQueryResult> e02Var) {
            return CameraBackend.super.mo179isConfigSupportedNpXggIU(config, e02Var);
        }

        @ul2
        @Deprecated
        /* JADX INFO: renamed from: prewarmGraphConfigQuery-0r8Bogc, reason: not valid java name */
        public static Object m185prewarmGraphConfigQuery0r8Bogc(CameraBackend cameraBackend, String str, e02<? super CameraDeviceSetupCompat> e02Var) {
            return CameraBackend.super.m181prewarmGraphConfigQuery0r8Bogc(str, e02Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: prewarmIsConfigSupported-EfqyGwQ, reason: not valid java name */
        public static void m186prewarmIsConfigSupportedEfqyGwQ(CameraBackend cameraBackend, String str) {
            str.getClass();
            CameraBackend.super.mo182prewarmIsConfigSupportedEfqyGwQ(str);
        }

        @Deprecated
        public static Object getCameraIds(CameraBackend cameraBackend, e02<? super List<CameraId>> e02Var) {
            return CameraBackend.super.getCameraIds(e02Var);
        }
    }

    default Object getCameraIds(e02<? super List<CameraId>> e02Var) {
        return getCameraIds$suspendImpl(this, e02Var);
    }
}
