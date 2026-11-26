package androidx.compose.ui.text.font;

import android.content.Context;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
final class PlatformTypefacesApi implements PlatformTypefaces {
    /* JADX INFO: renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg, reason: not valid java name */
    private final android.graphics.Typeface m8634createAndroidTypefaceUsingTypefaceStyleRetOiIg(String str, FontWeight fontWeight, int i) {
        if (FontStyle.m8603equalsimpl0(i, FontStyle.Companion.m8610getNormal_LCdwA()) && aa4.e(fontWeight, FontWeight.Companion.getNormal()) && (str == null || str.length() == 0)) {
            return android.graphics.Typeface.DEFAULT;
        }
        int iM8555getAndroidTypefaceStyleFO1MlWM = AndroidFontUtils_androidKt.m8555getAndroidTypefaceStyleFO1MlWM(fontWeight, i);
        return (str == null || str.length() == 0) ? android.graphics.Typeface.defaultFromStyle(iM8555getAndroidTypefaceStyleFO1MlWM) : android.graphics.Typeface.create(str, iM8555getAndroidTypefaceStyleFO1MlWM);
    }

    /* JADX INFO: renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg$default, reason: not valid java name */
    public static /* synthetic */ android.graphics.Typeface m8635createAndroidTypefaceUsingTypefaceStyleRetOiIg$default(PlatformTypefacesApi platformTypefacesApi, String str, FontWeight fontWeight, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i2 & 4) != 0) {
            i = FontStyle.Companion.m8610getNormal_LCdwA();
        }
        return platformTypefacesApi.m8634createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i);
    }

    /* JADX INFO: renamed from: loadNamedFromTypefaceCacheOrNull-RetOiIg, reason: not valid java name */
    private final android.graphics.Typeface m8636loadNamedFromTypefaceCacheOrNullRetOiIg(String str, FontWeight fontWeight, int i) {
        if (str.length() == 0) {
            return null;
        }
        android.graphics.Typeface typefaceM8634createAndroidTypefaceUsingTypefaceStyleRetOiIg = m8634createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i);
        if (aa4.e(typefaceM8634createAndroidTypefaceUsingTypefaceStyleRetOiIg, android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, AndroidFontUtils_androidKt.m8555getAndroidTypefaceStyleFO1MlWM(fontWeight, i))) || aa4.e(typefaceM8634createAndroidTypefaceUsingTypefaceStyleRetOiIg, m8634createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i))) {
            return null;
        }
        return typefaceM8634createAndroidTypefaceUsingTypefaceStyleRetOiIg;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* JADX INFO: renamed from: createDefault-FO1MlWM */
    public android.graphics.Typeface mo8631createDefaultFO1MlWM(FontWeight fontWeight, int i) {
        return m8634createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* JADX INFO: renamed from: createNamed-RetOiIg */
    public android.graphics.Typeface mo8632createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
        android.graphics.Typeface typefaceM8636loadNamedFromTypefaceCacheOrNullRetOiIg = m8636loadNamedFromTypefaceCacheOrNullRetOiIg(PlatformTypefaces_androidKt.getWeightSuffixForFallbackFamilyName(genericFontFamily.getName(), fontWeight), fontWeight, i);
        return typefaceM8636loadNamedFromTypefaceCacheOrNullRetOiIg == null ? m8634createAndroidTypefaceUsingTypefaceStyleRetOiIg(genericFontFamily.getName(), fontWeight, i) : typefaceM8636loadNamedFromTypefaceCacheOrNullRetOiIg;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* JADX INFO: renamed from: optionalOnDeviceFontFamilyByName-78DK7lM */
    public android.graphics.Typeface mo8633optionalOnDeviceFontFamilyByName78DK7lM(String str, FontWeight fontWeight, int i, FontVariation.Settings settings, Context context) {
        android.graphics.Typeface typefaceMo8632createNamedRetOiIg;
        FontFamily.Companion companion = FontFamily.Companion;
        if (aa4.e(str, companion.getSansSerif().getName())) {
            typefaceMo8632createNamedRetOiIg = mo8632createNamedRetOiIg(companion.getSansSerif(), fontWeight, i);
        } else if (aa4.e(str, companion.getSerif().getName())) {
            typefaceMo8632createNamedRetOiIg = mo8632createNamedRetOiIg(companion.getSerif(), fontWeight, i);
        } else if (aa4.e(str, companion.getMonospace().getName())) {
            typefaceMo8632createNamedRetOiIg = mo8632createNamedRetOiIg(companion.getMonospace(), fontWeight, i);
        } else {
            typefaceMo8632createNamedRetOiIg = aa4.e(str, companion.getCursive().getName()) ? mo8632createNamedRetOiIg(companion.getCursive(), fontWeight, i) : m8636loadNamedFromTypefaceCacheOrNullRetOiIg(str, fontWeight, i);
        }
        return PlatformTypefaces_androidKt.setFontVariationSettings(typefaceMo8632createNamedRetOiIg, settings, context);
    }
}
