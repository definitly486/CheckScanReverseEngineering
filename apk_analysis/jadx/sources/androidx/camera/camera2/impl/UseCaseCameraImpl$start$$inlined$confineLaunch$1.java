package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.Map;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraImpl$start$$inlined$confineLaunch$1", f = "UseCaseCamera.kt", l = {}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraImpl$start$$inlined$confineLaunch$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$start$$inlined$confineLaunch$1(e02 e02Var, UseCaseCameraImpl useCaseCameraImpl) {
        super(2, e02Var);
        this.this$0 = useCaseCameraImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new UseCaseCameraImpl$start$$inlined$confineLaunch$1(e02Var, this.this$0);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((UseCaseCameraImpl$start$$inlined$confineLaunch$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (this.this$0.closed.b()) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCamera is closed before starting the CameraGraph, skipping setup.");
            }
        } else {
            CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
            this.this$0.useCaseGraphContext.configureCameraStateListener();
            graph.start();
            Map<DeferrableSurface, StreamId> surfaceToStreamMap = this.this$0.useCaseGraphContext.getSurfaceToStreamMap();
            StreamId streamIdM90findStillCaptureStreamId4TVKcYk = this.this$0.m90findStillCaptureStreamId4TVKcYk();
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Setting up Surfaces with UseCaseSurfaceManager");
            }
            if (this.this$0.getSessionConfigAdapter().isSessionConfigValid()) {
                UseCaseSurfaceManager useCaseSurfaceManager = this.this$0.getUseCaseSurfaceManager();
                useCaseSurfaceManager.getClass();
                SessionConfigAdapter sessionConfigAdapter = this.this$0.getSessionConfigAdapter();
                sessionConfigAdapter.getClass();
                UseCaseSurfaceManager.setupAsync$default(useCaseSurfaceManager, graph, sessionConfigAdapter, surfaceToStreamMap, 0L, 8, null).g(new nl3<Throwable, j59>() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$start$1$3
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th) {
                        if (th == null || (th instanceof CancellationException)) {
                            return;
                        }
                        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                        if (Logger.isErrorEnabled(Log.TAG)) {
                            android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Surface setup error!", th);
                        }
                    }

                    @Override // defpackage.nl3
                    public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                        invoke2(th);
                        return j59.a;
                    }
                });
            } else if (Logger.isErrorEnabled(Log.TAG)) {
                android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Unable to create capture session due to conflicting configurations");
            }
            this.this$0.m91setCaptureSessionRequestProcessor9O56998(streamIdM90findStillCaptureStreamId4TVKcYk, graph);
        }
        return j59.a;
    }
}
