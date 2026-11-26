package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface RequestMetadata extends Metadata, UnsafeWrapper {
    <T> T get(CaptureRequest.Key<T> key);

    <T> T getOrDefault(CaptureRequest.Key<T> key, T t);

    boolean getRepeating();

    Request getRequest();

    /* JADX INFO: renamed from: getRequestNumber-my6kx4g */
    long mo62getRequestNumbermy6kx4g();

    Map<StreamId, Surface> getStreams();

    /* JADX INFO: renamed from: getTemplate-fGx8uWA */
    int mo63getTemplatefGx8uWA();
}
