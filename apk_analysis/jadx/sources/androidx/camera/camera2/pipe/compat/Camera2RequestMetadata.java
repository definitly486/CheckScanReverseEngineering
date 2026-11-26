package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import defpackage.ah;
import defpackage.jh2;
import defpackage.ne4;
import defpackage.qz0;
import defpackage.vh;
import defpackage.x07;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2RequestMetadata implements RequestMetadata {
    private final CameraCaptureSessionWrapper cameraCaptureSessionWrapper;
    private final CaptureRequest captureRequest;
    private final Map<?, Object> defaultParameters;
    private final Map<?, Object> graphParameters;
    private final boolean repeating;
    private final Request request;
    private final long requestNumber;
    private final Map<?, Object> requiredParameters;
    private final Map<StreamId, Surface> streams;
    private final int template;

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2RequestMetadata(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, CaptureRequest captureRequest, Map<?, ? extends Object> map, Map<?, ? extends Object> map2, Map<?, ? extends Object> map3, Map<StreamId, ? extends Surface> map4, int i, boolean z, Request request, long j) {
        cameraCaptureSessionWrapper.getClass();
        captureRequest.getClass();
        map.getClass();
        map2.getClass();
        map3.getClass();
        map4.getClass();
        request.getClass();
        this.cameraCaptureSessionWrapper = cameraCaptureSessionWrapper;
        this.captureRequest = captureRequest;
        this.defaultParameters = map;
        this.graphParameters = map2;
        this.requiredParameters = map3;
        this.streams = map4;
        this.template = i;
        this.repeating = z;
        this.request = request;
        this.requestNumber = j;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T get(Metadata.Key<T> key) {
        key.getClass();
        if (this.requiredParameters.containsKey(key)) {
            return (T) this.requiredParameters.get(key);
        }
        if (getRequest().getExtras().containsKey(key)) {
            return (T) getRequest().getExtras().get(key);
        }
        return this.graphParameters.containsKey(key) ? (T) this.graphParameters.get(key) : (T) this.defaultParameters.get(key);
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public <T> T getOrDefault(CaptureRequest.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public boolean getRepeating() {
        return this.repeating;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public Request getRequest() {
        return this.request;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    /* JADX INFO: renamed from: getRequestNumber-my6kx4g */
    public long mo62getRequestNumbermy6kx4g() {
        return this.requestNumber;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public Map<StreamId, Surface> getStreams() {
        return this.streams;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    /* JADX INFO: renamed from: getTemplate-fGx8uWA */
    public int mo63getTemplatefGx8uWA() {
        return this.template;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, CaptureRequest.class)) {
            T t = (T) this.captureRequest;
            t.getClass();
            return t;
        }
        if (ne4Var.equals(x07.a(CameraCaptureSession.class))) {
            T t2 = (T) this.cameraCaptureSessionWrapper.unwrapAs(x07.a(CameraCaptureSession.class));
            if (t2 != null) {
                return t2;
            }
        } else {
            Class clsC = qz0.c();
            if (ne4Var.equals(x07.a(clsC))) {
                if (Build.VERSION.SDK_INT >= 31) {
                    T t3 = (T) this.cameraCaptureSessionWrapper.unwrapAs(x07.a(clsC));
                    if (t3 != null) {
                        return t3;
                    }
                } else {
                    ah.f("Check failed.");
                }
            }
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T getOrDefault(Metadata.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    public /* synthetic */ Camera2RequestMetadata(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, CaptureRequest captureRequest, Map map, Map map2, Map map3, Map map4, int i, boolean z, Request request, long j, jh2 jh2Var) {
        this(cameraCaptureSessionWrapper, captureRequest, map, map2, map3, map4, i, z, request, j);
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public <T> T get(CaptureRequest.Key<T> key) {
        key.getClass();
        return (T) this.captureRequest.get(key);
    }
}
