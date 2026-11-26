package androidx.camera.camera2.config;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.impl.DeferrableSurface;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.cl4;
import defpackage.e02;
import defpackage.f02;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mi2;
import defpackage.n05;
import defpackage.nl3;
import defpackage.q;
import defpackage.r57;
import defpackage.ws6;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseGraphContext {
    private final cl4<CameraGraph> _graph;
    private final ws6<CameraGraph> cameraGraphProvider;
    private final CameraStateAdapter cameraStateAdapter;
    private final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter;
    private final ws6<Map<CameraStream.Config, DeferrableSurface>> streamConfigMapProvider;
    private final cl4 surfaceToStreamMap$delegate;

    /* JADX INFO: renamed from: androidx.camera.camera2.config.UseCaseGraphContext$useGraphSession$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.config.UseCaseGraphContext", f = "UseCaseCameraConfig.kt", l = {242}, m = "useGraphSession", v = 1)
    public static final class AnonymousClass1<T> extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseGraphContext.this.useGraphSession(null, this);
        }
    }

    public UseCaseGraphContext(ws6<CameraGraph> ws6Var, CameraStateAdapter cameraStateAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, ws6<Map<CameraStream.Config, DeferrableSurface>> ws6Var2, final Map<DeferrableSurface, StreamId> map) {
        ws6Var.getClass();
        cameraStateAdapter.getClass();
        graphStateToCameraStateAdapter.getClass();
        ws6Var2.getClass();
        this.cameraGraphProvider = ws6Var;
        this.cameraStateAdapter = cameraStateAdapter;
        this.graphStateToCameraStateAdapter = graphStateToCameraStateAdapter;
        this.streamConfigMapProvider = ws6Var2;
        this._graph = new fh8(new q(this, 7));
        this.surfaceToStreamMap$delegate = new fh8(new ll3() { // from class: m99
            @Override // defpackage.ll3
            public final Object invoke() {
                return UseCaseGraphContext.surfaceToStreamMap_delegate$lambda$0(map, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph _graph$lambda$0(UseCaseGraphContext useCaseGraphContext) {
        return useCaseGraphContext.cameraGraphProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map surfaceToStreamMap_delegate$lambda$0(Map map, UseCaseGraphContext useCaseGraphContext) {
        if (map != null) {
            return map;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map<CameraStream.Config, DeferrableSurface> map2 = useCaseGraphContext.streamConfigMapProvider.get();
        map2.getClass();
        for (Map.Entry<CameraStream.Config, DeferrableSurface> entry : map2.entrySet()) {
            CameraStream.Config key = entry.getKey();
            DeferrableSurface value = entry.getValue();
            CameraStream cameraStream = useCaseGraphContext.getGraph().getStreams().get(key);
            if (cameraStream != null) {
                linkedHashMap.put(value, StreamId.m723boximpl(cameraStream.m383getIdptHMqGs()));
            }
        }
        return n05.l(linkedHashMap);
    }

    private final <T> Object useGraphSession$$forInline(nl3<? super CameraGraph.Session, ? extends T> nl3Var, e02<? super T> e02Var) throws Exception {
        AutoCloseable autoCloseable = (AutoCloseable) getGraph().acquireSession(e02Var);
        try {
            T tInvoke = nl3Var.invoke((CameraGraph.Session) autoCloseable);
            aq5.c(autoCloseable, null);
            return tInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(autoCloseable, th);
                throw th2;
            }
        }
    }

    public final void closeGraph() throws Exception {
        boolean zIsTerminated;
        if (this._graph.isInitialized()) {
            AutoCloseable graph = getGraph();
            if (graph instanceof AutoCloseable) {
                graph.close();
                return;
            }
            if (!(graph instanceof ExecutorService)) {
                if (graph instanceof TypedArray) {
                    ((TypedArray) graph).recycle();
                    return;
                }
                if (graph instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) graph).release();
                    return;
                } else if (graph instanceof MediaDrm) {
                    ((MediaDrm) graph).release();
                    return;
                } else {
                    mi2.b();
                    return;
                }
            }
            ExecutorService executorService = (ExecutorService) graph;
            if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                return;
            }
            executorService.shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public final void configureCameraStateListener() {
        this.graphStateToCameraStateAdapter.setCameraGraph(getGraph());
        this.cameraStateAdapter.onGraphUpdated(getGraph());
    }

    public final CameraGraph getGraph() {
        CameraGraph value = this._graph.getValue();
        value.getClass();
        return value;
    }

    public final Set<StreamId> getStreamIdsFromSurfaces(Collection<? extends DeferrableSurface> collection) {
        collection.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            StreamId streamId = getSurfaceToStreamMap().get((DeferrableSurface) it.next());
            if (streamId != null) {
                linkedHashSet.add(StreamId.m723boximpl(streamId.m729unboximpl()));
            }
        }
        return linkedHashSet;
    }

    public final Map<DeferrableSurface, StreamId> getSurfaceToStreamMap() {
        return (Map) this.surfaceToStreamMap$delegate.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final <T> Object useGraphSession(nl3<? super CameraGraph.Session, ? extends T> nl3Var, e02<? super T> e02Var) throws Exception {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objAcquireSession = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objAcquireSession);
            CameraGraph graph = getGraph();
            anonymousClass1.L$0 = nl3Var;
            anonymousClass1.label = 1;
            objAcquireSession = graph.acquireSession(anonymousClass1);
            if (objAcquireSession == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            nl3Var = (nl3) anonymousClass1.L$0;
            r57.b(objAcquireSession);
        }
        AutoCloseable autoCloseable = (AutoCloseable) objAcquireSession;
        try {
            T tInvoke = nl3Var.invoke((CameraGraph.Session) autoCloseable);
            aq5.c(autoCloseable, null);
            return tInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(autoCloseable, th);
                throw th2;
            }
        }
    }

    public /* synthetic */ UseCaseGraphContext(ws6 ws6Var, CameraStateAdapter cameraStateAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, ws6 ws6Var2, Map map, int i, jh2 jh2Var) {
        this(ws6Var, cameraStateAdapter, graphStateToCameraStateAdapter, ws6Var2, (i & 16) != 0 ? null : map);
    }
}
