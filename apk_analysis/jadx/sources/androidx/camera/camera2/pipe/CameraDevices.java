package androidx.camera.camera2.pipe;

import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.mk2;
import defpackage.n1;
import defpackage.ul2;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraDevices {

    public static final class DefaultImpls {
    }

    /* JADX INFO: renamed from: awaitCameraIds-SeavPBo$default, reason: not valid java name */
    static /* synthetic */ List m236awaitCameraIdsSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: awaitCameraIds-SeavPBo");
            return null;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return cameraDevices.mo248awaitCameraIdsSeavPBo(str);
    }

    /* JADX INFO: renamed from: awaitCameraMetadata-FpsL5FU$default, reason: not valid java name */
    static /* synthetic */ CameraMetadata m237awaitCameraMetadataFpsL5FU$default(CameraDevices cameraDevices, String str, String str2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: awaitCameraMetadata-FpsL5FU");
            return null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return cameraDevices.mo249awaitCameraMetadataFpsL5FU(str, str2);
    }

    /* JADX INFO: renamed from: awaitConcurrentCameraIds-SeavPBo$default, reason: not valid java name */
    static /* synthetic */ Set m238awaitConcurrentCameraIdsSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: awaitConcurrentCameraIds-SeavPBo");
            return null;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return cameraDevices.mo250awaitConcurrentCameraIdsSeavPBo(str);
    }

    /* JADX INFO: renamed from: cameraIdsFlow-SeavPBo$default, reason: not valid java name */
    static /* synthetic */ hd3 m239cameraIdsFlowSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: cameraIdsFlow-SeavPBo");
            return null;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return cameraDevices.mo252cameraIdsFlowSeavPBo(str);
    }

    /* JADX INFO: renamed from: disconnect-FpsL5FU$default, reason: not valid java name */
    static /* synthetic */ void m240disconnectFpsL5FU$default(CameraDevices cameraDevices, String str, String str2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: disconnect-FpsL5FU");
            return;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        cameraDevices.mo253disconnectFpsL5FU(str, str2);
    }

    /* JADX INFO: renamed from: disconnectAll-SeavPBo$default, reason: not valid java name */
    static /* synthetic */ void m241disconnectAllSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: disconnectAll-SeavPBo");
            return;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        cameraDevices.mo254disconnectAllSeavPBo(str);
    }

    /* JADX INFO: renamed from: disconnectAllAsync-SeavPBo$default, reason: not valid java name */
    static /* synthetic */ mk2 m242disconnectAllAsyncSeavPBo$default(CameraDevices cameraDevices, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: disconnectAllAsync-SeavPBo");
            return null;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return cameraDevices.mo255disconnectAllAsyncSeavPBo(str);
    }

    /* JADX INFO: renamed from: disconnectAsync-FpsL5FU$default, reason: not valid java name */
    static /* synthetic */ mk2 m243disconnectAsyncFpsL5FU$default(CameraDevices cameraDevices, String str, String str2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: disconnectAsync-FpsL5FU");
            return null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return cameraDevices.mo256disconnectAsyncFpsL5FU(str, str2);
    }

    /* JADX INFO: renamed from: getCameraIds-iAq86To$default, reason: not valid java name */
    static /* synthetic */ Object m244getCameraIdsiAq86To$default(CameraDevices cameraDevices, String str, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: getCameraIds-iAq86To");
            return null;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return cameraDevices.mo257getCameraIdsiAq86To(str, e02Var);
    }

    /* JADX INFO: renamed from: getCameraMetadata-_mltaTw$default, reason: not valid java name */
    static /* synthetic */ Object m245getCameraMetadata_mltaTw$default(CameraDevices cameraDevices, String str, String str2, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: getCameraMetadata-_mltaTw");
            return null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return cameraDevices.mo258getCameraMetadata_mltaTw(str, str2, e02Var);
    }

    /* JADX INFO: renamed from: getConcurrentCameraIds-iAq86To$default, reason: not valid java name */
    static /* synthetic */ Object m246getConcurrentCameraIdsiAq86To$default(CameraDevices cameraDevices, String str, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: getConcurrentCameraIds-iAq86To");
            return null;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return cameraDevices.mo259getConcurrentCameraIdsiAq86To(str, e02Var);
    }

    /* JADX INFO: renamed from: prewarm-FpsL5FU$default, reason: not valid java name */
    static /* synthetic */ void m247prewarmFpsL5FU$default(CameraDevices cameraDevices, String str, String str2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: prewarm-FpsL5FU");
            return;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        cameraDevices.mo261prewarmFpsL5FU(str, str2);
    }

    /* JADX INFO: renamed from: awaitCameraIds-SeavPBo, reason: not valid java name */
    List<CameraId> mo248awaitCameraIdsSeavPBo(String str);

    /* JADX INFO: renamed from: awaitCameraMetadata-FpsL5FU, reason: not valid java name */
    CameraMetadata mo249awaitCameraMetadataFpsL5FU(String str, String str2);

    /* JADX INFO: renamed from: awaitConcurrentCameraIds-SeavPBo, reason: not valid java name */
    Set<Set<CameraId>> mo250awaitConcurrentCameraIdsSeavPBo(String str);

    @ul2
    /* JADX INFO: renamed from: awaitMetadata-EfqyGwQ, reason: not valid java name */
    CameraMetadata mo251awaitMetadataEfqyGwQ(String str);

    /* JADX INFO: renamed from: cameraIdsFlow-SeavPBo, reason: not valid java name */
    hd3<List<CameraId>> mo252cameraIdsFlowSeavPBo(String str);

    /* JADX INFO: renamed from: disconnect-FpsL5FU, reason: not valid java name */
    void mo253disconnectFpsL5FU(String str, String str2);

    /* JADX INFO: renamed from: disconnectAll-SeavPBo, reason: not valid java name */
    void mo254disconnectAllSeavPBo(String str);

    /* JADX INFO: renamed from: disconnectAllAsync-SeavPBo, reason: not valid java name */
    mk2<j59> mo255disconnectAllAsyncSeavPBo(String str);

    /* JADX INFO: renamed from: disconnectAsync-FpsL5FU, reason: not valid java name */
    mk2<j59> mo256disconnectAsyncFpsL5FU(String str, String str2);

    @ul2
    List<CameraId> findAll();

    /* JADX INFO: renamed from: getCameraIds-iAq86To, reason: not valid java name */
    Object mo257getCameraIdsiAq86To(String str, e02<? super List<CameraId>> e02Var);

    /* JADX INFO: renamed from: getCameraMetadata-_mltaTw, reason: not valid java name */
    Object mo258getCameraMetadata_mltaTw(String str, String str2, e02<? super CameraMetadata> e02Var);

    /* JADX INFO: renamed from: getConcurrentCameraIds-iAq86To, reason: not valid java name */
    Object mo259getConcurrentCameraIdsiAq86To(String str, e02<? super Set<? extends Set<CameraId>>> e02Var);

    @ul2
    /* JADX INFO: renamed from: getMetadata-0r8Bogc, reason: not valid java name */
    Object mo260getMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var);

    @ul2
    Object ids(e02<? super List<CameraId>> e02Var);

    /* JADX INFO: renamed from: prewarm-FpsL5FU, reason: not valid java name */
    void mo261prewarmFpsL5FU(String str, String str2);
}
