package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.PreviewPixelHDRnetQuirk;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.impl.SessionConfig;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewPixelHDRnetKt {
    private static final Rational ASPECT_RATIO_16_9 = new Rational(16, 9);

    private static final boolean isAspectRatioMatch(Size size, Rational rational) {
        return aa4.e(rational, new Rational(size.getWidth(), size.getHeight()));
    }

    public static final void setupHDRnet(SessionConfig.Builder builder, Size size) {
        builder.getClass();
        size.getClass();
        if (((PreviewPixelHDRnetQuirk) DeviceQuirks.INSTANCE.get(PreviewPixelHDRnetQuirk.class)) == null || isAspectRatioMatch(size, ASPECT_RATIO_16_9)) {
            return;
        }
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        CaptureRequest.Key key = CaptureRequest.TONEMAP_MODE;
        key.getClass();
        builder2.setCaptureRequestOption(key, 2);
        builder.addImplementationOptions(builder2.build());
    }
}
