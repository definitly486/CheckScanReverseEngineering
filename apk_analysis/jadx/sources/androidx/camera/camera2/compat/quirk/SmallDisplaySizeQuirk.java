package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.b36;
import defpackage.jh2;
import defpackage.n05;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SmallDisplaySizeQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Map<String, Size> MODEL_TO_DISPLAY_SIZE_MAP = n05.e(new b36("REDMI NOTE 8", new Size(1080, 2340)), new b36("REDMI NOTE 7", new Size(1080, 2340)), new b36("SM-A207M", new Size(720, 1560)), new b36("REDMI NOTE 7S", new Size(1080, 2340)), new b36("SM-A127F", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("SM-A536E", new Size(1080, 2400)), new b36("220233L2I", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("V2149", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("VIVO 1920", new Size(1080, 2340)), new b36("CPH2223", new Size(1080, 2400)), new b36("V2029", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("CPH1901", new Size(720, 1520)), new b36("REDMI Y3", new Size(720, 1520)), new b36("SM-A045M", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("SM-A146U", new Size(1080, 2408)), new b36("CPH1909", new Size(720, 1520)), new b36("NOKIA 4.2", new Size(720, 1520)), new b36("SM-G960U1", new Size(1440, 2960)), new b36("SM-A137F", new Size(1080, 2408)), new b36("VIVO 1816", new Size(720, 1520)), new b36("INFINIX X6817", new Size(720, 1612)), new b36("SM-A037F", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("NOKIA 2.4", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("SM-A125M", new Size(720, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), new b36("INFINIX X670", new Size(1080, 2400)));

    public final Size getDisplaySize() {
        Map<String, Size> map = MODEL_TO_DISPLAY_SIZE_MAP;
        String str = Build.MODEL;
        str.getClass();
        String upperCase = str.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        Size size = map.get(upperCase);
        size.getClass();
        return size;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean load() {
            Map map = SmallDisplaySizeQuirk.MODEL_TO_DISPLAY_SIZE_MAP;
            String str = Build.MODEL;
            str.getClass();
            String upperCase = str.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return map.containsKey(upperCase);
        }

        private Companion() {
        }
    }
}
