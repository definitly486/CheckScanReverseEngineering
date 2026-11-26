package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ImageCapturePixelHDRPlusQuirk;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.impl.ImageCaptureConfig;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCapturePixelHDRPlusKt {
    public static final void toggleHDRPlus(Camera2ImplConfig.Builder builder, ImageCaptureConfig imageCaptureConfig) {
        builder.getClass();
        imageCaptureConfig.getClass();
        if (((ImageCapturePixelHDRPlusQuirk) DeviceQuirks.INSTANCE.get(ImageCapturePixelHDRPlusQuirk.class)) != null && imageCaptureConfig.hasCaptureMode()) {
            int captureMode = imageCaptureConfig.getCaptureMode();
            if (captureMode == 0) {
                CaptureRequest.Key key = CaptureRequest.CONTROL_ENABLE_ZSL;
                key.getClass();
                builder.setCaptureRequestOption(key, Boolean.TRUE);
            } else {
                if (captureMode != 1) {
                    return;
                }
                CaptureRequest.Key key2 = CaptureRequest.CONTROL_ENABLE_ZSL;
                key2.getClass();
                builder.setCaptureRequestOption(key2, Boolean.FALSE);
            }
        }
    }
}
