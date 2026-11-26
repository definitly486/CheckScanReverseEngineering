package androidx.camera.camera2.pipe;

import android.view.Surface;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.ht;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.lt;
import defpackage.qn1;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CameraSurfaceManager {
    public static final boolean DEBUG = false;
    public static final Companion Companion = new Companion(null);
    private static final lt surfaceTokenDebugIds = kt.b(0);
    private final Object lock = new Object();
    private final Map<Surface, Integer> useCountMap = new LinkedHashMap();
    private final Set<SurfaceListener> listeners = new LinkedHashSet();

    public interface SurfaceListener {
        void onSurfaceActive(Surface surface);

        void onSurfaceInactive(Surface surface);
    }

    public final class SurfaceToken implements AutoCloseable {
        private final ht closed;
        private final int debugId;
        private final Surface surface;
        final /* synthetic */ CameraSurfaceManager this$0;

        public SurfaceToken(CameraSurfaceManager cameraSurfaceManager, Surface surface) {
            surface.getClass();
            this.this$0 = cameraSurfaceManager;
            this.surface = surface;
            this.debugId = CameraSurfaceManager.Companion.getSurfaceTokenDebugIds$camera_camera2_pipe().b();
            this.closed = kt.a(false);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (this.closed.a()) {
                this.this$0.onTokenClosed$camera_camera2_pipe(this);
            }
        }

        public final Surface getSurface$camera_camera2_pipe() {
            return this.surface;
        }

        public String toString() {
            return "SurfaceToken-" + this.debugId;
        }
    }

    public final void addListener(SurfaceListener surfaceListener) {
        Set setKeySet;
        surfaceListener.getClass();
        synchronized (this.lock) {
            try {
                this.listeners.add(surfaceListener);
                Map<Surface, Integer> map = this.useCountMap;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry<Surface, Integer> entry : map.entrySet()) {
                    if (entry.getValue().intValue() > 0) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                setKeySet = linkedHashMap.keySet();
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            surfaceListener.onSurfaceActive((Surface) it.next());
        }
    }

    public final void onTokenClosed$camera_camera2_pipe(SurfaceToken surfaceToken) {
        Surface surface$camera_camera2_pipe;
        List listT0;
        surfaceToken.getClass();
        synchronized (this.lock) {
            try {
                surface$camera_camera2_pipe = surfaceToken.getSurface$camera_camera2_pipe();
                Integer num = this.useCountMap.get(surface$camera_camera2_pipe);
                if (num == null) {
                    throw new IllegalStateException(("Surface " + surface$camera_camera2_pipe + " (" + surfaceToken + ") has no use count").toString());
                }
                int iIntValue = num.intValue() - 1;
                this.useCountMap.put(surface$camera_camera2_pipe, Integer.valueOf(iIntValue));
                if (iIntValue == 0) {
                    listT0 = qn1.t0(this.listeners);
                    this.useCountMap.remove(surface$camera_camera2_pipe);
                } else {
                    listT0 = null;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (listT0 != null) {
            Iterator it = listT0.iterator();
            while (it.hasNext()) {
                ((SurfaceListener) it.next()).onSurfaceInactive(surface$camera_camera2_pipe);
            }
        }
    }

    public final AutoCloseable registerSurface$camera_camera2_pipe(Surface surface) {
        SurfaceToken surfaceToken;
        List listT0;
        surface.getClass();
        if (!surface.isValid() && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "registerSurface: Surface " + surface + " isn't valid!");
        }
        synchronized (this.lock) {
            try {
                surfaceToken = new SurfaceToken(this, surface);
                Integer num = this.useCountMap.get(surface);
                int iIntValue = (num != null ? num.intValue() : 0) + 1;
                this.useCountMap.put(surface, Integer.valueOf(iIntValue));
                listT0 = iIntValue == 1 ? qn1.t0(this.listeners) : null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (listT0 != null) {
            Iterator it = listT0.iterator();
            while (it.hasNext()) {
                ((SurfaceListener) it.next()).onSurfaceActive(surface);
            }
        }
        return surfaceToken;
    }

    public final void removeListener(SurfaceListener surfaceListener) {
        surfaceListener.getClass();
        synchronized (this.lock) {
            this.listeners.remove(surfaceListener);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final lt getSurfaceTokenDebugIds$camera_camera2_pipe() {
            return CameraSurfaceManager.surfaceTokenDebugIds;
        }

        private Companion() {
        }
    }
}
