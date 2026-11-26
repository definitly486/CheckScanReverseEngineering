package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import defpackage.mr7;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ConcurrentSessionSequencers {
    private final Object lock = new Object();
    private final Map<ConcurrentCameraGraphs, ConcurrentSessionSequencer> sequencers = new LinkedHashMap();
    private final Set<CameraGraphId> pending = new LinkedHashSet();

    public final ConcurrentSessionSequencer getSequencer(CameraGraphId cameraGraphId, ConcurrentCameraGraphs concurrentCameraGraphs) {
        ConcurrentSessionSequencer concurrentSessionSequencer;
        cameraGraphId.getClass();
        concurrentCameraGraphs.getClass();
        synchronized (this.lock) {
            try {
                if (!this.sequencers.containsKey(concurrentCameraGraphs)) {
                    ConcurrentSessionSequencer concurrentSessionSequencer2 = new ConcurrentSessionSequencer();
                    this.sequencers.put(concurrentCameraGraphs, concurrentSessionSequencer2);
                    this.pending.addAll(mr7.i(concurrentCameraGraphs.getCameraGraphIds(), cameraGraphId));
                    return concurrentSessionSequencer2;
                }
                this.pending.remove(cameraGraphId);
                Set<CameraGraphId> cameraGraphIds = concurrentCameraGraphs.getCameraGraphIds();
                if (!(cameraGraphIds instanceof Collection) || !cameraGraphIds.isEmpty()) {
                    Iterator<T> it = cameraGraphIds.iterator();
                    while (it.hasNext()) {
                        if (this.pending.contains((CameraGraphId) it.next())) {
                            ConcurrentSessionSequencer concurrentSessionSequencer3 = this.sequencers.get(concurrentCameraGraphs);
                            if (concurrentSessionSequencer3 == null) {
                                throw new IllegalStateException("Required value was null.");
                            }
                            concurrentSessionSequencer = concurrentSessionSequencer3;
                            return concurrentSessionSequencer;
                        }
                    }
                }
                ConcurrentSessionSequencer concurrentSessionSequencerRemove = this.sequencers.remove(concurrentCameraGraphs);
                if (concurrentSessionSequencerRemove == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                concurrentSessionSequencer = concurrentSessionSequencerRemove;
                return concurrentSessionSequencer;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
