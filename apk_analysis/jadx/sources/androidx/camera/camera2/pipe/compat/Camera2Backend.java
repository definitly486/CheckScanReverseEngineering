package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ConfigQueryResult;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.config.Camera2ControllerComponent;
import androidx.camera.camera2.pipe.config.Camera2ControllerConfig;
import androidx.camera.camera2.pipe.config.CameraPipeContext;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.x07;
import defpackage.y22;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2Backend implements CameraBackend, Camera2CameraController.ShutdownListener {
    private final Set<CameraController> activeCameraControllers;
    private final Camera2ControllerComponent.Builder camera2CameraControllerComponent;
    private final Camera2DeviceCache camera2DeviceCache;
    private final Camera2DeviceManager camera2DeviceManager;
    private final Camera2MetadataCache camera2MetadataCache;
    private final Context cameraPipeContext;
    private final Object lock;
    private final Threads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2Backend$shutdownAsync$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2Backend$shutdownAsync$2", f = "Camera2Backend.kt", l = {190, 196}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        Object L$1;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Camera2Backend.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0040  */
        /* JADX WARN: Code duplicated, block: B:19:0x004f  */
        /* JADX WARN: Code duplicated, block: B:28:0x0098  */
        /* JADX WARN: Code duplicated, block: B:30:0x00a0  */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
        
            if (r9 == r0) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00bb, code lost:
        
            if (r9.Z(r8) == r0) goto L33;
         */
        /* JADX WARN: Instruction removed from duplicated block: B:19:0x004f, please report this as an issue */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:23:0x006f). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r8.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L24
                if (r1 == r4) goto L18
                if (r1 != r3) goto L12
                defpackage.r57.b(r9)
                goto Lbe
            L12:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r8)
                return r2
            L18:
                java.lang.Object r1 = r8.L$1
                androidx.camera.camera2.pipe.CameraController r1 = (androidx.camera.camera2.pipe.CameraController) r1
                java.lang.Object r5 = r8.L$0
                java.util.Iterator r5 = (java.util.Iterator) r5
                defpackage.r57.b(r9)
                goto L6f
            L24:
                defpackage.r57.b(r9)
                androidx.camera.camera2.pipe.compat.Camera2Backend r9 = androidx.camera.camera2.pipe.compat.Camera2Backend.this
                java.lang.Object r9 = androidx.camera.camera2.pipe.compat.Camera2Backend.access$getLock$p(r9)
                androidx.camera.camera2.pipe.compat.Camera2Backend r1 = androidx.camera.camera2.pipe.compat.Camera2Backend.this
                monitor-enter(r9)
                java.util.Set r1 = androidx.camera.camera2.pipe.compat.Camera2Backend.access$getActiveCameraControllers$p(r1)     // Catch: java.lang.Throwable -> Lc1
                monitor-exit(r9)
                java.util.Iterator r9 = r1.iterator()
                r5 = r9
            L3a:
                boolean r9 = r5.hasNext()
                if (r9 == 0) goto L98
                java.lang.Object r9 = r5.next()
                r1 = r9
                androidx.camera.camera2.pipe.CameraController r1 = (androidx.camera.camera2.pipe.CameraController) r1
                androidx.camera.camera2.pipe.core.Log r9 = androidx.camera.camera2.pipe.core.Log.INSTANCE
                boolean r9 = r9.getDEBUG_LOGGABLE()
                if (r9 == 0) goto L62
                java.lang.String r9 = "CXCP"
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                java.lang.String r7 = "Camera2Backend#shutdownAsync: Awaiting closure from "
                r6.<init>(r7)
                r6.append(r1)
                java.lang.String r6 = r6.toString()
                android.util.Log.d(r9, r6)
            L62:
                r8.L$0 = r5
                r8.L$1 = r1
                r8.label = r4
                java.lang.Object r9 = r1.awaitClosed(r8)
                if (r9 != r0) goto L6f
                goto Lbd
            L6f:
                java.lang.Boolean r9 = (java.lang.Boolean) r9
                boolean r9 = r9.booleanValue()
                if (r9 != 0) goto L3a
                androidx.camera.camera2.pipe.core.Log r9 = androidx.camera.camera2.pipe.core.Log.INSTANCE
                boolean r9 = r9.getWARN_LOGGABLE()
                if (r9 == 0) goto L3a
                java.lang.String r9 = "CXCP"
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                java.lang.String r7 = "Failed to await closure from "
                r6.<init>(r7)
                r6.append(r1)
                r1 = 33
                r6.append(r1)
                java.lang.String r1 = r6.toString()
                android.util.Log.w(r9, r1)
                goto L3a
            L98:
                androidx.camera.camera2.pipe.core.Log r9 = androidx.camera.camera2.pipe.core.Log.INSTANCE
                boolean r9 = r9.getDEBUG_LOGGABLE()
                if (r9 == 0) goto La7
                java.lang.String r9 = "CXCP"
                java.lang.String r1 = "Camera2Backend#shutdownAsync: Closing all cameras (if any)"
                android.util.Log.d(r9, r1)
            La7:
                androidx.camera.camera2.pipe.compat.Camera2Backend r9 = androidx.camera.camera2.pipe.compat.Camera2Backend.this
                androidx.camera.camera2.pipe.compat.Camera2DeviceManager r9 = androidx.camera.camera2.pipe.compat.Camera2Backend.access$getCamera2DeviceManager$p(r9)
                mk2 r9 = r9.closeAll(r4)
                r8.L$0 = r2
                r8.L$1 = r2
                r8.label = r3
                java.lang.Object r8 = r9.Z(r8)
                if (r8 != r0) goto Lbe
            Lbd:
                return r0
            Lbe:
                j59 r8 = defpackage.j59.a
                return r8
            Lc1:
                r8 = move-exception
                monitor-exit(r9)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2Backend.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public Camera2Backend(Threads threads, Camera2DeviceCache camera2DeviceCache, Camera2MetadataCache camera2MetadataCache, Camera2DeviceManager camera2DeviceManager, Camera2ControllerComponent.Builder builder, @CameraPipeContext Context context) {
        threads.getClass();
        camera2DeviceCache.getClass();
        camera2MetadataCache.getClass();
        camera2DeviceManager.getClass();
        builder.getClass();
        context.getClass();
        this.threads = threads;
        this.camera2DeviceCache = camera2DeviceCache;
        this.camera2MetadataCache = camera2MetadataCache;
        this.camera2DeviceManager = camera2DeviceManager;
        this.camera2CameraControllerComponent = builder;
        this.cameraPipeContext = context;
        this.lock = new Object();
        this.activeCameraControllers = new LinkedHashSet();
    }

    private final List<OutputConfiguration> buildOutputConfiguration(CameraGraph.Config config) {
        OutputConfiguration outputConfiguration;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<CameraStream.Config> it = config.getStreams().iterator();
        while (it.hasNext()) {
            for (OutputStream.Config config2 : it.next().getOutputs()) {
                AndroidOutputConfiguration.Companion companion = AndroidOutputConfiguration.Companion;
                Integer numValueOf = Integer.valueOf(config2.m534getFormat8FPWQzE());
                OutputStream.OutputType sURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe = OutputStream.OutputType.Companion.getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe();
                OutputStream.MirrorMode mirrorModeM535getMirrorModedO1_9xk = config2.m535getMirrorModedO1_9xk();
                OutputStream.TimestampBase timestampBaseM538getTimestampBasepcPfPbY = config2.m538getTimestampBasepcPfPbY();
                OutputStream.DynamicRangeProfile dynamicRangeProfileM533getDynamicRangeProfileOoVcG5w = config2.m533getDynamicRangeProfileOoVcG5w();
                OutputStream.StreamUseCase streamUseCaseM536getStreamUseCase8x2ez34 = config2.m536getStreamUseCase8x2ez34();
                List<OutputStream.SensorPixelMode> sensorPixelModes = config2.getSensorPixelModes();
                Size size = config2.getSize();
                String strM532getCamera1LO98Z0 = config2.m532getCamera1LO98Z0();
                OutputConfigurationWrapper outputConfigurationWrapperM747creategWWoySg$default = AndroidOutputConfiguration.Companion.m747creategWWoySg$default(companion, null, numValueOf, sURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe, mirrorModeM535getMirrorModedO1_9xk, timestampBaseM538getTimestampBasepcPfPbY, dynamicRangeProfileM533getDynamicRangeProfileOoVcG5w, streamUseCaseM536getStreamUseCase8x2ez34, sensorPixelModes, size, false, 0, !(strM532getCamera1LO98Z0 == null ? false : CameraId.m354equalsimpl0(strM532getCamera1LO98Z0, config.m310getCameraDz_R5H8())) ? config2.m532getCamera1LO98Z0() : null, 1536, null);
                if (outputConfigurationWrapperM747creategWWoySg$default != null && (outputConfiguration = (OutputConfiguration) outputConfigurationWrapperM747creategWWoySg$default.unwrapAs(x07.a(OutputConfiguration.class))) != null) {
                    linkedHashSet.add(outputConfiguration);
                }
            }
        }
        return qn1.t0(linkedHashSet);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public List<CameraId> awaitCameraIds() {
        return this.camera2DeviceCache.awaitCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ */
    public CameraMetadata mo174awaitCameraMetadataEfqyGwQ(String str) {
        str.getClass();
        return this.camera2MetadataCache.mo778awaitCameraMetadataEfqyGwQ(str);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Set<Set<CameraId>> awaitConcurrentCameraIds() {
        return this.camera2DeviceCache.awaitConcurrentCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public CameraController createCameraController(CameraContext cameraContext, CameraGraphId cameraGraphId, CameraGraph.Config config, GraphListener graphListener, StreamGraph streamGraph, SurfaceTracker surfaceTracker) {
        cameraContext.getClass();
        cameraGraphId.getClass();
        config.getClass();
        graphListener.getClass();
        streamGraph.getClass();
        surfaceTracker.getClass();
        CameraController cameraController = this.camera2CameraControllerComponent.camera2ControllerConfig(new Camera2ControllerConfig(this, cameraGraphId, config, graphListener, (StreamGraphImpl) streamGraph, surfaceTracker, this)).build().cameraController();
        synchronized (this.lock) {
            this.activeCameraControllers.add(cameraController);
        }
        return cameraController;
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: disconnect-EfqyGwQ */
    public void mo175disconnectEfqyGwQ(String str) {
        str.getClass();
        this.camera2DeviceManager.mo766closeEfqyGwQ(str);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public void disconnectAll() {
        Camera2DeviceManager.closeAll$default(this.camera2DeviceManager, false, 1, null);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public mk2<j59> disconnectAllAsync() {
        return Camera2DeviceManager.closeAll$default(this.camera2DeviceManager, false, 1, null);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: disconnectAsync-EfqyGwQ */
    public mk2<j59> mo176disconnectAsyncEfqyGwQ(String str) {
        str.getClass();
        return this.camera2DeviceManager.mo766closeEfqyGwQ(str);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public hd3<List<CameraId>> getCameraIds() {
        return this.camera2DeviceCache.getCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc */
    public Object mo177getCameraMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var) {
        return this.camera2MetadataCache.mo780getCameraMetadata0r8Bogc(str, e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: getId-QwmhuAM */
    public String mo178getIdQwmhuAM() {
        return CameraBackendId.m188constructorimpl("CXCP-Camera2");
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:49:0x010a  */
    /* JADX WARN: Code duplicated, block: B:51:0x011c  */
    /* JADX WARN: Code duplicated, block: B:52:0x011f  */
    /* JADX WARN: Code duplicated, block: B:61:0x0143  */
    /* JADX WARN: Code duplicated, block: B:63:0x0150  */
    /* JADX WARN: Code duplicated, block: B:66:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: isConfigSupported-NpXggIU */
    public Object mo179isConfigSupportedNpXggIU(CameraGraph.Config config, e02<? super ConfigQueryResult> e02Var) {
        Camera2Backend$isConfigSupported$1 camera2Backend$isConfigSupported$1;
        CameraGraph.Config config2;
        CameraDeviceSetupCompat cameraDeviceSetupCompat;
        SessionConfiguration sessionConfiguration;
        Camera2DeviceSetupWrapper camera2DeviceSetupWrapper;
        CaptureRequest.Builder builderCreateCaptureRequest;
        CameraDeviceSetupCompat.SupportQueryResult supportQueryResultIsSessionConfigurationSupported;
        Object key;
        Object value;
        CaptureRequest.Key key2;
        if (e02Var instanceof Camera2Backend$isConfigSupported$1) {
            camera2Backend$isConfigSupported$1 = (Camera2Backend$isConfigSupported$1) e02Var;
            int i = camera2Backend$isConfigSupported$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                camera2Backend$isConfigSupported$1.label = i - Integer.MIN_VALUE;
            } else {
                camera2Backend$isConfigSupported$1 = new Camera2Backend$isConfigSupported$1(this, e02Var);
            }
        } else {
            camera2Backend$isConfigSupported$1 = new Camera2Backend$isConfigSupported$1(this, e02Var);
        }
        Object objM764getOrInitializeDeviceSetupCompat0r8Bogc = camera2Backend$isConfigSupported$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = camera2Backend$isConfigSupported$1.label;
        Integer num = null;
        int iM314getSessionMode2uNL3no = 1;
        if (i2 == 0) {
            r57.b(objM764getOrInitializeDeviceSetupCompat0r8Bogc);
            if (Build.VERSION.SDK_INT < 35) {
                return ConfigQueryResult.m401boximpl(ConfigQueryResult.Companion.m409getUNKNOWNXp6DSB4());
            }
            Camera2DeviceCache camera2DeviceCache = this.camera2DeviceCache;
            String strM310getCameraDz_R5H8 = config.m310getCameraDz_R5H8();
            camera2Backend$isConfigSupported$1.L$0 = config;
            camera2Backend$isConfigSupported$1.label = 1;
            objM764getOrInitializeDeviceSetupCompat0r8Bogc = camera2DeviceCache.m764getOrInitializeDeviceSetupCompat0r8Bogc(strM310getCameraDz_R5H8, camera2Backend$isConfigSupported$1);
            if (objM764getOrInitializeDeviceSetupCompat0r8Bogc != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            config = (CameraGraph.Config) camera2Backend$isConfigSupported$1.L$0;
            r57.b(objM764getOrInitializeDeviceSetupCompat0r8Bogc);
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            sessionConfiguration = (SessionConfiguration) camera2Backend$isConfigSupported$1.L$2;
            cameraDeviceSetupCompat = (CameraDeviceSetupCompat) camera2Backend$isConfigSupported$1.L$1;
            config2 = (CameraGraph.Config) camera2Backend$isConfigSupported$1.L$0;
            r57.b(objM764getOrInitializeDeviceSetupCompat0r8Bogc);
        }
        camera2DeviceSetupWrapper = (Camera2DeviceSetupWrapper) objM764getOrInitializeDeviceSetupCompat0r8Bogc;
        if (camera2DeviceSetupWrapper != null) {
            builderCreateCaptureRequest = camera2DeviceSetupWrapper.createCaptureRequest(config2.m315getSessionTemplatefGx8uWA());
        } else {
            builderCreateCaptureRequest = null;
        }
        if (builderCreateCaptureRequest != null) {
            for (Map.Entry<?, Object> entry : config2.getSessionParameters().entrySet()) {
                key = entry.getKey();
                value = entry.getValue();
                if (key instanceof CaptureRequest.Key) {
                    key2 = (CaptureRequest.Key) key;
                } else {
                    key2 = null;
                }
                if (key2 != null) {
                    builderCreateCaptureRequest.set(key2, value);
                }
            }
            CaptureRequest captureRequestBuild = builderCreateCaptureRequest.build();
            captureRequestBuild.getClass();
            Api28Compat.setSessionParameters(sessionConfiguration, captureRequestBuild);
        }
        if (cameraDeviceSetupCompat != null && (supportQueryResultIsSessionConfigurationSupported = cameraDeviceSetupCompat.isSessionConfigurationSupported(sessionConfiguration)) != null) {
            num = new Integer(supportQueryResultIsSessionConfigurationSupported.getSupported());
        }
        return num != null ? ConfigQueryResult.m401boximpl(ConfigQueryResult.m402constructorimpl(num.intValue())) : ConfigQueryResult.m401boximpl(ConfigQueryResult.Companion.m409getUNKNOWNXp6DSB4());
        CameraDeviceSetupCompat cameraDeviceSetupCompat2 = (CameraDeviceSetupCompat) objM764getOrInitializeDeviceSetupCompat0r8Bogc;
        int iM314getSessionMode2uNL3no2 = config.m314getSessionMode2uNL3no();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no2, companion.m342getNORMAL2uNL3no())) {
            iM314getSessionMode2uNL3no = 0;
        } else if (!CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no2, companion.m341getHIGH_SPEED2uNL3no())) {
            if (CameraGraph.OperatingMode.m335equalsimpl0(iM314getSessionMode2uNL3no2, companion.m340getEXTENSION2uNL3no())) {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "Unsupported session mode: " + ((Object) CameraGraph.OperatingMode.m337toStringimpl(config.m314getSessionMode2uNL3no())));
                }
                return ConfigQueryResult.m401boximpl(ConfigQueryResult.Companion.m409getUNKNOWNXp6DSB4());
            }
            iM314getSessionMode2uNL3no = config.m314getSessionMode2uNL3no();
        }
        SessionConfiguration sessionConfigurationNewSessionConfiguration = Api35Compat.newSessionConfiguration(iM314getSessionMode2uNL3no, buildOutputConfiguration(config));
        Camera2DeviceCache camera2DeviceCache2 = this.camera2DeviceCache;
        String strM310getCameraDz_R5H9 = config.m310getCameraDz_R5H8();
        camera2Backend$isConfigSupported$1.L$0 = config;
        camera2Backend$isConfigSupported$1.L$1 = cameraDeviceSetupCompat2;
        camera2Backend$isConfigSupported$1.L$2 = sessionConfigurationNewSessionConfiguration;
        camera2Backend$isConfigSupported$1.label = 2;
        Object objM765getOrInitializeDeviceSetupWrapper0r8Bogc = camera2DeviceCache2.m765getOrInitializeDeviceSetupWrapper0r8Bogc(strM310getCameraDz_R5H9, camera2Backend$isConfigSupported$1);
        if (objM765getOrInitializeDeviceSetupWrapper0r8Bogc != a32Var) {
            config2 = config;
            cameraDeviceSetupCompat = cameraDeviceSetupCompat2;
            objM764getOrInitializeDeviceSetupCompat0r8Bogc = objM765getOrInitializeDeviceSetupWrapper0r8Bogc;
            sessionConfiguration = sessionConfigurationNewSessionConfiguration;
            camera2DeviceSetupWrapper = (Camera2DeviceSetupWrapper) objM764getOrInitializeDeviceSetupCompat0r8Bogc;
            if (camera2DeviceSetupWrapper != null) {
                builderCreateCaptureRequest = camera2DeviceSetupWrapper.createCaptureRequest(config2.m315getSessionTemplatefGx8uWA());
            } else {
                builderCreateCaptureRequest = null;
            }
            if (builderCreateCaptureRequest != null) {
                while (r0.hasNext()) {
                    key = entry.getKey();
                    value = entry.getValue();
                    if (key instanceof CaptureRequest.Key) {
                        key2 = (CaptureRequest.Key) key;
                    } else {
                        key2 = null;
                    }
                    if (key2 != null) {
                        builderCreateCaptureRequest.set(key2, value);
                    }
                }
                CaptureRequest captureRequestBuild2 = builderCreateCaptureRequest.build();
                captureRequestBuild2.getClass();
                Api28Compat.setSessionParameters(sessionConfiguration, captureRequestBuild2);
            }
            if (cameraDeviceSetupCompat != null) {
                num = new Integer(supportQueryResultIsSessionConfigurationSupported.getSupported());
            }
            if (num != null) {
            }
        }
        return a32Var;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CameraController.ShutdownListener
    public void onControllerClosed(CameraController cameraController) {
        cameraController.getClass();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, cameraController + " finalized");
        }
        synchronized (this.lock) {
            this.activeCameraControllers.remove(cameraController);
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: prewarm-EfqyGwQ */
    public void mo180prewarmEfqyGwQ(String str) {
        str.getClass();
        this.camera2DeviceManager.mo768prewarmEfqyGwQ(str);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    /* JADX INFO: renamed from: prewarmIsConfigSupported-EfqyGwQ */
    public void mo182prewarmIsConfigSupportedEfqyGwQ(String str) {
        str.getClass();
        if (Build.VERSION.SDK_INT < 35) {
            return;
        }
        av0.c(this.threads.getCameraPipeScope(), null, null, new Camera2Backend$prewarmIsConfigSupported$1(this, str, null), 3);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public mk2<j59> shutdownAsync() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Camera2Backend#shutdownAsync");
        }
        this.camera2DeviceCache.shutdown();
        return av0.a(this.threads.getCameraPipeScope(), null, null, new AnonymousClass2(null), 3);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackend
    public Object getCameraIds(e02<? super List<CameraId>> e02Var) {
        return this.camera2DeviceCache.getCameraIds(e02Var);
    }
}
