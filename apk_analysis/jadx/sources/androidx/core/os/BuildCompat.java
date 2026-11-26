package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.PlaybackException;
import defpackage.ul2;
import defpackage.xu0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class BuildCompat {
    public static final int AD_SERVICES_EXTENSION_INT;
    public static final BuildCompat INSTANCE = new BuildCompat();
    public static final int R_EXTENSION_INT;
    public static final int S_EXTENSION_INT;
    public static final int T_EXTENSION_INT;

    public static final class Api30Impl {
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        public final int getExtensionVersion(int i) {
            return SdkExtensions.getExtensionVersion(i);
        }
    }

    @Retention(RetentionPolicy.CLASS)
    public @interface PrereleaseSdkCheck {
    }

    static {
        int i = Build.VERSION.SDK_INT;
        R_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(30) : 0;
        S_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(31) : 0;
        T_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(33) : 0;
        AD_SERVICES_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(PlaybackException.CUSTOM_ERROR_CODE_BASE) : 0;
    }

    private BuildCompat() {
    }

    public static final boolean isAtLeastB() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 36) {
            return true;
        }
        if (i < 35) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        str.getClass();
        return isAtLeastPreReleaseCodename("Baklava", str);
    }

    public static final boolean isAtLeastB_1() {
        return Build.VERSION.SDK_INT >= 36 && xu0.a() >= 3600001;
    }

    @ul2
    public static final boolean isAtLeastN() {
        return true;
    }

    @ul2
    public static final boolean isAtLeastNMR1() {
        return true;
    }

    @ul2
    public static final boolean isAtLeastO() {
        return true;
    }

    @ul2
    public static final boolean isAtLeastOMR1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    @ul2
    public static final boolean isAtLeastP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static final boolean isAtLeastPreReleaseCodename(String str, String str2) {
        str.getClass();
        str2.getClass();
        if ("REL".equals(str2)) {
            return false;
        }
        Integer numIsAtLeastPreReleaseCodename$codenameToInt = isAtLeastPreReleaseCodename$codenameToInt(str2);
        Integer numIsAtLeastPreReleaseCodename$codenameToInt2 = isAtLeastPreReleaseCodename$codenameToInt(str);
        if (numIsAtLeastPreReleaseCodename$codenameToInt != null && numIsAtLeastPreReleaseCodename$codenameToInt2 != null) {
            return numIsAtLeastPreReleaseCodename$codenameToInt.intValue() >= numIsAtLeastPreReleaseCodename$codenameToInt2.intValue();
        }
        if (numIsAtLeastPreReleaseCodename$codenameToInt != null || numIsAtLeastPreReleaseCodename$codenameToInt2 != null) {
            return numIsAtLeastPreReleaseCodename$codenameToInt != null;
        }
        Locale locale = Locale.ROOT;
        String upperCase = str2.toUpperCase(locale);
        upperCase.getClass();
        String upperCase2 = str.toUpperCase(locale);
        upperCase2.getClass();
        return upperCase.compareTo(upperCase2) >= 0;
    }

    private static final Integer isAtLeastPreReleaseCodename$codenameToInt(String str) {
        String upperCase = str.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        return upperCase.equals("BAKLAVA") ? 0 : null;
    }

    @ul2
    public static final boolean isAtLeastQ() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @ul2
    public static final boolean isAtLeastR() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @ul2
    public static final boolean isAtLeastS() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            return true;
        }
        if (i < 30) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        str.getClass();
        return isAtLeastPreReleaseCodename(ExifInterface.LATITUDE_SOUTH, str);
    }

    @ul2
    public static final boolean isAtLeastSv2() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 32) {
            return true;
        }
        if (i < 31) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        str.getClass();
        return isAtLeastPreReleaseCodename("Sv2", str);
    }

    @ul2
    public static final boolean isAtLeastT() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            return true;
        }
        if (i < 32) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        str.getClass();
        return isAtLeastPreReleaseCodename("Tiramisu", str);
    }

    @ul2
    public static final boolean isAtLeastU() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            return true;
        }
        if (i < 33) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        str.getClass();
        return isAtLeastPreReleaseCodename("UpsideDownCake", str);
    }

    @ul2
    public static final boolean isAtLeastV() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            return true;
        }
        if (i < 34) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        str.getClass();
        return isAtLeastPreReleaseCodename("VanillaIceCream", str);
    }
}
