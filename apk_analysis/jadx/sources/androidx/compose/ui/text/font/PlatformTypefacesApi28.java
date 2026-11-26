package androidx.compose.ui.text.font;

import android.content.Context;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
final class PlatformTypefacesApi28 implements PlatformTypefaces {
    /* JADX INFO: renamed from: createAndroidTypefaceApi28-RetOiIg, reason: not valid java name */
    private final android.graphics.Typeface m8637createAndroidTypefaceApi28RetOiIg(String str, FontWeight fontWeight, int i) {
        FontStyle.Companion companion = FontStyle.Companion;
        if (FontStyle.m8603equalsimpl0(i, companion.m8610getNormal_LCdwA()) && aa4.e(fontWeight, FontWeight.Companion.getNormal()) && (str == null || str.length() == 0)) {
            return android.graphics.Typeface.DEFAULT;
        }
        return android.graphics.Typeface.create(str == null ? android.graphics.Typeface.DEFAULT : android.graphics.Typeface.create(str, 0), fontWeight.getWeight(), FontStyle.m8603equalsimpl0(i, companion.m8609getItalic_LCdwA()));
    }

    /* JADX INFO: renamed from: createAndroidTypefaceApi28-RetOiIg$default, reason: not valid java name */
    public static /* synthetic */ android.graphics.Typeface m8638createAndroidTypefaceApi28RetOiIg$default(PlatformTypefacesApi28 platformTypefacesApi28, String str, FontWeight fontWeight, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        return platformTypefacesApi28.m8637createAndroidTypefaceApi28RetOiIg(str, fontWeight, i);
    }

    /* JADX INFO: renamed from: loadNamedFromTypefaceCacheOrNull-RetOiIg, reason: not valid java name */
    private final android.graphics.Typeface m8639loadNamedFromTypefaceCacheOrNullRetOiIg(String str, FontWeight fontWeight, int i) {
        if (str.length() == 0) {
            return null;
        }
        android.graphics.Typeface typefaceM8637createAndroidTypefaceApi28RetOiIg = m8637createAndroidTypefaceApi28RetOiIg(str, fontWeight, i);
        if (aa4.e(typefaceM8637createAndroidTypefaceApi28RetOiIg, TypefaceHelperMethodsApi28.INSTANCE.create(android.graphics.Typeface.DEFAULT, fontWeight.getWeight(), FontStyle.m8603equalsimpl0(i, FontStyle.Companion.m8609getItalic_LCdwA()))) || aa4.e(typefaceM8637createAndroidTypefaceApi28RetOiIg, m8637createAndroidTypefaceApi28RetOiIg(null, fontWeight, i))) {
            return null;
        }
        return typefaceM8637createAndroidTypefaceApi28RetOiIg;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* JADX INFO: renamed from: createDefault-FO1MlWM */
    public android.graphics.Typeface mo8631createDefaultFO1MlWM(FontWeight fontWeight, int i) {
        return m8637createAndroidTypefaceApi28RetOiIg(null, fontWeight, i);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* JADX INFO: renamed from: createNamed-RetOiIg */
    public android.graphics.Typeface mo8632createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
        return m8637createAndroidTypefaceApi28RetOiIg(genericFontFamily.getName(), fontWeight, i);
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
            typefaceMo8632createNamedRetOiIg = aa4.e(str, companion.getCursive().getName()) ? mo8632createNamedRetOiIg(companion.getCursive(), fontWeight, i) : m8639loadNamedFromTypefaceCacheOrNullRetOiIg(str, fontWeight, i);
        }
        return PlatformTypefaces_androidKt.setFontVariationSettings(typefaceMo8632createNamedRetOiIg, settings, context);
    }
}
