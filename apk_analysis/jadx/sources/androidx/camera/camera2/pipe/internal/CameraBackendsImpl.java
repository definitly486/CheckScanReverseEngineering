package androidx.camera.camera2.pipe.internal;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendFactory;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.config.CameraPipeContext;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.a32;
import defpackage.e02;
import defpackage.gq;
import defpackage.j59;
import defpackage.jh2;
import defpackage.oz;
import defpackage.zd3;
import defpackage.zg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CameraBackendsImpl implements CameraBackends {
    private final Map<CameraBackendId, CameraBackend> activeCameraBackends;
    private final Map<CameraBackendId, CameraBackendFactory> cameraBackends;
    private final Context cameraPipeContext;

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private final CameraBackend f1default;
    private final String defaultBackendId;
    private final Object lock;
    private final Threads threads;

    public static final class CameraBackendContext implements CameraContext {
        private final Context appContext;
        private final CameraBackends cameraBackends;
        private final Threads threads;

        public CameraBackendContext(Context context, Threads threads, CameraBackends cameraBackends) {
            context.getClass();
            threads.getClass();
            cameraBackends.getClass();
            this.appContext = context;
            this.threads = threads;
            this.cameraBackends = cameraBackends;
        }

        @Override // androidx.camera.camera2.pipe.CameraContext
        public Context getAppContext() {
            return this.appContext;
        }

        @Override // androidx.camera.camera2.pipe.CameraContext
        public CameraBackends getCameraBackends() {
            return this.cameraBackends;
        }

        @Override // androidx.camera.camera2.pipe.CameraContext
        public Threads getThreads() {
            return this.threads;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private CameraBackendsImpl(String str, Map<CameraBackendId, ? extends CameraBackendFactory> map, Context context, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
        str.getClass();
        map.getClass();
        context.getClass();
        threads.getClass();
        cameraPipeLifetime.getClass();
        this.defaultBackendId = str;
        this.cameraBackends = map;
        this.cameraPipeContext = context;
        this.threads = threads;
        this.lock = new Object();
        this.activeCameraBackends = new LinkedHashMap();
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.CAMERA, new gq(this, 1));
        CameraBackend cameraBackendMo194getSG3A4s8 = mo194getSG3A4s8(str);
        if (cameraBackendMo194getSG3A4s8 != null) {
            this.f1default = cameraBackendMo194getSG3A4s8;
            return;
        }
        StringBuilder sb = new StringBuilder("Failed to load the default backend for ");
        sb.append((Object) CameraBackendId.m192toStringimpl(str));
        zg.g(sb, "! Available backends are ", map.keySet());
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(CameraBackendsImpl cameraBackendsImpl) {
        zd3.g(new CameraBackendsImpl$1$1(cameraBackendsImpl, null));
    }

    @Override // androidx.camera.camera2.pipe.CameraBackends
    /* JADX INFO: renamed from: get-SG3A4s8 */
    public CameraBackend mo194getSG3A4s8(String str) {
        str.getClass();
        synchronized (this.lock) {
            try {
                CameraBackend cameraBackend = this.activeCameraBackends.get(CameraBackendId.m187boximpl(str));
                if (cameraBackend != null) {
                    return cameraBackend;
                }
                CameraBackendFactory cameraBackendFactory = this.cameraBackends.get(CameraBackendId.m187boximpl(str));
                CameraBackend cameraBackendCreate = cameraBackendFactory != null ? cameraBackendFactory.create(new CameraBackendContext(this.cameraPipeContext, this.threads, this)) : null;
                if (cameraBackendCreate != null) {
                    if (!CameraBackendId.m190equalsimpl0(str, cameraBackendCreate.mo178getIdQwmhuAM())) {
                        throw new IllegalStateException(("Unexpected backend id! Expected " + ((Object) CameraBackendId.m192toStringimpl(str)) + " but it was actually " + ((Object) CameraBackendId.m192toStringimpl(cameraBackendCreate.mo178getIdQwmhuAM()))).toString());
                    }
                    this.activeCameraBackends.put(CameraBackendId.m187boximpl(str), cameraBackendCreate);
                }
                return cameraBackendCreate;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraBackends
    public Set<CameraBackendId> getActiveIds() {
        Set<CameraBackendId> setKeySet;
        synchronized (this.lock) {
            setKeySet = this.activeCameraBackends.keySet();
        }
        return setKeySet;
    }

    @Override // androidx.camera.camera2.pipe.CameraBackends
    public Set<CameraBackendId> getAllIds() {
        return this.cameraBackends.keySet();
    }

    @Override // androidx.camera.camera2.pipe.CameraBackends
    public CameraBackend getDefault() {
        return this.f1default;
    }

    @Override // androidx.camera.camera2.pipe.CameraBackends
    public Object shutdown(e02<? super j59> e02Var) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "CameraBackends#shutdown");
        }
        Map<CameraBackendId, CameraBackend> map = this.activeCameraBackends;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<CameraBackendId, CameraBackend>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue().shutdownAsync());
        }
        Object objB = oz.b(arrayList, e02Var);
        return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
    }

    public /* synthetic */ CameraBackendsImpl(String str, Map map, @CameraPipeContext Context context, Threads threads, CameraPipeLifetime cameraPipeLifetime, jh2 jh2Var) {
        this(str, map, context, threads, cameraPipeLifetime);
    }
}
