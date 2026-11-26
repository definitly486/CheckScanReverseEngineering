package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureResult;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface FrameMetadata extends Metadata, UnsafeWrapper {
    <T> T get(CaptureResult.Key<T> key);

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String mo461getCameraDz_R5H8();

    Map<?, Object> getExtraMetadata();

    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name */
    long mo462getFrameNumberUgla2oM();

    <T> T getOrDefault(CaptureResult.Key<T> key, T t);
}
