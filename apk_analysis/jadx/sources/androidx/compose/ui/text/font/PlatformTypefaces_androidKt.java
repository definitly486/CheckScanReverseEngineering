package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;
import defpackage.ni0;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformTypefaces_androidKt {
    public static final PlatformTypefaces PlatformTypefaces() {
        return Build.VERSION.SDK_INT >= 28 ? new PlatformTypefacesApi28() : new PlatformTypefacesApi();
    }

    public static final String getWeightSuffixForFallbackFamilyName(String str, FontWeight fontWeight) {
        int weight = fontWeight.getWeight() / 100;
        if (weight >= 0 && weight < 2) {
            return ni0.c(str, "-thin");
        }
        if (2 <= weight && weight < 4) {
            return ni0.c(str, "-light");
        }
        if (weight == 4) {
            return str;
        }
        if (weight == 5) {
            return ni0.c(str, "-medium");
        }
        return ((6 > weight || weight >= 8) && 8 <= weight && weight < 11) ? ni0.c(str, "-black") : str;
    }

    public static final android.graphics.Typeface setFontVariationSettings(android.graphics.Typeface typeface, FontVariation.Settings settings, Context context) {
        return TypefaceCompatApi26.INSTANCE.setFontVariationSettings(typeface, settings, context);
    }
}
