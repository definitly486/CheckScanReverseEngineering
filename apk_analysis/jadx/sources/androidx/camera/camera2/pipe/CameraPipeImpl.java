package androidx.camera.camera2.pipe;

import android.os.Trace;
import androidx.camera.camera2.pipe.config.CameraGraphConfigModule;
import androidx.camera.camera2.pipe.config.CameraPipeComponent;
import androidx.camera.camera2.pipe.config.FrameGraphConfigModule;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.ah;
import defpackage.e02;
import defpackage.j59;
import defpackage.kn1;
import defpackage.qn1;
import defpackage.ul2;
import defpackage.uz4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeImpl implements CameraPipe {
    private final CameraPipeComponent component;
    private final int debugId;
    private final Object lock;
    private boolean shutdown;

    public CameraPipeImpl(CameraPipeComponent cameraPipeComponent) {
        cameraPipeComponent.getClass();
        this.component = cameraPipeComponent;
        this.debugId = CameraPipeKt.getCameraPipeIds().b();
        this.lock = new Object();
    }

    private final CameraGraph createCameraGraphLocked(CameraGraph.Config config, CameraGraphId cameraGraphId) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("CXCP#CameraGraph-" + ((Object) CameraId.m357toStringimpl(config.m310getCameraDz_R5H8())));
            return this.component.cameraGraphComponentBuilder().cameraGraphConfigModule(new CameraGraphConfigModule(config, cameraGraphId)).build().cameraGraph();
        } finally {
            Trace.endSection();
        }
    }

    private final FrameGraph createFrameGraphLocked(FrameGraph.Config config, CameraGraphId cameraGraphId) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("CXCP#CreateFrameGraph-" + ((Object) CameraId.m357toStringimpl(config.getCameraGraphConfig().m310getCameraDz_R5H8())));
            return this.component.frameGraphComponentBuilder().frameGraphConfigModule(new FrameGraphConfigModule(this.component.cameraGraphComponentBuilder().cameraGraphConfigModule(new CameraGraphConfigModule(config.getCameraGraphConfig(), cameraGraphId)).build(), config)).build().frameGraph();
        } finally {
            Trace.endSection();
        }
    }

    private final CameraBackend getBackend(CameraGraph.Config config) {
        CameraBackend cameraBackendMo194getSG3A4s8;
        synchronized (this.lock) {
            try {
                if (this.shutdown) {
                    throw new IllegalStateException("Check failed.");
                }
                CameraBackendFactory customCameraBackend = config.getCustomCameraBackend();
                if (customCameraBackend != null) {
                    cameraBackendMo194getSG3A4s8 = customCameraBackend.create(this.component.cameraContext());
                } else {
                    String strM311getCameraBackendIdAKmI2lo = config.m311getCameraBackendIdAKmI2lo();
                    CameraPipeComponent cameraPipeComponent = this.component;
                    if (strM311getCameraBackendIdAKmI2lo != null) {
                        cameraBackendMo194getSG3A4s8 = cameraPipeComponent.cameraBackends().mo194getSG3A4s8(strM311getCameraBackendIdAKmI2lo);
                        if (cameraBackendMo194getSG3A4s8 == null) {
                            throw new IllegalStateException(("Failed to initialize " + ((Object) CameraBackendId.m192toStringimpl(strM311getCameraBackendIdAKmI2lo)) + " from " + config).toString());
                        }
                    } else {
                        cameraBackendMo194getSG3A4s8 = cameraPipeComponent.cameraBackends().getDefault();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cameraBackendMo194getSG3A4s8;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public CameraSurfaceManager cameraSurfaceManager() {
        CameraSurfaceManager cameraSurfaceManager;
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            cameraSurfaceManager = this.component.cameraSurfaceManager();
        }
        return cameraSurfaceManager;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public CameraDevices cameras() {
        CameraDevices cameraDevicesCameras;
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            cameraDevicesCameras = this.component.cameras();
        }
        return cameraDevicesCameras;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    @ul2
    public CameraGraph create(CameraGraph.Config config) {
        config.getClass();
        return createCameraGraph(config);
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public CameraGraph createCameraGraph(CameraGraph.Config config) {
        CameraGraph cameraGraphCreateCameraGraphLocked;
        config.getClass();
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            cameraGraphCreateCameraGraphLocked = createCameraGraphLocked(config, CameraGraphId.Companion.nextId());
        }
        return cameraGraphCreateCameraGraphLocked;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public List<CameraGraph> createCameraGraphs(CameraGraph.ConcurrentConfig concurrentConfig) {
        ArrayList arrayList;
        concurrentConfig.getClass();
        synchronized (this.lock) {
            try {
                if (this.shutdown) {
                    throw new IllegalStateException("Check failed.");
                }
                uz4 uz4Var = new uz4();
                Iterator<CameraGraph.Config> it = concurrentConfig.getGraphConfigs().iterator();
                while (it.hasNext()) {
                    uz4Var.put(it.next(), CameraGraphId.Companion.nextId());
                }
                uz4 uz4VarB = uz4Var.b();
                List<CameraGraph.Config> graphConfigs = concurrentConfig.getGraphConfigs();
                ArrayList arrayList2 = new ArrayList(kn1.q(graphConfigs, 10));
                Iterator<T> it2 = graphConfigs.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(CameraId.m351boximpl(((CameraGraph.Config) it2.next()).m310getCameraDz_R5H8()));
                }
                ConcurrentCameraGraphs concurrentCameraGraphs = new ConcurrentCameraGraphs(qn1.y0(uz4VarB.values()), qn1.y0(arrayList2));
                List<CameraGraph.Config> graphConfigs2 = concurrentConfig.getGraphConfigs();
                arrayList = new ArrayList(kn1.q(graphConfigs2, 10));
                for (CameraGraph.Config config : graphConfigs2) {
                    config.setConcurrentCameraGraphs$camera_camera2_pipe(concurrentCameraGraphs);
                    Object obj = uz4VarB.get(config);
                    if (obj == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    arrayList.add(createCameraGraphLocked(config, (CameraGraphId) obj));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public FrameGraph createFrameGraph(FrameGraph.Config config) {
        FrameGraph frameGraphCreateFrameGraphLocked;
        config.getClass();
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            frameGraphCreateFrameGraphLocked = createFrameGraphLocked(config, CameraGraphId.Companion.nextId());
        }
        return frameGraphCreateFrameGraphLocked;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public List<FrameGraph> createFrameGraphs(FrameGraph.ConcurrentConfig concurrentConfig) {
        ArrayList arrayList;
        concurrentConfig.getClass();
        synchronized (this.lock) {
            try {
                if (this.shutdown) {
                    throw new IllegalStateException("Check failed.");
                }
                uz4 uz4Var = new uz4();
                Iterator<FrameGraph.Config> it = concurrentConfig.getFrameGraphConfigs().iterator();
                while (it.hasNext()) {
                    uz4Var.put(it.next(), CameraGraphId.Companion.nextId());
                }
                uz4 uz4VarB = uz4Var.b();
                List<FrameGraph.Config> frameGraphConfigs = concurrentConfig.getFrameGraphConfigs();
                ArrayList arrayList2 = new ArrayList(kn1.q(frameGraphConfigs, 10));
                Iterator<T> it2 = frameGraphConfigs.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(CameraId.m351boximpl(((FrameGraph.Config) it2.next()).getCameraGraphConfig().m310getCameraDz_R5H8()));
                }
                ConcurrentCameraGraphs concurrentCameraGraphs = new ConcurrentCameraGraphs(qn1.y0(uz4VarB.values()), qn1.y0(arrayList2));
                List<FrameGraph.Config> frameGraphConfigs2 = concurrentConfig.getFrameGraphConfigs();
                arrayList = new ArrayList(kn1.q(frameGraphConfigs2, 10));
                for (FrameGraph.Config config : frameGraphConfigs2) {
                    config.getCameraGraphConfig().setConcurrentCameraGraphs$camera_camera2_pipe(concurrentCameraGraphs);
                    Object obj = uz4VarB.get(config);
                    if (obj == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    arrayList.add(createFrameGraphLocked(config, (CameraGraphId) obj));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    /* JADX INFO: renamed from: getGlobalAudioRestrictionMode-_b5Q8KE */
    public int mo375getGlobalAudioRestrictionMode_b5Q8KE() {
        synchronized (this.lock) {
            try {
                if (!this.shutdown) {
                    AudioRestrictionMode audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A = this.component.cameraAudioRestrictionController().mo750getGlobalAudioRestrictionMode4o0Og1A();
                    return audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A != null ? audioRestrictionModeMo750getGlobalAudioRestrictionMode4o0Og1A.m145unboximpl() : AudioRestrictionMode.Companion.m146getAUDIO_RESTRICTION_NONE_b5Q8KE();
                }
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Trying to get audio restriction after shutdown! Returning NONE");
                }
                return AudioRestrictionMode.Companion.m146getAUDIO_RESTRICTION_NONE_b5Q8KE();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    /* JADX INFO: renamed from: isConfigSupported-NpXggIU */
    public Object mo376isConfigSupportedNpXggIU(CameraGraph.Config config, e02<? super ConfigQueryResult> e02Var) {
        CameraBackend backend = getBackend(config);
        if (backend != null) {
            return backend.mo179isConfigSupportedNpXggIU(config, e02Var);
        }
        ah.f("Required value was null.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public void prewarmIsConfigSupported(CameraGraph.Config config) {
        config.getClass();
        CameraBackend backend = getBackend(config);
        if (backend != null) {
            backend.mo182prewarmIsConfigSupportedEfqyGwQ(config.m310getCameraDz_R5H8());
        } else {
            ah.f("Required value was null.");
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    /* JADX INFO: renamed from: setGlobalAudioRestrictionMode-LwUUkyU */
    public void mo377setGlobalAudioRestrictionModeLwUUkyU(int i) {
        synchronized (this.lock) {
            if (this.shutdown) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Trying to set audio restriction after shutdown!");
                }
            } else {
                this.component.cameraAudioRestrictionController().mo751setGlobalAudioRestrictionMode3NUV5dA(AudioRestrictionMode.m139boximpl(i));
                j59 j59Var = j59.a;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraPipe
    public void shutdown() {
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new IllegalStateException("Check failed.");
            }
            this.component.cameraPipeLifetime().shutdown();
            this.shutdown = true;
            j59 j59Var = j59.a;
        }
    }

    public String toString() {
        return "CameraPipe-" + this.debugId;
    }
}
