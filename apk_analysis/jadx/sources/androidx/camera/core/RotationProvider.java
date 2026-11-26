package androidx.camera.core;

import android.content.Context;
import android.view.OrientationEventListener;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qn1;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class RotationProvider {
    private static final Companion Companion = new Companion(null);
    private static final String TAG = "RotationProvider";
    private final boolean ignoreCanDetectForTest;
    private boolean isShutdown;
    private final Map<Listener, ListenerWrapper> listeners;
    private final Object lock;
    private final OrientationEventListener orientationListener;
    private volatile int rotation;

    public interface Listener {
        void onRotationChanged(int i);
    }

    public static final class ListenerWrapper {
        private final AtomicBoolean enabled;
        private final Executor executor;
        private final Listener listener;

        public ListenerWrapper(Listener listener, Executor executor) {
            listener.getClass();
            executor.getClass();
            this.listener = listener;
            this.executor = executor;
            this.enabled = new AtomicBoolean(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onRotationChanged$lambda$0(ListenerWrapper listenerWrapper, int i) {
            if (listenerWrapper.enabled.get()) {
                listenerWrapper.listener.onRotationChanged(i);
            }
        }

        public final void disable() {
            this.enabled.set(false);
        }

        public final void onRotationChanged(final int i) {
            if (this.enabled.get()) {
                try {
                    this.executor.execute(new Runnable() { // from class: androidx.camera.core.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            RotationProvider.ListenerWrapper.onRotationChanged$lambda$0(this.b, i);
                        }
                    });
                } catch (RejectedExecutionException unused) {
                    Logger.w(RotationProvider.TAG, "Failed to execute the command. Maybe the executor has been shutdown.");
                }
            }
        }
    }

    public RotationProvider(Context context, boolean z) {
        context.getClass();
        this.lock = new Object();
        this.listeners = new LinkedHashMap();
        this.rotation = -1;
        this.ignoreCanDetectForTest = z;
        this.orientationListener = new OrientationEventListener(context) { // from class: androidx.camera.core.RotationProvider.1
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i == -1) {
                    return;
                }
                this.updateRotation(this.orientationToSurfaceRotation(i));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int orientationToSurfaceRotation(int i) {
        if (this.rotation == -1) {
            if (i >= 0 && i < 45) {
                return 0;
            }
            if (45 <= i && i < 135) {
                return 3;
            }
            if (135 > i || i >= 225) {
                return (225 > i || i >= 315) ? 0 : 1;
            }
            return 2;
        }
        if ((i >= 0 && i < 40) || (320 <= i && i < 360)) {
            return 0;
        }
        if (50 <= i && i < 130) {
            return 3;
        }
        if (140 <= i && i < 220) {
            return 2;
        }
        if (230 > i || i >= 310) {
            return this.rotation;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRotation(int i) {
        List listT0;
        if (this.rotation != i) {
            this.rotation = i;
            synchronized (this.lock) {
                listT0 = qn1.t0(this.listeners.values());
                j59 j59Var = j59.a;
            }
            Iterator it = listT0.iterator();
            while (it.hasNext()) {
                ((ListenerWrapper) it.next()).onRotationChanged(i);
            }
        }
    }

    public final boolean addListener(Executor executor, Listener listener) {
        executor.getClass();
        listener.getClass();
        synchronized (this.lock) {
            if (!this.ignoreCanDetectForTest && !this.orientationListener.canDetectOrientation()) {
                return false;
            }
            ListenerWrapper listenerWrapper = new ListenerWrapper(listener, executor);
            this.listeners.put(listener, listenerWrapper);
            if (this.rotation != -1) {
                listenerWrapper.onRotationChanged(this.rotation);
            }
            if (this.listeners.size() == 1) {
                this.orientationListener.enable();
            }
            j59 j59Var = j59.a;
            return true;
        }
    }

    public final boolean isShutdown() {
        return this.isShutdown;
    }

    public final void removeListener(Listener listener) {
        listener.getClass();
        synchronized (this.lock) {
            try {
                ListenerWrapper listenerWrapper = this.listeners.get(listener);
                if (listenerWrapper != null) {
                    listenerWrapper.disable();
                    this.listeners.remove(listener);
                }
                if (this.listeners.isEmpty()) {
                    this.orientationListener.disable();
                    this.rotation = -1;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void shutdown() {
        synchronized (this.lock) {
            this.orientationListener.disable();
            this.listeners.clear();
            this.isShutdown = true;
            this.rotation = -1;
            j59 j59Var = j59.a;
        }
    }

    public final void updateOrientationForTesting(int i) {
        updateRotation(orientationToSurfaceRotation(i));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RotationProvider(Context context) {
        this(context, false);
        context.getClass();
    }

    public /* synthetic */ RotationProvider(Context context, boolean z, int i, jh2 jh2Var) {
        this(context, (i & 2) != 0 ? false : z);
    }
}
