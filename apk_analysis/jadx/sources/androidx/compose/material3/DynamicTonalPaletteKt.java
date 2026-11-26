package androidx.compose.material3;

import android.content.Context;
import android.os.Build;
import androidx.compose.material3.internal.colorUtil.Cam;
import androidx.compose.material3.internal.colorUtil.CamUtils;
import androidx.compose.ui.graphics.ColorKt;

/* JADX INFO: loaded from: classes2.dex */
public final class DynamicTonalPaletteKt {
    public static final ColorScheme dynamicDarkColorScheme(Context context) {
        return Build.VERSION.SDK_INT >= 34 ? dynamicDarkColorScheme34(context) : dynamicDarkColorScheme31(dynamicTonalPalette(context));
    }

    public static final ColorScheme dynamicDarkColorScheme31(TonalPalette tonalPalette) {
        long jM4214getPrimary800d7_KjU = tonalPalette.m4214getPrimary800d7_KjU();
        long jM4208getPrimary200d7_KjU = tonalPalette.m4208getPrimary200d7_KjU();
        long jM4209getPrimary300d7_KjU = tonalPalette.m4209getPrimary300d7_KjU();
        long jM4215getPrimary900d7_KjU = tonalPalette.m4215getPrimary900d7_KjU();
        long jM4210getPrimary400d7_KjU = tonalPalette.m4210getPrimary400d7_KjU();
        long jM4227getSecondary800d7_KjU = tonalPalette.m4227getSecondary800d7_KjU();
        long jM4221getSecondary200d7_KjU = tonalPalette.m4221getSecondary200d7_KjU();
        long jM4222getSecondary300d7_KjU = tonalPalette.m4222getSecondary300d7_KjU();
        long jM4228getSecondary900d7_KjU = tonalPalette.m4228getSecondary900d7_KjU();
        long jM4240getTertiary800d7_KjU = tonalPalette.m4240getTertiary800d7_KjU();
        long jM4234getTertiary200d7_KjU = tonalPalette.m4234getTertiary200d7_KjU();
        long jM4235getTertiary300d7_KjU = tonalPalette.m4235getTertiary300d7_KjU();
        long jM4241getTertiary900d7_KjU = tonalPalette.m4241getTertiary900d7_KjU();
        long jM4193getNeutralVariant60d7_KjU = tonalPalette.m4193getNeutralVariant60d7_KjU();
        long jM4198getNeutralVariant900d7_KjU = tonalPalette.m4198getNeutralVariant900d7_KjU();
        long jM4193getNeutralVariant60d7_KjU2 = tonalPalette.m4193getNeutralVariant60d7_KjU();
        long jM4198getNeutralVariant900d7_KjU2 = tonalPalette.m4198getNeutralVariant900d7_KjU();
        long jM4189getNeutralVariant300d7_KjU = tonalPalette.m4189getNeutralVariant300d7_KjU();
        long jM4196getNeutralVariant800d7_KjU = tonalPalette.m4196getNeutralVariant800d7_KjU();
        long jM4198getNeutralVariant900d7_KjU3 = tonalPalette.m4198getNeutralVariant900d7_KjU();
        long jM4186getNeutralVariant200d7_KjU = tonalPalette.m4186getNeutralVariant200d7_KjU();
        long jM4194getNeutralVariant600d7_KjU = tonalPalette.m4194getNeutralVariant600d7_KjU();
        long jM4189getNeutralVariant300d7_KjU2 = tonalPalette.m4189getNeutralVariant300d7_KjU();
        long jM4181getNeutralVariant00d7_KjU = tonalPalette.m4181getNeutralVariant00d7_KjU();
        long jM4188getNeutralVariant240d7_KjU = tonalPalette.m4188getNeutralVariant240d7_KjU();
        long jM4193getNeutralVariant60d7_KjU3 = tonalPalette.m4193getNeutralVariant60d7_KjU();
        return ColorSchemeKt.m3281darkColorScheme_VG5OTI$default(jM4214getPrimary800d7_KjU, jM4208getPrimary200d7_KjU, jM4209getPrimary300d7_KjU, jM4215getPrimary900d7_KjU, jM4210getPrimary400d7_KjU, jM4227getSecondary800d7_KjU, jM4221getSecondary200d7_KjU, jM4222getSecondary300d7_KjU, jM4228getSecondary900d7_KjU, jM4240getTertiary800d7_KjU, jM4234getTertiary200d7_KjU, jM4235getTertiary300d7_KjU, jM4241getTertiary900d7_KjU, jM4193getNeutralVariant60d7_KjU, jM4198getNeutralVariant900d7_KjU, jM4193getNeutralVariant60d7_KjU2, jM4198getNeutralVariant900d7_KjU2, jM4189getNeutralVariant300d7_KjU, jM4196getNeutralVariant800d7_KjU, tonalPalette.m4214getPrimary800d7_KjU(), jM4198getNeutralVariant900d7_KjU3, jM4186getNeutralVariant200d7_KjU, 0L, 0L, 0L, 0L, jM4194getNeutralVariant600d7_KjU, jM4189getNeutralVariant300d7_KjU2, jM4181getNeutralVariant00d7_KjU, jM4188getNeutralVariant240d7_KjU, tonalPalette.m4184getNeutralVariant120d7_KjU(), tonalPalette.m4185getNeutralVariant170d7_KjU(), tonalPalette.m4187getNeutralVariant220d7_KjU(), tonalPalette.m4182getNeutralVariant100d7_KjU(), tonalPalette.m4190getNeutralVariant40d7_KjU(), jM4193getNeutralVariant60d7_KjU3, tonalPalette.m4215getPrimary900d7_KjU(), tonalPalette.m4214getPrimary800d7_KjU(), tonalPalette.m4206getPrimary100d7_KjU(), tonalPalette.m4209getPrimary300d7_KjU(), tonalPalette.m4228getSecondary900d7_KjU(), tonalPalette.m4227getSecondary800d7_KjU(), tonalPalette.m4219getSecondary100d7_KjU(), tonalPalette.m4222getSecondary300d7_KjU(), tonalPalette.m4241getTertiary900d7_KjU(), tonalPalette.m4240getTertiary800d7_KjU(), tonalPalette.m4232getTertiary100d7_KjU(), tonalPalette.m4235getTertiary300d7_KjU(), 62914560, 0, null);
    }

