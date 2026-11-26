package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ta8;
import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class ExcludedSupportedSizesQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "ExcludedSupportedSizesQuirk";
    private static final int UNKNOWN_IMAGE_FORMAT = -1;

    private final List<Size> getHuaweiP20LiteExcludedSizes(String str, int i, Class<?> cls) {
        return (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER) && (i == 34 || i == 35 || cls != null)) ? u96.i(new Size(720, 720), new Size(400, 400)) : kx2.b;
    }

    private final List<Size> getNokia7PlusExcludedSizes(int i) {
        return i == 35 ? u96.i(new Size(4032, 3024), new Size(MapTrimmers.DEFAULT_VALUE_MAX_LENGTH, 3000), new Size(3264, 2448), new Size(3200, 2400), new Size(3024, 3024), new Size(2976, 2976), new Size(2448, 2448)) : kx2.b;
    }

    private final List<Size> getOnePlus6ExcludedSizes(String str, int i) {
        return (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER) && i == 256) ? u96.i(new Size(4160, 3120), new Size(MapTrimmers.DEFAULT_VALUE_MAX_LENGTH, 3000)) : kx2.b;
    }

    private final List<Size> getOnePlus6TExcludedSizes(String str, int i) {
        return (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER) && i == 256) ? u96.i(new Size(4160, 3120), new Size(MapTrimmers.DEFAULT_VALUE_MAX_LENGTH, 3000)) : kx2.b;
    }

    private final List<Size> getRedmiNote9ProExcludedSizes(String str, int i) {
        return (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER) && i == 256) ? u96.h(new Size(9280, 6944)) : kx2.b;
    }

    private final List<Size> getSamsungA05sExcludedSizes(int i) {
        return i == 35 ? u96.i(new Size(3840, 2160), new Size(3264, 2448), new Size(3200, 2400), new Size(2688, 1512), new Size(2592, 1944), new Size(2592, 1940), new Size(1920, 1440)) : kx2.b;
    }

    private final List<Size> getSamsungJ7Api27AboveExcludedSizes(String str, int i, Class<?> cls) {
        if (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER)) {
            if (i == 34 || cls != null) {
                return u96.i(new Size(4128, 3096), new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080));
            }
            if (i == 35) {
                return u96.i(new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080));
            }
        } else if (aa4.e(str, "1") && (i == 34 || i == 35 || cls != null)) {
            return u96.i(new Size(2576, 1932), new Size(2560, 1440), new Size(1920, 1920), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080));
        }
        return kx2.b;
    }

    private final List<Size> getSamsungJ7PrimeApi27AboveExcludedSizes(String str, int i, Class<?> cls) {
        if (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER)) {
            if (i == 34 || cls != null) {
                return u96.i(new Size(4128, 3096), new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080));
            }
            if (i == 35) {
                return u96.i(new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080));
            }
        } else if (aa4.e(str, "1") && (i == 34 || i == 35 || cls != null)) {
            return u96.i(new Size(3264, 2448), new Size(3264, 1836), new Size(2448, 2448), new Size(1920, 1920), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080));
        }
        return kx2.b;
    }

    private final List<Size> getSamsungZFold4ExcludedSizes(String str, int i) {
        return (aa4.e(str, "1") && i == 35) ? u96.i(new Size(1280, 720), new Size(1920, 1080), new Size(2304, 1296), new Size(640, 360), new Size(177, 144), new Size(2336, 1080), new Size(2400, 1080), new Size(1920, 824), new Size(1088, 1088), new Size(1728, 1728), new Size(2736, 2736), new Size(1824, 712)) : kx2.b;
    }

    public final List<Size> getExcludedSizes(String str, int i) {
        str.getClass();
        Companion companion = Companion;
        if (companion.isOnePlus6$camera_camera2()) {
            return getOnePlus6ExcludedSizes(str, i);
        }
        if (companion.isOnePlus6T$camera_camera2()) {
            return getOnePlus6TExcludedSizes(str, i);
        }
        if (companion.isHuaweiP20Lite$camera_camera2()) {
            return getHuaweiP20LiteExcludedSizes(str, i, null);
        }
        if (companion.isSamsungJ7PrimeApi27Above$camera_camera2()) {
            return getSamsungJ7PrimeApi27AboveExcludedSizes(str, i, null);
        }
        if (companion.isSamsungJ7Api27Above$camera_camera2()) {
            return getSamsungJ7Api27AboveExcludedSizes(str, i, null);
        }
        if (companion.isRedmiNote9Pro$camera_camera2()) {
            return getRedmiNote9ProExcludedSizes(str, i);
        }
        if (companion.isSamsungA05s$camera_camera2()) {
            return getSamsungA05sExcludedSizes(i);
        }
        if (companion.isNokia7Plus$camera_camera2()) {
            return getNokia7PlusExcludedSizes(i);
        }
        if (companion.isSamsungZFold4$camera_camera2()) {
            return getSamsungZFold4ExcludedSizes(str, i);
        }
        Logger.w(TAG, "Cannot retrieve list of supported sizes to exclude on this device.");
        return kx2.b;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return isOnePlus6$camera_camera2() || isOnePlus6T$camera_camera2() || isHuaweiP20Lite$camera_camera2() || isSamsungJ7PrimeApi27Above$camera_camera2() || isSamsungJ7Api27Above$camera_camera2() || isRedmiNote9Pro$camera_camera2() || isSamsungA05s$camera_camera2() || isNokia7Plus$camera_camera2() || isSamsungZFold4$camera_camera2();
        }

        public final boolean isHuaweiP20Lite$camera_camera2() {
            return Device.INSTANCE.isHuaweiDevice() && "HWANE".equalsIgnoreCase(Build.DEVICE);
        }

        public final boolean isNokia7Plus$camera_camera2() {
            if (!Device.INSTANCE.isNokiaDevice()) {
                return false;
            }
            String str = Build.DEVICE;
            return "B2N".equalsIgnoreCase(str) || "B2N_sprout".equalsIgnoreCase(str);
        }

        public final boolean isOnePlus6$camera_camera2() {
            return Device.INSTANCE.isOnePlusDevice() && "OnePlus6".equalsIgnoreCase(Build.DEVICE);
        }

        public final boolean isOnePlus6T$camera_camera2() {
            return Device.INSTANCE.isOnePlusDevice() && "OnePlus6T".equalsIgnoreCase(Build.DEVICE);
        }

        public final boolean isRedmiNote9Pro$camera_camera2() {
            return Device.INSTANCE.isRedmiDevice() && "joyeuse".equalsIgnoreCase(Build.DEVICE);
        }

        public final boolean isSamsungA05s$camera_camera2() {
            if (Device.INSTANCE.isSamsungDevice() && "a05s".equalsIgnoreCase(Build.DEVICE)) {
                String str = Build.MODEL;
                str.getClass();
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                if (ta8.D(upperCase, "SM-A057", false)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isSamsungJ7Api27Above$camera_camera2() {
            return Device.INSTANCE.isSamsungDevice() && "J7XELTE".equalsIgnoreCase(Build.DEVICE) && Build.VERSION.SDK_INT >= 27;
        }

        public final boolean isSamsungJ7PrimeApi27Above$camera_camera2() {
            return Device.INSTANCE.isSamsungDevice() && "ON7XELTE".equalsIgnoreCase(Build.DEVICE) && Build.VERSION.SDK_INT >= 27;
        }

        public final boolean isSamsungZFold4$camera_camera2() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String str = Build.DEVICE;
            return "q4q".equalsIgnoreCase(str) || "SCG16".equalsIgnoreCase(str) || "SC-55C".equalsIgnoreCase(str);
        }

        private Companion() {
        }
    }

    public final List<Size> getExcludedSizes(String str, Class<?> cls) {
        str.getClass();
        cls.getClass();
        Companion companion = Companion;
        if (companion.isHuaweiP20Lite$camera_camera2()) {
            return getHuaweiP20LiteExcludedSizes(str, -1, cls);
        }
        if (companion.isSamsungJ7PrimeApi27Above$camera_camera2()) {
            return getSamsungJ7PrimeApi27AboveExcludedSizes(str, -1, cls);
        }
        if (companion.isSamsungJ7Api27Above$camera_camera2()) {
            return getSamsungJ7Api27AboveExcludedSizes(str, -1, cls);
        }
        Logger.w(TAG, "Cannot retrieve list of supported sizes to exclude on this device.");
        return kx2.b;
    }
}
