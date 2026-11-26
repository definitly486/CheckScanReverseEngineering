package androidx.camera.camera2.impl;

import android.view.Surface;
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
import defpackage.kn1;
import defpackage.m05;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseSurfaceManager$setupAsync$1$deferred$1", f = "UseCaseSurfaceManager.kt", l = {97}, m = "invokeSuspend", v = 1)
public final class UseCaseSurfaceManager$setupAsync$1$deferred$1 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
    final /* synthetic */ List<DeferrableSurface> $deferrableSurfaces;
    final /* synthetic */ CameraGraph $graph;
    final /* synthetic */ SessionConfigAdapter $sessionConfigAdapter;
    final /* synthetic */ Map<DeferrableSurface, StreamId> $surfaceToStreamMap;
    final /* synthetic */ long $timeoutMillis;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ UseCaseSurfaceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UseCaseSurfaceManager$setupAsync$1$deferred$1(SessionConfigAdapter sessionConfigAdapter, UseCaseSurfaceManager useCaseSurfaceManager, List<? extends DeferrableSurface> list, long j, Map<DeferrableSurface, StreamId> map, CameraGraph cameraGraph, e02<? super UseCaseSurfaceManager$setupAsync$1$deferred$1> e02Var) {
        super(2, e02Var);
        this.$sessionConfigAdapter = sessionConfigAdapter;
        this.this$0 = useCaseSurfaceManager;
        this.$deferrableSurfaces = list;
        this.$timeoutMillis = j;
        this.$surfaceToStreamMap = map;
        this.$graph = cameraGraph;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        UseCaseSurfaceManager$setupAsync$1$deferred$1 useCaseSurfaceManager$setupAsync$1$deferred$1 = new UseCaseSurfaceManager$setupAsync$1$deferred$1(this.$sessionConfigAdapter, this.this$0, this.$deferrableSurfaces, this.$timeoutMillis, this.$surfaceToStreamMap, this.$graph, e02Var);
        useCaseSurfaceManager$setupAsync$1$deferred$1.L$0 = obj;
        return useCaseSurfaceManager$setupAsync$1$deferred$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
        return ((UseCaseSurfaceManager$setupAsync$1$deferred$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        y22 y22Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                y22 y22Var2 = (y22) this.L$0;
                if (!this.$sessionConfigAdapter.isSessionConfigValid()) {
                    ah.f("Check failed.");
                    return null;
                }
                UseCaseSurfaceManager useCaseSurfaceManager = this.this$0;
                List<DeferrableSurface> list = this.$deferrableSurfaces;
                long j = this.$timeoutMillis;
                this.L$0 = y22Var2;
                this.label = 1;
                Object surfaces = useCaseSurfaceManager.getSurfaces(list, j, this);
                if (surfaces == a32Var) {
                    return a32Var;
                }
                y22Var = y22Var2;
                obj = surfaces;
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                y22Var = (y22) this.L$0;
                r57.b(obj);
            }
            List list2 = (List) obj;
            if (!z22.e(y22Var) || list2.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isInfoEnabled(Log.TAG)) {
                    android.util.Log.i(Camera2Logger.TRUNCATED_TAG, "Failed to get Surfaces: isActive=" + z22.e(y22Var) + ", surfaces=" + list2);
                }
                return Boolean.FALSE;
            }
            if (!this.this$0.areValid(list2)) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled(Log.TAG)) {
                    android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Surface setup failed: Some Surfaces are invalid");
                }
                this.$sessionConfigAdapter.reportSurfaceInvalid(this.$deferrableSurfaces.get(list2.indexOf(null)));
                return Boolean.FALSE;
            }
            Object obj2 = this.this$0.lock;
            UseCaseSurfaceManager useCaseSurfaceManager2 = this.this$0;
            List<DeferrableSurface> list3 = this.$deferrableSurfaces;
            synchronized (obj2) {
                try {
                    List<DeferrableSurface> list4 = list3;
                    int iB = m05.b(kn1.q(list4, 10));
                    if (iB < 16) {
                        iB = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
                    for (Object obj3 : list4) {
                        Object obj4 = list2.get(list3.indexOf((DeferrableSurface) obj3));
                        if (obj4 == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        linkedHashMap.put((Surface) obj4, obj3);
                    }
                    useCaseSurfaceManager2.configuredSurfaceMap = linkedHashMap;
                    useCaseSurfaceManager2.setSurfaceListener();
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            Map<DeferrableSurface, StreamId> map = this.$surfaceToStreamMap;
            List<DeferrableSurface> list5 = this.$deferrableSurfaces;
            CameraGraph cameraGraph = this.$graph;
            UseCaseSurfaceManager useCaseSurfaceManager3 = this.this$0;
            for (Map.Entry<DeferrableSurface, StreamId> entry : map.entrySet()) {
                int iM729unboximpl = entry.getValue().m729unboximpl();
                Surface surface = (Surface) list2.get(list5.indexOf(entry.getKey()));
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + surface + " for " + ((Object) StreamId.m728toStringimpl(iM729unboximpl)));
                }
                cameraGraph.mo349setSurfaceNYG5g8E(iM729unboximpl, surface);
                useCaseSurfaceManager3.inactiveSurfaceCloser.mo33configurehB7JTeY(iM729unboximpl, entry.getKey(), cameraGraph);
            }
            Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled(Log.TAG)) {
                android.util.Log.i(Camera2Logger.TRUNCATED_TAG, "Surface setup complete");
            }
            return Boolean.TRUE;
        } catch (DeferrableSurface.SurfaceClosedException e) {
            Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to get Surfaces: Surfaces closed", e);
            }
            SessionConfigAdapter sessionConfigAdapter = this.$sessionConfigAdapter;
            DeferrableSurface deferrableSurface = e.getDeferrableSurface();
            deferrableSurface.getClass();
            sessionConfigAdapter.reportSurfaceInvalid(deferrableSurface);
            return Boolean.FALSE;
        } catch (TimeoutCancellationException unused) {
            Camera2Logger camera2Logger6 = Camera2Logger.INSTANCE;
            long j2 = this.$timeoutMillis;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to get Surfaces within " + j2 + " ms");
            }
            return Boolean.FALSE;
        }
    }
}
