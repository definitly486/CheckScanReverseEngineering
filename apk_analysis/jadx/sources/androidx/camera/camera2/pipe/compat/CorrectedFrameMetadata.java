package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Metadata;
import defpackage.ne4;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CorrectedFrameMetadata implements FrameMetadata {
    private Map<?, ? extends Object> extraMetadata;
    private FrameMetadata frameMetadata;

    public CorrectedFrameMetadata(FrameMetadata frameMetadata, Map<?, ? extends Object> map) {
        frameMetadata.getClass();
        map.getClass();
        this.frameMetadata = frameMetadata;
        this.extraMetadata = map;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T get(Metadata.Key<T> key) {
        key.getClass();
        T t = (T) getExtraMetadata().get(key);
        return t == null ? (T) this.frameMetadata.get(key) : t;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    public String mo461getCameraDz_R5H8() {
        return this.frameMetadata.mo461getCameraDz_R5H8();
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public Map<?, Object> getExtraMetadata() {
        return this.extraMetadata;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo462getFrameNumberUgla2oM() {
        return this.frameMetadata.mo462getFrameNumberUgla2oM();
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T getOrDefault(Metadata.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    public void setExtraMetadata(Map<?, ? extends Object> map) {
        map.getClass();
        this.extraMetadata = map;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        ne4Var.getClass();
        return (T) this.frameMetadata.unwrapAs(ne4Var);
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public <T> T getOrDefault(CaptureResult.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public <T> T get(CaptureResult.Key<T> key) {
        key.getClass();
        T t = (T) getExtraMetadata().get(key);
        return t == null ? (T) this.frameMetadata.get(key) : t;
    }
}
