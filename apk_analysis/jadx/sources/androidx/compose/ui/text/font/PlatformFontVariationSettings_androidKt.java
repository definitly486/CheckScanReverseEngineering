package androidx.compose.ui.text.font;

import android.content.Context;
import android.graphics.fonts.FontVariationAxis;
import android.os.Build;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.aa4;
import defpackage.i1;
import defpackage.kx6;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformFontVariationSettings_androidKt {
    private static final float coerceInWeight(float f) {
        return kx6.d(f, 1.0f, 1000.0f);
    }

    public static final int getFontWeightAdjustment(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 31 || context.getResources().getConfiguration().fontWeightAdjustment == Integer.MAX_VALUE) {
            return 0;
        }
        return context.getResources().getConfiguration().fontWeightAdjustment;
    }

    public static final FontVariationAxis[] toAndroidArray(FontVariation.Settings settings, Density density, int i) {
        int size;
        FontVariationAxis fontVariationAxis;
        int i2 = 0;
        if (i == 0) {
            int size2 = settings.getSettings().size();
            FontVariationAxis[] fontVariationAxisArr = new FontVariationAxis[size2];
            while (i2 < size2) {
                fontVariationAxisArr[i2] = new FontVariationAxis(settings.getSettings().get(i2).getAxisName(), settings.getSettings().get(i2).toVariationValue(density));
                i2++;
            }
            return fontVariationAxisArr;
        }
        int size3 = settings.getSettings().size();
        int i3 = 0;
        while (true) {
            if (i3 >= size3) {
                size = settings.getSettings().size() + 1;
                break;
            }
            if (aa4.e(settings.getSettings().get(i3).getAxisName(), "wght")) {
                size = settings.getSettings().size();
                break;
            }
            i3++;
        }
        FontVariationAxis[] fontVariationAxisArr2 = new FontVariationAxis[size];
        while (i2 < size) {
            if (i2 == settings.getSettings().size()) {
                fontVariationAxis = new FontVariationAxis("wght", coerceInWeight(i + 400.0f));
            } else {
                fontVariationAxis = aa4.e(settings.getSettings().get(i2).getAxisName(), "wght") ? new FontVariationAxis("wght", coerceInWeight(settings.getSettings().get(i2).toVariationValue(density) + i)) : new FontVariationAxis(settings.getSettings().get(i2).getAxisName(), settings.getSettings().get(i2).toVariationValue(density));
            }
            fontVariationAxisArr2[i2] = fontVariationAxis;
            i2++;
        }
        return fontVariationAxisArr2;
    }

    public static final String toAndroidString(FontVariation.Settings settings, Density density, int i) {
        boolean z;
        float variationValue;
        if (i == 0) {
            return ListUtilsKt.fastJoinToString$default(settings.getSettings(), null, null, null, 0, null, new i1(density, 2), 31, null);
        }
        List<FontVariation.Setting> settings2 = settings.getSettings();
        int size = settings2.size();
        int i2 = 0;
        String strConcat = "";
        boolean z2 = false;
        while (i2 < size) {
            FontVariation.Setting setting = settings2.get(i2);
            if (aa4.e(setting.getAxisName(), "wght")) {
                variationValue = coerceInWeight(setting.toVariationValue(density) + i);
                z = true;
            } else {
                z = z2;
                variationValue = setting.toVariationValue(density);
            }
            if (i2 != 0) {
                strConcat = strConcat.concat(StringUtils.COMMA);
            }
            strConcat = strConcat + '\'' + setting.getAxisName() + "' " + variationValue;
            i2++;
            z2 = z;
        }
        if (z2) {
            return strConcat;
        }
        float fCoerceInWeight = coerceInWeight(i + 400.0f);
        if (!settings.getSettings().isEmpty()) {
            strConcat = strConcat.concat(StringUtils.COMMA);
        }
        return strConcat + "'wght' " + fCoerceInWeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toAndroidString$lambda$0(Density density, FontVariation.Setting setting) {
        return "'" + setting.getAxisName() + "' " + setting.toVariationValue(density);
    }

    public static final String toAndroidString(FontVariation.Settings settings, Context context) {
        return toAndroidString(settings, AndroidDensity_androidKt.Density(context), getFontWeightAdjustment(context));
    }
}
