package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.xp;
import defpackage.yr;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class FlashAvailabilityBufferUnderflowQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Set<DeviceInfo> KNOWN_AFFECTED_MODELS;

    static {
        DeviceInfo.Companion companion = DeviceInfo.Companion;
        KNOWN_AFFECTED_MODELS = yr.k0(new DeviceInfo[]{companion.invoke("sprd", "lemp"), companion.invoke("sprd", "DM20C")});
    }

    public static final class DeviceInfo {
        public static final Companion Companion = new Companion(null);
        private final String manufacturer;
        private final String model;

        private DeviceInfo(String str, String str2) {
            this.manufacturer = str;
            this.model = str2;
        }

        public static /* synthetic */ DeviceInfo copy$default(DeviceInfo deviceInfo, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = deviceInfo.manufacturer;
            }
            if ((i & 2) != 0) {
                str2 = deviceInfo.model;
            }
            return deviceInfo.copy(str, str2);
        }

        public final String component1() {
            return this.manufacturer;
        }

        public final String component2() {
            return this.model;
        }

        public final DeviceInfo copy(String str, String str2) {
            str.getClass();
            str2.getClass();
            return new DeviceInfo(str, str2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DeviceInfo)) {
                return false;
            }
            DeviceInfo deviceInfo = (DeviceInfo) obj;
            return aa4.e(this.manufacturer, deviceInfo.manufacturer) && aa4.e(this.model, deviceInfo.model);
        }

        public final String getManufacturer() {
            return this.manufacturer;
        }

        public final String getModel() {
            return this.model;
        }

        public int hashCode() {
            return this.model.hashCode() + (this.manufacturer.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("DeviceInfo(manufacturer=");
            sb.append(this.manufacturer);
            sb.append(", model=");
            return xp.e(sb, this.model, ')');
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final DeviceInfo invoke(String str, String str2) {
                str.getClass();
                str2.getClass();
                Locale locale = Locale.US;
                locale.getClass();
                String lowerCase = str.toLowerCase(locale);
                lowerCase.getClass();
                locale.getClass();
                String lowerCase2 = str2.toLowerCase(locale);
                lowerCase2.getClass();
                return new DeviceInfo(lowerCase, lowerCase2, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ DeviceInfo(String str, String str2, jh2 jh2Var) {
            this(str, str2);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            Set set = FlashAvailabilityBufferUnderflowQuirk.KNOWN_AFFECTED_MODELS;
            DeviceInfo.Companion companion = DeviceInfo.Companion;
            String str = Build.MANUFACTURER;
            str.getClass();
            String str2 = Build.MODEL;
            str2.getClass();
            return set.contains(companion.invoke(str, str2));
        }

        private Companion() {
        }
    }
}
