package androidx.compose.ui.text.font;

import android.content.Context;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
final class DeviceFontFamilyNameFont extends AndroidFont {
    private final String familyName;
    private final int style;
    private final FontWeight weight;

    private DeviceFontFamilyNameFont(String str, FontWeight fontWeight, int i, FontVariation.Settings settings) {
        super(FontLoadingStrategy.Companion.m8596getOptionalLocalPKNRLFQ(), NamedFontLoader.INSTANCE, settings, null);
        this.familyName = str;
        this.weight = fontWeight;
        this.style = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceFontFamilyNameFont)) {
            return false;
        }
        DeviceFontFamilyNameFont deviceFontFamilyNameFont = (DeviceFontFamilyNameFont) obj;
        return DeviceFontFamilyName.m8569equalsimpl0(this.familyName, deviceFontFamilyNameFont.familyName) && aa4.e(getWeight(), deviceFontFamilyNameFont.getWeight()) && FontStyle.m8603equalsimpl0(mo8556getStyle_LCdwA(), deviceFontFamilyNameFont.mo8556getStyle_LCdwA()) && aa4.e(getVariationSettings(), deviceFontFamilyNameFont.getVariationSettings());
    }

    @Override // androidx.compose.ui.text.font.Font
    /* JADX INFO: renamed from: getStyle-_-LCdwA */
    public int mo8556getStyle_LCdwA() {
        return this.style;
    }

    @Override // androidx.compose.ui.text.font.Font
    public FontWeight getWeight() {
        return this.weight;
    }

    public int hashCode() {
        return getVariationSettings().hashCode() + ((FontStyle.m8604hashCodeimpl(mo8556getStyle_LCdwA()) + ((getWeight().hashCode() + (DeviceFontFamilyName.m8570hashCodeimpl(this.familyName) * 31)) * 31)) * 31);
    }

    public final android.graphics.Typeface loadCached(Context context) {
        return PlatformTypefaces_androidKt.PlatformTypefaces().mo8633optionalOnDeviceFontFamilyByName78DK7lM(this.familyName, getWeight(), mo8556getStyle_LCdwA(), getVariationSettings(), context);
    }

    public String toString() {
        return "Font(familyName=\"" + ((Object) DeviceFontFamilyName.m8571toStringimpl(this.familyName)) + "\", weight=" + getWeight() + ", style=" + ((Object) FontStyle.m8605toStringimpl(mo8556getStyle_LCdwA())) + ')';
    }

    public /* synthetic */ DeviceFontFamilyNameFont(String str, FontWeight fontWeight, int i, FontVariation.Settings settings, jh2 jh2Var) {
        this(str, fontWeight, i, settings);
    }
}
