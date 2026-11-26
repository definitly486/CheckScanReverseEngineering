package androidx.camera.camera2.compat;

import android.hardware.camera2.CaptureRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Api35Compat {
    public static final Api35Compat INSTANCE = new Api35Compat();

    private Api35Compat() {
    }

    public static final void setFlashStrengthLevel(Map<CaptureRequest.Key<?>, Object> map, int i) {
        map.getClass();
        map.put(CaptureRequest.FLASH_STRENGTH_LEVEL, Integer.valueOf(i));
    }
}
