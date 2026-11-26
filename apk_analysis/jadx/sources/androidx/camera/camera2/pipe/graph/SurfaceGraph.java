package androidx.camera.camera2.pipe.graph;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.media.ImageSource;
import defpackage.aa4;
import defpackage.j59;
import defpackage.mi2;
import defpackage.mx2;
import defpackage.qn1;
import defpackage.v39;
import defpackage.ws6;
import defpackage.zg;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceGraph implements SurfaceTracker, AutoCloseable {
    private final ws6<CameraController> cameraController;
    private boolean closed;
    private final Map<StreamId, ImageSource> imageSources;
    private final Object lock;
    private boolean shouldRegisterSurfaces;
    private final StreamGraphImpl streamGraphImpl;
    private final CameraSurfaceManager surfaceManager;
    private final Map<StreamId, Surface> surfaceMap;
    private final Map<Surface, AutoCloseable> surfaceUsageMap;

    /* JADX WARN: Multi-variable type inference failed */
    public SurfaceGraph(StreamGraphImpl streamGraphImpl, ws6<CameraController> ws6Var, CameraSurfaceManager cameraSurfaceManager, Map<StreamId, ? extends ImageSource> map) {
        streamGraphImpl.getClass();
        ws6Var.getClass();
        cameraSurfaceManager.getClass();
        map.getClass();
        this.streamGraphImpl = streamGraphImpl;
        this.cameraController = ws6Var;
        this.surfaceManager = cameraSurfaceManager;
        this.imageSources = map;
        this.lock = new Object();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((ImageSource) entry.getValue()).getSurface());
        }
        this.surfaceMap = linkedHashMap;
        this.surfaceUsageMap = new LinkedHashMap();
        this.shouldRegisterSurfaces = true;
    }

    private final Map<StreamId, Surface> buildSurfaceMap() {
        synchronized (this.lock) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (StreamGraphImpl.OutputConfig outputConfig : this.streamGraphImpl.getOutputConfigs$camera_camera2_pipe()) {
                for (CameraStream cameraStream : outputConfig.getStreamBuilder$camera_camera2_pipe()) {
                    Surface surface = this.surfaceMap.get(StreamId.m723boximpl(cameraStream.m383getIdptHMqGs()));
                    if (surface != null) {
                        linkedHashMap.put(StreamId.m723boximpl(cameraStream.m383getIdptHMqGs()), surface);
                    } else if (!outputConfig.getDeferrable()) {
                        return mx2.b;
                    }
                }
            }
            return linkedHashMap;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        boolean zIsTerminated;
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.surfaceMap.clear();
            List<AutoCloseable> listT0 = qn1.t0(this.surfaceUsageMap.values());
            this.surfaceUsageMap.clear();
            for (AutoCloseable autoCloseable : listT0) {
                if (autoCloseable instanceof AutoCloseable) {
                    autoCloseable.close();
                } else if (autoCloseable instanceof ExecutorService) {
                    ExecutorService executorService = (ExecutorService) autoCloseable;
                    if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
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
                } else if (autoCloseable instanceof TypedArray) {
                    ((TypedArray) autoCloseable).recycle();
                } else if (autoCloseable instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) autoCloseable).release();
                } else {
                    if (!(autoCloseable instanceof MediaDrm)) {
                        mi2.b();
                        return;
                    }
                    ((MediaDrm) autoCloseable).release();
                }
            }
        }
    }

    public final void maybeUpdateSurfaces$camera_camera2_pipe() {
        Map<StreamId, Surface> mapBuildSurfaceMap = buildSurfaceMap();
        if (mapBuildSurfaceMap.isEmpty()) {
            return;
        }
        this.cameraController.get().updateSurfaceMap(mapBuildSurfaceMap);
    }

    @Override // androidx.camera.camera2.pipe.SurfaceTracker
    public void registerAllSurfaces() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    throw new IllegalStateException("Check failed.");
                }
                for (Surface surface : this.surfaceMap.values()) {
                    this.surfaceUsageMap.put(surface, this.surfaceManager.registerSurface$camera_camera2_pipe(surface));
                }
                this.shouldRegisterSurfaces = true;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00fe  */
    /* JADX INFO: renamed from: set-NYG5g8E, reason: not valid java name */
    public final void m926setNYG5g8E(int i, Surface surface) {
        AutoCloseable autoCloseableRemove;
        boolean zIsTerminated;
        String str;
        if (this.imageSources.keySet().contains(StreamId.m723boximpl(i))) {
            StringBuilder sb = new StringBuilder("Cannot configure surface for ");
            sb.append((Object) StreamId.m728toStringimpl(i));
            zg.g(sb, ", it is permanently assigned to ", this.imageSources.get(StreamId.m723boximpl(i)));
            return;
        }
        synchronized (this.lock) {
            if (this.closed) {
                if (surface != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Refusing to configure " + ((Object) StreamId.m728toStringimpl(i)) + " with " + surface + " after close!");
                }
                return;
            }
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                if (surface != null) {
                    str = "Configured " + ((Object) StreamId.m728toStringimpl(i)) + " with " + surface;
                } else {
                    str = "Removed surface for " + ((Object) StreamId.m728toStringimpl(i));
                }
                android.util.Log.i(Log.TAG, str);
            }
            Map<StreamId, Surface> map = this.surfaceMap;
            if (surface == null) {
                Surface surfaceRemove = map.remove(StreamId.m723boximpl(i));
                if (!this.shouldRegisterSurfaces || surfaceRemove == null) {
                    autoCloseableRemove = null;
                } else {
                    autoCloseableRemove = this.surfaceUsageMap.remove(surfaceRemove);
                }
            } else {
                Surface surface2 = map.get(StreamId.m723boximpl(i));
                this.surfaceMap.put(StreamId.m723boximpl(i), surface);
                if (!this.shouldRegisterSurfaces || aa4.e(surface2, surface)) {
                    autoCloseableRemove = null;
                } else {
                    if (this.surfaceUsageMap.containsKey(surface)) {
                        throw new IllegalStateException(("Surface (" + surface + ") is already in use!").toString());
                    }
                    autoCloseableRemove = (AutoCloseable) v39.b(this.surfaceUsageMap).remove(surface2);
                    this.surfaceUsageMap.put(surface, this.surfaceManager.registerSurface$camera_camera2_pipe(surface));
                }
            }
            maybeUpdateSurfaces$camera_camera2_pipe();
            if (autoCloseableRemove != null) {
                if (autoCloseableRemove instanceof AutoCloseable) {
                    autoCloseableRemove.close();
                    return;
                }
                if (!(autoCloseableRemove instanceof ExecutorService)) {
                    if (autoCloseableRemove instanceof TypedArray) {
                        ((TypedArray) autoCloseableRemove).recycle();
                        return;
                    }
                    if (autoCloseableRemove instanceof MediaMetadataRetriever) {
                        ((MediaMetadataRetriever) autoCloseableRemove).release();
                        return;
                    } else if (autoCloseableRemove instanceof MediaDrm) {
                        ((MediaDrm) autoCloseableRemove).release();
                        return;
                    } else {
                        mi2.b();
                        return;
                    }
                }
                ExecutorService executorService = (ExecutorService) autoCloseableRemove;
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
    }

    @Override // androidx.camera.camera2.pipe.SurfaceTracker
    public void unregisterAllSurfaces() throws Exception {
        List<AutoCloseable> listT0;
        boolean zIsTerminated;
        synchronized (this.lock) {
            this.shouldRegisterSurfaces = false;
            listT0 = qn1.t0(this.surfaceUsageMap.values());
            this.surfaceUsageMap.clear();
        }
        for (AutoCloseable autoCloseable : listT0) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) autoCloseable;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
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
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof MediaDrm)) {
                    mi2.b();
                    return;
                }
                ((MediaDrm) autoCloseable).release();
            }
        }
    }
}
