package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.util.Pair;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import defpackage.av0;
import defpackage.b36;
import defpackage.cl4;
import defpackage.e02;
import defpackage.fh8;
import defpackage.ga1;
import defpackage.gc5;
import defpackage.ht;
import defpackage.j59;
import defpackage.kt;
import defpackage.mb4;
import defpackage.n05;
import defpackage.qn1;
import defpackage.s92;
import defpackage.u96;
import defpackage.wq7;
import defpackage.ws6;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public final class UseCaseCameraImpl implements UseCaseCamera {
    private final cl4 capturePipeline$delegate;
    private final ws6<CapturePipeline> capturePipelineProvider;
    private final ht closed;
    private final int debugId;
    private final UseCaseCameraRequestControl requestControl;
    private final cl4 sessionConfigAdapter$delegate;
    private final ws6<SessionConfigAdapter> sessionConfigAdapterProvider;
    private final SessionProcessor sessionProcessor;
    private final UseCaseThreads threads;
    private final UseCaseGraphContext useCaseGraphContext;
    private final cl4 useCaseSurfaceManager$delegate;
    private final ws6<UseCaseSurfaceManager> useCaseSurfaceManagerProvider;

    public static abstract class Bindings {
        @UseCaseCameraScope
        public abstract UseCaseCamera provideUseCaseCamera(UseCaseCameraImpl useCaseCameraImpl);
    }

    public UseCaseCameraImpl(UseCaseGraphContext useCaseGraphContext, UseCaseThreads useCaseThreads, SessionProcessor sessionProcessor, UseCaseCameraRequestControl useCaseCameraRequestControl, ws6<UseCaseSurfaceManager> ws6Var, ws6<SessionConfigAdapter> ws6Var2, ws6<CapturePipeline> ws6Var3) {
        useCaseGraphContext.getClass();
        useCaseThreads.getClass();
        useCaseCameraRequestControl.getClass();
        ws6Var.getClass();
        ws6Var2.getClass();
        ws6Var3.getClass();
        this.useCaseGraphContext = useCaseGraphContext;
        this.threads = useCaseThreads;
        this.sessionProcessor = sessionProcessor;
        this.requestControl = useCaseCameraRequestControl;
        this.useCaseSurfaceManagerProvider = ws6Var;
        this.sessionConfigAdapterProvider = ws6Var2;
        this.capturePipelineProvider = ws6Var3;
        this.debugId = UseCaseCameraKt.getUseCaseCameraIds().b();
        this.closed = kt.a(false);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + this);
        }
        this.useCaseSurfaceManager$delegate = new fh8(new wq7(this, 2));
        int i = 3;
        this.sessionConfigAdapter$delegate = new fh8(new s92(this, i));
        this.capturePipeline$delegate = new fh8(new gc5(this, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CapturePipeline capturePipeline_delegate$lambda$0(UseCaseCameraImpl useCaseCameraImpl) {
        return useCaseCameraImpl.capturePipelineProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: findStillCaptureStreamId-4TVKcYk, reason: not valid java name */
    public final StreamId m90findStillCaptureStreamId4TVKcYk() {
        Object next;
        SessionConfig validSessionConfigOrNull = getSessionConfigAdapter().getValidSessionConfigOrNull();
        if (validSessionConfigOrNull == null) {
            return null;
        }
        List<DeferrableSurface> surfaces = validSessionConfigOrNull.getRepeatingCaptureConfig().getSurfaces();
        surfaces.getClass();
        List<DeferrableSurface> surfaces2 = validSessionConfigOrNull.getSurfaces();
        surfaces2.getClass();
        Iterator<T> it = surfaces2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (surfaces.contains((DeferrableSurface) next));
        DeferrableSurface deferrableSurface = (DeferrableSurface) next;
        if (deferrableSurface == null) {
            return null;
        }
        return (StreamId) qn1.U(this.useCaseGraphContext.getStreamIdsFromSurfaces(u96.h(deferrableSurface)));
    }

    private final CapturePipeline getCapturePipeline() {
        return (CapturePipeline) this.capturePipeline$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionConfigAdapter getSessionConfigAdapter() {
        return (SessionConfigAdapter) this.sessionConfigAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UseCaseSurfaceManager getUseCaseSurfaceManager() {
        return (UseCaseSurfaceManager) this.useCaseSurfaceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionConfigAdapter sessionConfigAdapter_delegate$lambda$0(UseCaseCameraImpl useCaseCameraImpl) {
        return useCaseCameraImpl.sessionConfigAdapterProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setCaptureSessionRequestProcessor-9O56998, reason: not valid java name */
    public final void m91setCaptureSessionRequestProcessor9O56998(final StreamId streamId, final CameraGraph cameraGraph) {
        SessionProcessor sessionProcessor = this.sessionProcessor;
        if (sessionProcessor != null) {
            sessionProcessor.setCaptureSessionRequestProcessor(new SessionProcessor.CaptureSessionRequestProcessor() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$setCaptureSessionRequestProcessor$1
                @Override // androidx.camera.core.impl.SessionProcessor.CaptureSessionRequestProcessor
                public Pair<Long, Long> getRealtimeStillCaptureLatency() {
                    StreamGraph.OutputLatency outputLatencyM715getOutputLatencyIL232MI$default;
                    if (streamId == null || (outputLatencyM715getOutputLatencyIL232MI$default = StreamGraph.m715getOutputLatencyIL232MI$default(cameraGraph.getStreams(), streamId.m729unboximpl(), null, 2, null)) == null) {
                        return null;
                    }
                    return Pair.create(Long.valueOf(outputLatencyM715getOutputLatencyIL232MI$default.getEstimatedCaptureLatencyNs() / 1000000), Long.valueOf(outputLatencyM715getOutputLatencyIL232MI$default.getEstimatedProcessingLatencyNs() / 1000000));
                }

                @Override // androidx.camera.core.impl.SessionProcessor.CaptureSessionRequestProcessor
                public void setExtensionStrength(int i) {
                    if (Build.VERSION.SDK_INT >= 34) {
                        UseCaseCameraRequestControl.setParametersAsync$default(this.getRequestControl(), n05.f(new b36(CaptureRequest.EXTENSION_STRENGTH, Integer.valueOf(i))), null, null, 6, null);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseSurfaceManager useCaseSurfaceManager_delegate$lambda$0(UseCaseCameraImpl useCaseCameraImpl) {
        return useCaseCameraImpl.useCaseSurfaceManagerProvider.get();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public mb4 close() {
        if (!this.closed.a()) {
            return ga1.a(j59.a);
        }
        getRequestControl().close();
        return av0.c(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$close$$inlined$confineLaunch$1(null, this), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public Object getCameraCapturePipeline(int i, int i2, int i3, e02<? super CameraCapturePipeline> e02Var) {
        return getCapturePipeline().getCameraCapturePipeline(i, i2, i3, e02Var);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public UseCaseCameraRequestControl getRequestControl() {
        return this.requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public void setActiveResumeMode(boolean z) {
        av0.c(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$setActiveResumeMode$$inlined$confineLaunch$1(null, this, z), 3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public void start() {
        av0.c(this.threads.getSequentialScope(), null, null, new UseCaseCameraImpl$start$$inlined$confineLaunch$1(null, this), 3);
    }

    public String toString() {
        return "UseCaseCamera-" + this.debugId;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCamera
    public mb4 updateRepeatingRequestAsync(boolean z, Collection<? extends UseCase> collection) {
        collection.getClass();
        return getRequestControl().updateRepeatingRequestAsync(z, collection);
    }
}
