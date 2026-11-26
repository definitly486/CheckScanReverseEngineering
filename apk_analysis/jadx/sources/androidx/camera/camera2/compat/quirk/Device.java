package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import defpackage.ra8;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class Device {
    public static final Device INSTANCE = new Device();

    private Device() {
    }

    private final boolean equalsCaseInsensitive(String str, String str2) {
        return ra8.v(str, str2, true);
    }

    private final boolean isDeviceFrom(String str) {
        String str2 = Build.MANUFACTURER;
        str2.getClass();
        if (equalsCaseInsensitive(str2, str)) {
            return true;
        }
        String str3 = Build.BRAND;
        str3.getClass();
        return equalsCaseInsensitive(str3, str);
    }

    public final boolean isBluDevice() {
        return isDeviceFrom("Blu");
    }

    public final boolean isGoogleDevice() {
        return isDeviceFrom("Google");
    }

    public final boolean isHuaweiDevice() {
        return isDeviceFrom("Huawei");
    }

    public final boolean isInfinixDevice() {
        return isDeviceFrom("Infinix");
    }

    public final boolean isItelDevice() {
        return isDeviceFrom("Itel");
    }

    public final boolean isJioDevice() {
        return isDeviceFrom("Jio");
    }

    public final boolean isMotorolaDevice() {
        return isDeviceFrom("Motorola");
    }

    public final boolean isNokiaDevice() {
        return isDeviceFrom("Nokia");
    }

    public final boolean isOnePlusDevice() {
        return isDeviceFrom("OnePlus");
    }

    public final boolean isOppoDevice() {
        return isDeviceFrom("Oppo");
    }

    public final boolean isPocoDevice() {
        return isDeviceFrom("Poco");
    }

    public final boolean isPositivoDevice() {
        return isDeviceFrom("Positivo");
    }

    public final boolean isRealmeDevice() {
        return isDeviceFrom("Realme");
    }

    public final boolean isRedmiDevice() {
        return isDeviceFrom("Redmi");
    }

    public final boolean isSamsungDevice() {
        return isDeviceFrom("Samsung");
    }

    public final boolean isSonyDevice() {
        return isDeviceFrom("Sony");
    }

    public final boolean isTecnoDevice() {
        return isDeviceFrom("Tecno") || isDeviceFrom("Tecno-mobile");
    }

    public final boolean isUniSocChipsetDevice() {
        if (Build.VERSION.SDK_INT >= 31 && "Spreadtrum".equalsIgnoreCase(Build.SOC_MANUFACTURER)) {
            return true;
        }
        String str = Build.HARDWARE;
        str.getClass();
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        lowerCase.getClass();
        if (ra8.C(lowerCase, "ums", false)) {
            return true;
        }
        if (isItelDevice()) {
            String lowerCase2 = str.toLowerCase(locale);
            lowerCase2.getClass();
            if (ra8.C(lowerCase2, "sp", false)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isVivoDevice() {
        return isDeviceFrom("Vivo");
    }

    public final boolean isXiaomiDevice() {
        return isDeviceFrom("Xiaomi");
    }
}
