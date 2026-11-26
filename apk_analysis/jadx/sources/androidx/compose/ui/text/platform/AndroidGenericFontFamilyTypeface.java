package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.TypefaceHelperMethodsApi28;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class AndroidGenericFontFamilyTypeface implements AndroidTypeface {
    public static final int $stable = 8;
    private final FontFamily fontFamily;
    private final Typeface nativeTypeface;

    public AndroidGenericFontFamilyTypeface(GenericFontFamily genericFontFamily) {
        this.fontFamily = genericFontFamily;
        Typeface typefaceCreate = Typeface.create(genericFontFamily.getName(), 0);
        typefaceCreate.getClass();
        this.nativeTypeface = typefaceCreate;
    }

    /* JADX INFO: renamed from: buildStyledTypeface-FO1MlWM, reason: not valid java name */
    private final Typeface m8745buildStyledTypefaceFO1MlWM(FontWeight fontWeight, int i) {
        return Build.VERSION.SDK_INT < 28 ? Typeface.create(this.nativeTypeface, AndroidFontUtils_androidKt.m8555getAndroidTypefaceStyleFO1MlWM(fontWeight, i)) : TypefaceHelperMethodsApi28.INSTANCE.create(this.nativeTypeface, fontWeight.getWeight(), FontStyle.m8603equalsimpl0(i, FontStyle.Companion.m8609getItalic_LCdwA()));
    }

    @Override // androidx.compose.ui.text.font.Typeface
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    /* JADX INFO: renamed from: getNativeTypeface-PYhJU0U */
    public Typeface mo8744getNativeTypefacePYhJU0U(FontWeight fontWeight, int i, int i2) {
        return m8745buildStyledTypefaceFO1MlWM(fontWeight, i);
    }
}
