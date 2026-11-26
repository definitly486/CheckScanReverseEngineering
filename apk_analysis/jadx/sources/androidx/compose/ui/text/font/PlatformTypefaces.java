package androidx.compose.ui.text.font;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public interface PlatformTypefaces {
    /* JADX INFO: renamed from: createDefault-FO1MlWM, reason: not valid java name */
    android.graphics.Typeface mo8631createDefaultFO1MlWM(FontWeight fontWeight, int i);

    /* JADX INFO: renamed from: createNamed-RetOiIg, reason: not valid java name */
    android.graphics.Typeface mo8632createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i);

    /* JADX INFO: renamed from: optionalOnDeviceFontFamilyByName-78DK7lM, reason: not valid java name */
    android.graphics.Typeface mo8633optionalOnDeviceFontFamilyByName78DK7lM(String str, FontWeight fontWeight, int i, FontVariation.Settings settings, Context context);
}
