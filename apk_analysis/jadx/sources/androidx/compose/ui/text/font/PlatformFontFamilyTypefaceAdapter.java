package androidx.compose.ui.text.font;

import androidx.compose.ui.text.platform.AndroidTypeface;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformFontFamilyTypefaceAdapter implements FontFamilyTypefaceAdapter {
    public static final int $stable = 8;
    private final PlatformTypefaces platformTypefaceResolver = PlatformTypefaces_androidKt.PlatformTypefaces();

    @Override // androidx.compose.ui.text.font.FontFamilyTypefaceAdapter
    public TypefaceResult resolve(TypefaceRequest typefaceRequest, PlatformFontLoader platformFontLoader, nl3<? super TypefaceResult.Immutable, j59> nl3Var, nl3<? super TypefaceRequest, ? extends Object> nl3Var2) {
        android.graphics.Typeface typefaceMo8631createDefaultFO1MlWM;
        FontFamily fontFamily = typefaceRequest.getFontFamily();
        if (fontFamily == null || (fontFamily instanceof DefaultFontFamily)) {
            typefaceMo8631createDefaultFO1MlWM = this.platformTypefaceResolver.mo8631createDefaultFO1MlWM(typefaceRequest.getFontWeight(), typefaceRequest.m8649getFontStyle_LCdwA());
        } else if (fontFamily instanceof GenericFontFamily) {
            typefaceMo8631createDefaultFO1MlWM = this.platformTypefaceResolver.mo8632createNamedRetOiIg((GenericFontFamily) typefaceRequest.getFontFamily(), typefaceRequest.getFontWeight(), typefaceRequest.m8649getFontStyle_LCdwA());
        } else {
            if (!(fontFamily instanceof LoadedFontFamily)) {
                return null;
            }
            Typeface typeface = ((LoadedFontFamily) typefaceRequest.getFontFamily()).getTypeface();
            typeface.getClass();
            typefaceMo8631createDefaultFO1MlWM = ((AndroidTypeface) typeface).mo8744getNativeTypefacePYhJU0U(typefaceRequest.getFontWeight(), typefaceRequest.m8649getFontStyle_LCdwA(), typefaceRequest.m8650getFontSynthesisGVVA2EU());
        }
        return new TypefaceResult.Immutable(typefaceMo8631createDefaultFO1MlWM, false, 2, null);
    }
}
