package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import defpackage.xs6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphImpl_Factory implements xs6 {
    private final xs6<AudioRestrictionController> audioRestrictionControllerProvider;
    private final xs6<CameraController> cameraControllerProvider;
    private final xs6<Controller3A> controller3AProvider;
    private final xs6<FrameCaptureQueue> frameCaptureQueueProvider;
    private final xs6<FrameDistributor> frameDistributorProvider;
    private final xs6<CameraGraph.Config> graphConfigProvider;
    private final xs6<GraphListener> graphListenerProvider;
    private final xs6<GraphProcessor> graphProcessorProvider;
    private final xs6<y22> graphScopeProvider;
    private final xs6<CameraGraphId> idProvider;
    private final xs6<CameraGraphRequestListenersImpl> listenersProvider;
    private final xs6<CameraMetadata> metadataProvider;
    private final xs6<CameraGraphParametersImpl> parametersProvider;
    private final xs6<GraphSessionLock> sessionLockProvider;
    private final xs6<StreamGraphImpl> streamGraphProvider;
    private final xs6<SurfaceGraph> surfaceGraphProvider;

    private CameraGraphImpl_Factory(xs6<CameraGraph.Config> xs6Var, xs6<CameraMetadata> xs6Var2, xs6<GraphProcessor> xs6Var3, xs6<GraphListener> xs6Var4, xs6<StreamGraphImpl> xs6Var5, xs6<SurfaceGraph> xs6Var6, xs6<CameraController> xs6Var7, xs6<FrameDistributor> xs6Var8, xs6<FrameCaptureQueue> xs6Var9, xs6<AudioRestrictionController> xs6Var10, xs6<CameraGraphId> xs6Var11, xs6<CameraGraphParametersImpl> xs6Var12, xs6<CameraGraphRequestListenersImpl> xs6Var13, xs6<GraphSessionLock> xs6Var14, xs6<y22> xs6Var15, xs6<Controller3A> xs6Var16) {
        this.graphConfigProvider = xs6Var;
        this.metadataProvider = xs6Var2;
        this.graphProcessorProvider = xs6Var3;
        this.graphListenerProvider = xs6Var4;
        this.streamGraphProvider = xs6Var5;
        this.surfaceGraphProvider = xs6Var6;
        this.cameraControllerProvider = xs6Var7;
        this.frameDistributorProvider = xs6Var8;
        this.frameCaptureQueueProvider = xs6Var9;
        this.audioRestrictionControllerProvider = xs6Var10;
        this.idProvider = xs6Var11;
        this.parametersProvider = xs6Var12;
        this.listenersProvider = xs6Var13;
        this.sessionLockProvider = xs6Var14;
        this.graphScopeProvider = xs6Var15;
        this.controller3AProvider = xs6Var16;
    }

    public static CameraGraphImpl_Factory create(xs6<CameraGraph.Config> xs6Var, xs6<CameraMetadata> xs6Var2, xs6<GraphProcessor> xs6Var3, xs6<GraphListener> xs6Var4, xs6<StreamGraphImpl> xs6Var5, xs6<SurfaceGraph> xs6Var6, xs6<CameraController> xs6Var7, xs6<FrameDistributor> xs6Var8, xs6<FrameCaptureQueue> xs6Var9, xs6<AudioRestrictionController> xs6Var10, xs6<CameraGraphId> xs6Var11, xs6<CameraGraphParametersImpl> xs6Var12, xs6<CameraGraphRequestListenersImpl> xs6Var13, xs6<GraphSessionLock> xs6Var14, xs6<y22> xs6Var15, xs6<Controller3A> xs6Var16) {
        return new CameraGraphImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8, xs6Var9, xs6Var10, xs6Var11, xs6Var12, xs6Var13, xs6Var14, xs6Var15, xs6Var16);
    }

    public static CameraGraphImpl newInstance(CameraGraph.Config config, CameraMetadata cameraMetadata, GraphProcessor graphProcessor, GraphListener graphListener, StreamGraphImpl streamGraphImpl, SurfaceGraph surfaceGraph, CameraController cameraController, FrameDistributor frameDistributor, FrameCaptureQueue frameCaptureQueue, AudioRestrictionController audioRestrictionController, CameraGraphId cameraGraphId, CameraGraphParametersImpl cameraGraphParametersImpl, CameraGraphRequestListenersImpl cameraGraphRequestListenersImpl, GraphSessionLock graphSessionLock, y22 y22Var, Controller3A controller3A) {
        return new CameraGraphImpl(config, cameraMetadata, graphProcessor, graphListener, streamGraphImpl, surfaceGraph, cameraController, frameDistributor, frameCaptureQueue, audioRestrictionController, cameraGraphId, cameraGraphParametersImpl, cameraGraphRequestListenersImpl, graphSessionLock, y22Var, controller3A);
    }

    @Override // defpackage.ws6
    public CameraGraphImpl get() {
        return newInstance(this.graphConfigProvider.get(), this.metadataProvider.get(), this.graphProcessorProvider.get(), this.graphListenerProvider.get(), this.streamGraphProvider.get(), this.surfaceGraphProvider.get(), this.cameraControllerProvider.get(), this.frameDistributorProvider.get(), this.frameCaptureQueueProvider.get(), this.audioRestrictionControllerProvider.get(), this.idProvider.get(), this.parametersProvider.get(), this.listenersProvider.get(), this.sessionLockProvider.get(), this.graphScopeProvider.get(), this.controller3AProvider.get());
    }
}