    public static final ColorScheme dynamicDarkColorScheme34(Context context) {
        ColorResourceHelper colorResourceHelper = ColorResourceHelper.INSTANCE;
        long jM3218getColorWaAFU9c = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_dark);
        long jM3218getColorWaAFU9c2 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_dark);
        long jM3218getColorWaAFU9c3 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_container_dark);
        long jM3218getColorWaAFU9c4 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_container_dark);
        long jM3218getColorWaAFU9c5 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_light);
        long jM3218getColorWaAFU9c6 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_dark);
        long jM3218getColorWaAFU9c7 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_dark);
        long jM3218getColorWaAFU9c8 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_container_dark);
        long jM3218getColorWaAFU9c9 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_container_dark);
        long jM3218getColorWaAFU9c10 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_dark);
        long jM3218getColorWaAFU9c11 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_dark);
        long jM3218getColorWaAFU9c12 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_container_dark);
        long jM3218getColorWaAFU9c13 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_container_dark);
        long jM3218getColorWaAFU9c14 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_background_dark);
        long jM3218getColorWaAFU9c15 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_background_dark);
        long jM3218getColorWaAFU9c16 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_dark);
        long jM3218getColorWaAFU9c17 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_surface_dark);
        long jM3218getColorWaAFU9c18 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_variant_dark);
        long jM3218getColorWaAFU9c19 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_surface_variant_dark);
        long jM3218getColorWaAFU9c20 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_light);
        long jM3218getColorWaAFU9c21 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_surface_light);
        long jM3218getColorWaAFU9c22 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_outline_dark);
        long jM3218getColorWaAFU9c23 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_outline_variant_dark);
        long jM3218getColorWaAFU9c24 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_bright_dark);
        long jM3218getColorWaAFU9c25 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_dim_dark);
        return ColorSchemeKt.m3281darkColorScheme_VG5OTI$default(jM3218getColorWaAFU9c, jM3218getColorWaAFU9c2, jM3218getColorWaAFU9c3, jM3218getColorWaAFU9c4, jM3218getColorWaAFU9c5, jM3218getColorWaAFU9c6, jM3218getColorWaAFU9c7, jM3218getColorWaAFU9c8, jM3218getColorWaAFU9c9, jM3218getColorWaAFU9c10, jM3218getColorWaAFU9c11, jM3218getColorWaAFU9c12, jM3218getColorWaAFU9c13, jM3218getColorWaAFU9c14, jM3218getColorWaAFU9c15, jM3218getColorWaAFU9c16, jM3218getColorWaAFU9c17, jM3218getColorWaAFU9c18, jM3218getColorWaAFU9c19, colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_dark), jM3218getColorWaAFU9c20, jM3218getColorWaAFU9c21, 0L, 0L, 0L, 0L, jM3218getColorWaAFU9c22, jM3218getColorWaAFU9c23, 0L, jM3218getColorWaAFU9c24, colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_dark), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_high_dark), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_highest_dark), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_low_dark), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_lowest_dark), jM3218getColorWaAFU9c25, colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_fixed_dim), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_fixed_variant), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_fixed_dim), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_fixed_variant), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_fixed_dim), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_fixed_variant), 331350016, 0, null);
    }

    public static final ColorScheme dynamicLightColorScheme(Context context) {
        return Build.VERSION.SDK_INT >= 34 ? dynamicLightColorScheme34(context) : dynamicLightColorScheme31(dynamicTonalPalette(context));
    }

    public static final ColorScheme dynamicLightColorScheme31(TonalPalette tonalPalette) {
        long jM4210getPrimary400d7_KjU = tonalPalette.m4210getPrimary400d7_KjU();
        long jM4207getPrimary1000d7_KjU = tonalPalette.m4207getPrimary1000d7_KjU();
        long jM4215getPrimary900d7_KjU = tonalPalette.m4215getPrimary900d7_KjU();
        long jM4206getPrimary100d7_KjU = tonalPalette.m4206getPrimary100d7_KjU();
        long jM4214getPrimary800d7_KjU = tonalPalette.m4214getPrimary800d7_KjU();
        long jM4223getSecondary400d7_KjU = tonalPalette.m4223getSecondary400d7_KjU();
        long jM4220getSecondary1000d7_KjU = tonalPalette.m4220getSecondary1000d7_KjU();
        long jM4228getSecondary900d7_KjU = tonalPalette.m4228getSecondary900d7_KjU();
        long jM4219getSecondary100d7_KjU = tonalPalette.m4219getSecondary100d7_KjU();
        long jM4236getTertiary400d7_KjU = tonalPalette.m4236getTertiary400d7_KjU();
        long jM4233getTertiary1000d7_KjU = tonalPalette.m4233getTertiary1000d7_KjU();
        long jM4241getTertiary900d7_KjU = tonalPalette.m4241getTertiary900d7_KjU();
        long jM4232getTertiary100d7_KjU = tonalPalette.m4232getTertiary100d7_KjU();
        long jM4203getNeutralVariant980d7_KjU = tonalPalette.m4203getNeutralVariant980d7_KjU();
        long jM4182getNeutralVariant100d7_KjU = tonalPalette.m4182getNeutralVariant100d7_KjU();
        long jM4203getNeutralVariant980d7_KjU2 = tonalPalette.m4203getNeutralVariant980d7_KjU();
        long jM4182getNeutralVariant100d7_KjU2 = tonalPalette.m4182getNeutralVariant100d7_KjU();
        long jM4198getNeutralVariant900d7_KjU = tonalPalette.m4198getNeutralVariant900d7_KjU();
        long jM4189getNeutralVariant300d7_KjU = tonalPalette.m4189getNeutralVariant300d7_KjU();
        long jM4186getNeutralVariant200d7_KjU = tonalPalette.m4186getNeutralVariant200d7_KjU();
        long jM4201getNeutralVariant950d7_KjU = tonalPalette.m4201getNeutralVariant950d7_KjU();
        long jM4192getNeutralVariant500d7_KjU = tonalPalette.m4192getNeutralVariant500d7_KjU();
        long jM4196getNeutralVariant800d7_KjU = tonalPalette.m4196getNeutralVariant800d7_KjU();
        long jM4181getNeutralVariant00d7_KjU = tonalPalette.m4181getNeutralVariant00d7_KjU();
        long jM4203getNeutralVariant980d7_KjU3 = tonalPalette.m4203getNeutralVariant980d7_KjU();
        long jM4197getNeutralVariant870d7_KjU = tonalPalette.m4197getNeutralVariant870d7_KjU();
        return ColorSchemeKt.m3287lightColorScheme_VG5OTI$default(jM4210getPrimary400d7_KjU, jM4207getPrimary1000d7_KjU, jM4215getPrimary900d7_KjU, jM4206getPrimary100d7_KjU, jM4214getPrimary800d7_KjU, jM4223getSecondary400d7_KjU, jM4220getSecondary1000d7_KjU, jM4228getSecondary900d7_KjU, jM4219getSecondary100d7_KjU, jM4236getTertiary400d7_KjU, jM4233getTertiary1000d7_KjU, jM4241getTertiary900d7_KjU, jM4232getTertiary100d7_KjU, jM4203getNeutralVariant980d7_KjU, jM4182getNeutralVariant100d7_KjU, jM4203getNeutralVariant980d7_KjU2, jM4182getNeutralVariant100d7_KjU2, jM4198getNeutralVariant900d7_KjU, jM4189getNeutralVariant300d7_KjU, tonalPalette.m4210getPrimary400d7_KjU(), jM4186getNeutralVariant200d7_KjU, jM4201getNeutralVariant950d7_KjU, 0L, 0L, 0L, 0L, jM4192getNeutralVariant500d7_KjU, jM4196getNeutralVariant800d7_KjU, jM4181getNeutralVariant00d7_KjU, jM4203getNeutralVariant980d7_KjU3, tonalPalette.m4200getNeutralVariant940d7_KjU(), tonalPalette.m4199getNeutralVariant920d7_KjU(), tonalPalette.m4198getNeutralVariant900d7_KjU(), tonalPalette.m4202getNeutralVariant960d7_KjU(), tonalPalette.m4183getNeutralVariant1000d7_KjU(), jM4197getNeutralVariant870d7_KjU, tonalPalette.m4215getPrimary900d7_KjU(), tonalPalette.m4214getPrimary800d7_KjU(), tonalPalette.m4206getPrimary100d7_KjU(), tonalPalette.m4209getPrimary300d7_KjU(), tonalPalette.m4228getSecondary900d7_KjU(), tonalPalette.m4227getSecondary800d7_KjU(), tonalPalette.m4219getSecondary100d7_KjU(), tonalPalette.m4222getSecondary300d7_KjU(), tonalPalette.m4241getTertiary900d7_KjU(), tonalPalette.m4240getTertiary800d7_KjU(), tonalPalette.m4232getTertiary100d7_KjU(), tonalPalette.m4235getTertiary300d7_KjU(), 62914560, 0, null);
    }

    public static final ColorScheme dynamicLightColorScheme34(Context context) {
        ColorResourceHelper colorResourceHelper = ColorResourceHelper.INSTANCE;
        long jM3218getColorWaAFU9c = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_light);
        long jM3218getColorWaAFU9c2 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_light);
        long jM3218getColorWaAFU9c3 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_container_light);
        long jM3218getColorWaAFU9c4 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_container_light);
        long jM3218getColorWaAFU9c5 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_dark);
        long jM3218getColorWaAFU9c6 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_light);
        long jM3218getColorWaAFU9c7 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_light);
        long jM3218getColorWaAFU9c8 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_container_light);
        long jM3218getColorWaAFU9c9 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_container_light);
        long jM3218getColorWaAFU9c10 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_light);
        long jM3218getColorWaAFU9c11 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_light);
        long jM3218getColorWaAFU9c12 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_container_light);
        long jM3218getColorWaAFU9c13 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_container_light);
        long jM3218getColorWaAFU9c14 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_background_light);
        long jM3218getColorWaAFU9c15 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_background_light);
        long jM3218getColorWaAFU9c16 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_light);
        long jM3218getColorWaAFU9c17 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_surface_light);
        long jM3218getColorWaAFU9c18 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_variant_light);
        long jM3218getColorWaAFU9c19 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_surface_variant_light);
        long jM3218getColorWaAFU9c20 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_dark);
        long jM3218getColorWaAFU9c21 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_surface_dark);
        long jM3218getColorWaAFU9c22 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_outline_light);
        long jM3218getColorWaAFU9c23 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_outline_variant_light);
        long jM3218getColorWaAFU9c24 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_bright_light);
        long jM3218getColorWaAFU9c25 = colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_dim_light);
        return ColorSchemeKt.m3287lightColorScheme_VG5OTI$default(jM3218getColorWaAFU9c, jM3218getColorWaAFU9c2, jM3218getColorWaAFU9c3, jM3218getColorWaAFU9c4, jM3218getColorWaAFU9c5, jM3218getColorWaAFU9c6, jM3218getColorWaAFU9c7, jM3218getColorWaAFU9c8, jM3218getColorWaAFU9c9, jM3218getColorWaAFU9c10, jM3218getColorWaAFU9c11, jM3218getColorWaAFU9c12, jM3218getColorWaAFU9c13, jM3218getColorWaAFU9c14, jM3218getColorWaAFU9c15, jM3218getColorWaAFU9c16, jM3218getColorWaAFU9c17, jM3218getColorWaAFU9c18, jM3218getColorWaAFU9c19, colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_light), jM3218getColorWaAFU9c20, jM3218getColorWaAFU9c21, 0L, 0L, 0L, 0L, jM3218getColorWaAFU9c22, jM3218getColorWaAFU9c23, 0L, jM3218getColorWaAFU9c24, colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_light), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_high_light), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_highest_light), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_low_light), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_surface_container_lowest_light), jM3218getColorWaAFU9c25, colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_primary_fixed_dim), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_primary_fixed_variant), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_secondary_fixed_dim), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_secondary_fixed_variant), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_tertiary_fixed_dim), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_fixed), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_on_tertiary_fixed_variant), 331350016, 0, null);
    }

    public static final TonalPalette dynamicTonalPalette(Context context) {
        ColorResourceHelper colorResourceHelper = ColorResourceHelper.INSTANCE;
        return new TonalPalette(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_0), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_10), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 98.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 96.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_50), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 94.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 92.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_100), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 87.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_200), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_300), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_400), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_500), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_700), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 24.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 22.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_800), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 17.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 12.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_900), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 6.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_600), 4.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral1_1000), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_0), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_10), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 98.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 96.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_50), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 94.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 92.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_100), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 87.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_200), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_300), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_400), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_500), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_700), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 24.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 22.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_800), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 17.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 12.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_900), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 6.0f), m3424setLuminanceDxMtmZc(colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_600), 4.0f), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_neutral2_1000), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_0), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_10), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_50), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_100), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_200), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_300), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_400), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_500), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_600), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_700), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_800), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_900), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent1_1000), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_0), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_10), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_50), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_100), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_200), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_300), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_400), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_500), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_600), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_700), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_800), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_900), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent2_1000), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_0), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_10), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_50), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_100), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_200), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_300), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_400), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_500), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_600), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_700), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_800), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_900), colorResourceHelper.m3218getColorWaAFU9c(context, android.R.color.system_accent3_1000), null);
    }

    /* JADX INFO: renamed from: setLuminance-DxMtmZc, reason: not valid java name */
    public static final long m3424setLuminanceDxMtmZc(long j, float f) {
        double d = f;
        if ((d < 1.0E-4d) || (d > 99.9999d)) {
            return ColorKt.Color(CamUtils.INSTANCE.argbFromLstar(d));
        }
        Cam.Companion companion = Cam.Companion;
        Cam camFromInt = companion.fromInt(ColorKt.m6286toArgb8_81llA(j));
        return ColorKt.Color(companion.getInt(camFromInt.getHue(), camFromInt.getChroma(), f));
    }
}
