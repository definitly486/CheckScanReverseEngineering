package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ra8;
import defpackage.u96;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ExtraSupportedSurfaceCombinationsQuirk implements Quirk {
    public static final Companion Companion;
    private static final SurfaceCombination FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION;
    private static final SurfaceCombination FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION;
    private static final SurfaceCombination LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION;
    private static final Set<String> SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS;
    private static final Set<String> SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS;
    private static final String TAG = "ExtraSupportedSurfaceCombinationsQuirk";

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION = companion.createFullYuvPrivYuvConfiguration$camera_camera2();
        FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION = companion.createFullYuvYuvYuvConfiguration$camera_camera2();
        LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION = companion.createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2();
        SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS = yr.k0(new String[]{"PIXEL 6", "PIXEL 6 PRO", "PIXEL 7", "PIXEL 7 PRO", "PIXEL 8", "PIXEL 8 PRO", "PIXEL 9", "PIXEL 9 PRO", "PIXEL 9 PRO XL", "PIXEL 9 PRO FOLD"});
        SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS = yr.k0(new String[]{"SM-S921", "SC-51E", "SCG25", "SM-S926", "SM-S928", "SC-52E", "SCG26", "SM-S931", "SM-S936", "SM-S937", "SM-S938", "SCG31", "SCG32", "SC-51F", "SC-52F"});
    }

    private final List<SurfaceCombination> getLimitedDeviceExtraSupportedFullConfigurations(int i) {
        ArrayList arrayList = new ArrayList();
        if (i == 0) {
            arrayList.add(FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION);
            arrayList.add(FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION);
        }
        return arrayList;
    }

    private final List<SurfaceCombination> getSamsungS7ExtraCombinations(String str) {
        ArrayList arrayList = new ArrayList();
        if (aa4.e(str, "1")) {
            arrayList.add(FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION);
        }
        return arrayList;
    }

    public final List<SurfaceCombination> getExtraSupportedSurfaceCombinations(String str) {
        str.getClass();
        Companion companion = Companion;
        if (companion.isSamsungS7$camera_camera2()) {
            return getSamsungS7ExtraCombinations(str);
        }
        return (companion.supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() || companion.supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2()) ? u96.h(LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION) : kx2.b;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SurfaceCombination createFullYuvPrivYuvConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }

        public final SurfaceCombination createFullYuvYuvYuvConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }

        public final SurfaceCombination createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.YUV, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }

        public final boolean isEnabled() {
            return isSamsungS7$camera_camera2() || supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() || supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2();
        }

        public final boolean isSamsungS7$camera_camera2() {
            String str = Build.DEVICE;
            return "heroqltevzw".equalsIgnoreCase(str) || "heroqltetmo".equalsIgnoreCase(str);
        }

        public final boolean supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() {
            if (!Device.INSTANCE.isGoogleDevice()) {
                return false;
            }
            String str = Build.MODEL;
            str.getClass();
            String upperCase = str.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return ExtraSupportedSurfaceCombinationsQuirk.SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS.contains(upperCase);
        }

        public final boolean supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2() {
            if (Device.INSTANCE.isSamsungDevice()) {
                String str = Build.MODEL;
                str.getClass();
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                Iterator it = ExtraSupportedSurfaceCombinationsQuirk.SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS.iterator();
                while (it.hasNext()) {
                    if (ra8.C(upperCase, (String) it.next(), false)) {
                        return true;
                    }
                }
            }
            return false;
        }

        private Companion() {
        }
    }
}
