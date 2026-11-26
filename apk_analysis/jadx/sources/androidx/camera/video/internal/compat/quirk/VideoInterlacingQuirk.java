package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import defpackage.ra8;
import defpackage.u96;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class VideoInterlacingQuirk implements SurfaceProcessingQuirk {
    public static final VideoInterlacingQuirk INSTANCE = new VideoInterlacingQuirk();

    private VideoInterlacingQuirk() {
    }

    private final List<String> getDEVICE_MODELS() {
        return u96.h("SM-N9208");
    }

    private final boolean isSamsungS6() {
        if (!ra8.v(Build.BRAND, "Samsung", true)) {
            return false;
        }
        String str = Build.PRODUCT;
        str.getClass();
        return ra8.C(str, "zeroflte", true);
    }

    public static final boolean load() {
        VideoInterlacingQuirk videoInterlacingQuirk = INSTANCE;
        List<String> device_models = videoInterlacingQuirk.getDEVICE_MODELS();
        String str = Build.MODEL;
        str.getClass();
        Locale locale = Locale.getDefault();
        locale.getClass();
        String upperCase = str.toUpperCase(locale);
        upperCase.getClass();
        return device_models.contains(upperCase) || videoInterlacingQuirk.isSamsungS6();
    }
}
