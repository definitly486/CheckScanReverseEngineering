package androidx.camera.camera2.interop;

import android.hardware.camera2.CaptureRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Camera2CaptureRequestConfigurator {
    void configureWith(Map<CaptureRequest.Key<?>, ? extends Object> map);
}
