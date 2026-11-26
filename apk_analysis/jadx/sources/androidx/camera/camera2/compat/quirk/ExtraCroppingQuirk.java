package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceConfig;
import defpackage.b36;
import defpackage.jh2;
import defpackage.n05;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ExtraCroppingQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Map<String, Range<Integer>> SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP = n05.f(new b36("SM-T580", null), new b36("SM-J710MN", new Range(21, 26)), new b36("SM-A320FL", null), new b36("SM-G570M", null), new b36("SM-G610F", null), new b36("SM-G610M", new Range(21, 26)));

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SurfaceConfig.ConfigType.values().length];
            try {
                iArr[SurfaceConfig.ConfigType.PRIV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SurfaceConfig.ConfigType.YUV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SurfaceConfig.ConfigType.JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final Size getVerifiedResolution(SurfaceConfig.ConfigType configType) {
        configType.getClass();
        if (!Companion.isSamsungDistortion$camera_camera2()) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[configType.ordinal()];
        if (i == 1) {
            return new Size(1920, 1080);
        }
        if (i == 2) {
            return new Size(1280, 720);
        }
        if (i != 3) {
            return null;
        }
        return new Size(3264, 1836);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return isSamsungDistortion$camera_camera2();
        }

        public final boolean isSamsungDistortion$camera_camera2() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            Map map = ExtraCroppingQuirk.SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;
            String str = Build.MODEL;
            str.getClass();
            Locale locale = Locale.ROOT;
            String upperCase = str.toUpperCase(locale);
            upperCase.getClass();
            if (!map.containsKey(upperCase)) {
                return false;
            }
            Map map2 = ExtraCroppingQuirk.SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;
            str.getClass();
            String upperCase2 = str.toUpperCase(locale);
            upperCase2.getClass();
            Range range = (Range) map2.get(upperCase2);
            if (range != null) {
                return range.contains(Integer.valueOf(Build.VERSION.SDK_INT));
            }
            return true;
        }

        private Companion() {
        }
    }
}
