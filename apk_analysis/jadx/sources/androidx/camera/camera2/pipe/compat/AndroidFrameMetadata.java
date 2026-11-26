package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.Metadata;
import defpackage.jh2;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.vh;
import defpackage.x07;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidFrameMetadata implements FrameMetadata {
    private final String camera;
    private final CaptureResult captureResult;
    private final Map<?, Object> extraMetadata;

    private AndroidFrameMetadata(CaptureResult captureResult, String str) {
        captureResult.getClass();
        str.getClass();
        this.captureResult = captureResult;
        this.camera = str;
        this.extraMetadata = mx2.b;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public <T> T get(CaptureResult.Key<T> key) {
        key.getClass();
        T t = (T) getExtraMetadata().get(key);
        return t == null ? (T) this.captureResult.get(key) : t;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    public String mo461getCameraDz_R5H8() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public Map<?, Object> getExtraMetadata() {
        return this.extraMetadata;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo462getFrameNumberUgla2oM() {
        return FrameNumber.m464constructorimpl(this.captureResult.getFrameNumber());
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public <T> T getOrDefault(CaptureResult.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    public String toString() {
        return "FrameMetadata(camera: " + ((Object) CameraId.m357toStringimpl(mo461getCameraDz_R5H8())) + ", frameNumber: " + this.captureResult.getFrameNumber() + ')';
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        T t;
        if (vh.g(ne4Var, CaptureResult.class)) {
            T t2 = (T) this.captureResult;
            t2.getClass();
            return t2;
        }
        if (!ne4Var.equals(x07.a(TotalCaptureResult.class)) || (t = (T) this.captureResult) == null) {
            return null;
        }
        return t;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T getOrDefault(Metadata.Key<T> key, T t) {
        key.getClass();
        return t;
    }

    public /* synthetic */ AndroidFrameMetadata(CaptureResult captureResult, String str, jh2 jh2Var) {
        this(captureResult, str);
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T get(Metadata.Key<T> key) {
        key.getClass();
        return null;
    }
}
