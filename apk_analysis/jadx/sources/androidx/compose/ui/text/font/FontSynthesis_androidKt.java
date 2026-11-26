package androidx.compose.ui.text.font;

import android.os.Build;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public final class FontSynthesis_androidKt {
    /* JADX WARN: Code duplicated, block: B:14:0x0033  */
    /* JADX INFO: renamed from: synthesizeTypeface-FxwP2eA, reason: not valid java name */
    public static final Object m8625synthesizeTypefaceFxwP2eA(int i, Object obj, Font font, FontWeight fontWeight, int i2) {
        boolean z;
        if (!(obj instanceof android.graphics.Typeface)) {
            return obj;
        }
        boolean z2 = false;
        if (!FontSynthesis.m8617isWeightOnimpl$ui_text(i) || aa4.e(font.getWeight(), fontWeight)) {
            z = false;
        } else {
            FontWeight.Companion companion = FontWeight.Companion;
            if (fontWeight.compareTo(AndroidFontUtils_androidKt.getAndroidBold(companion)) < 0 || font.getWeight().compareTo(AndroidFontUtils_androidKt.getAndroidBold(companion)) >= 0) {
                z = false;
            } else {
                z = true;
            }
        }
        boolean z3 = FontSynthesis.m8616isStyleOnimpl$ui_text(i) && !FontStyle.m8603equalsimpl0(i2, font.mo8556getStyle_LCdwA());
        if (!z3 && !z) {
            return obj;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return TypefaceHelperMethodsApi28.INSTANCE.create((android.graphics.Typeface) obj, z ? fontWeight.getWeight() : font.getWeight().getWeight(), z3 ? FontStyle.m8603equalsimpl0(i2, FontStyle.Companion.m8609getItalic_LCdwA()) : FontStyle.m8603equalsimpl0(font.mo8556getStyle_LCdwA(), FontStyle.Companion.m8609getItalic_LCdwA()));
        }
        if (z3 && FontStyle.m8603equalsimpl0(i2, FontStyle.Companion.m8609getItalic_LCdwA())) {
            z2 = true;
        }
        return android.graphics.Typeface.create((android.graphics.Typeface) obj, AndroidFontUtils_androidKt.getAndroidTypefaceStyle(z, z2));
    }
}
