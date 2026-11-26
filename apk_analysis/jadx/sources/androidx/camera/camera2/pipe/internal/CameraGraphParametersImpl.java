package androidx.camera.camera2.pipe.internal;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Parameters;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import androidx.camera.camera2.pipe.config.ForCameraGraph;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphProcessor;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.l1;
import defpackage.pg8;
import defpackage.r57;
import defpackage.v39;
import defpackage.y22;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class CameraGraphParametersImpl implements Parameters {
    private boolean dirty;
    private final GraphProcessor graphProcessor;
    private final y22 graphScope;
    private final Object lock;
    private final Map<Object, Object> parameters;
    private final GraphSessionLock sessionLock;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl$applyUpdate$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl$applyUpdate$1", f = "CameraGraphParametersImpl.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<Token, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CameraGraphParametersImpl.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(Token token, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(token, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CameraGraphParametersImpl.this.flush();
            return j59.a;
        }
    }

    public CameraGraphParametersImpl(GraphSessionLock graphSessionLock, GraphProcessor graphProcessor, @ForCameraGraph y22 y22Var) {
        graphSessionLock.getClass();
        graphProcessor.getClass();
        y22Var.getClass();
        this.sessionLock = graphSessionLock;
        this.graphProcessor = graphProcessor;
        this.graphScope = y22Var;
        this.lock = new Object();
        this.parameters = new LinkedHashMap();
    }

    private final void applyUpdate() {
        this.sessionLock.withTokenIn$camera_camera2_pipe(this.graphScope, new AnonymousClass1(null));
    }

    private final boolean modify(Map<Object, Object> map, Object obj, Object obj2) {
        if ((obj instanceof CaptureRequest.Key) || (obj instanceof Metadata.Key)) {
            if (map.containsKey(obj) && aa4.e(map.get(obj), obj2)) {
                return false;
            }
            map.put(obj, obj2);
            return true;
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Skipping set parameter (key=" + obj + ", value=" + obj2 + "). " + obj + " is not a valid parameter type.");
        }
        return false;
    }

    private final boolean shouldApplyUpdate(boolean z) {
        if (!z || this.dirty) {
            return false;
        }
        this.dirty = true;
        return true;
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public void clear() {
        boolean zShouldApplyUpdate;
        synchronized (this.lock) {
            if (this.parameters.isEmpty()) {
                zShouldApplyUpdate = false;
            } else {
                this.parameters.clear();
                zShouldApplyUpdate = shouldApplyUpdate(true);
            }
        }
        if (zShouldApplyUpdate) {
            applyUpdate();
        }
    }

    public final void flush() {
        synchronized (this.lock) {
            if (this.dirty) {
                this.dirty = false;
                this.graphProcessor.updateGraphParameters(new HashMap(this.parameters));
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public <T> T get(CaptureRequest.Key<T> key) {
        T t;
        key.getClass();
        synchronized (this.lock) {
            t = (T) this.parameters.get(key);
        }
        return t;
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public <T> boolean remove(CaptureRequest.Key<T> key) {
        key.getClass();
        return removeAll(l1.f(key));
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public boolean removeAll(Set<?> set) {
        boolean z;
        boolean zShouldApplyUpdate;
        set.getClass();
        synchronized (this.lock) {
            try {
                z = false;
                for (Object obj : set) {
                    if (this.parameters.containsKey(obj)) {
                        v39.b(this.parameters).remove(obj);
                        z = true;
                    }
                    if (!(obj instanceof CaptureRequest.Key) && !(obj instanceof Metadata.Key) && Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Skipping removing parameter with key " + obj + ". " + obj + " is not a valid parameter type.");
                    }
                }
                zShouldApplyUpdate = shouldApplyUpdate(z);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zShouldApplyUpdate) {
            applyUpdate();
        }
        return z;
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public <T> void set(CaptureRequest.Key<T> key, T t) {
        key.getClass();
        Map<Object, ? extends Object> mapSingletonMap = Collections.singletonMap(key, t);
        mapSingletonMap.getClass();
        setAll(mapSingletonMap);
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public void setAll(Map<Object, ? extends Object> map) {
        boolean z;
        boolean zShouldApplyUpdate;
        map.getClass();
        synchronized (this.lock) {
            try {
                Iterator<Map.Entry<Object, ? extends Object>> it = map.entrySet().iterator();
                loop0: while (true) {
                    z = false;
                    while (true) {
                        if (!it.hasNext()) {
                            break loop0;
                        }
                        Map.Entry<Object, ? extends Object> next = it.next();
                        if (modify(this.parameters, next.getKey(), next.getValue()) || z) {
                            z = true;
                        }
                    }
                }
                zShouldApplyUpdate = shouldApplyUpdate(z);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zShouldApplyUpdate) {
            applyUpdate();
        }
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public <T> boolean remove(Metadata.Key<T> key) {
        key.getClass();
        return removeAll(l1.f(key));
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public <T> void set(Metadata.Key<T> key, T t) {
        key.getClass();
        Map<Object, ? extends Object> mapSingletonMap = Collections.singletonMap(key, t);
        mapSingletonMap.getClass();
        setAll(mapSingletonMap);
    }

    @Override // androidx.camera.camera2.pipe.Parameters
    public <T> T get(Metadata.Key<T> key) {
        T t;
        key.getClass();
        synchronized (this.lock) {
            t = (T) this.parameters.get(key);
        }
        return t;
    }
}
