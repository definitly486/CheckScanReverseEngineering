package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceHelperMethodsApi28;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class AndroidDefaultTypeface implements AndroidTypeface {
    public static final int $stable = 0;
    private final FontFamily fontFamily = FontFamily.Companion.getDefault();

    @Override // androidx.compose.ui.text.font.Typeface
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    /* JADX INFO: renamed from: getNativeTypeface-PYhJU0U, reason: not valid java name */
    public Typeface mo8744getNativeTypefacePYhJU0U(FontWeight fontWeight, int i, int i2) {
        return Build.VERSION.SDK_INT < 28 ? Typeface.defaultFromStyle(AndroidFontUtils_androidKt.m8555getAndroidTypefaceStyleFO1MlWM(fontWeight, i)) : TypefaceHelperMethodsApi28.INSTANCE.create(Typeface.DEFAULT, fontWeight.getWeight(), FontStyle.m8603equalsimpl0(i, FontStyle.Companion.m8609getItalic_LCdwA()));
    }
}
