package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.runtime.State;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public final class FontFamilyResolver_androidKt {
    public static final FontFamily.Resolver createFontFamilyResolver(Context context, o22 o22Var) {
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), AndroidFontResolveInterceptor_androidKt.AndroidFontResolveInterceptor(context), FontFamilyResolverKt.getGlobalTypefaceRequestCache(), new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.getGlobalAsyncTypefaceCache(), o22Var), null, 16, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final FontFamily.Resolver emptyCacheFontFamilyResolver(Context context) {
        PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter = null;
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), 0 == true ? 1 : 0, new TypefaceRequestCache(), new FontListFontFamilyTypefaceAdapter(new AsyncTypefaceCache(), null, 2, 0 == true ? 1 : 0), platformFontFamilyTypefaceAdapter, 18, null);
    }

    /* JADX INFO: renamed from: resolveAsTypeface-Wqqsr6A, reason: not valid java name */
    public static final State<android.graphics.Typeface> m8577resolveAsTypefaceWqqsr6A(FontFamily.Resolver resolver, FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
        State stateMo8576resolveDPcqOEQ = resolver.mo8576resolveDPcqOEQ(fontFamily, fontWeight, i, i2);
        stateMo8576resolveDPcqOEQ.getClass();
        return stateMo8576resolveDPcqOEQ;
    }

    /* JADX INFO: renamed from: resolveAsTypeface-Wqqsr6A$default, reason: not valid java name */
    public static /* synthetic */ State m8578resolveAsTypefaceWqqsr6A$default(FontFamily.Resolver resolver, FontFamily fontFamily, FontWeight fontWeight, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            fontFamily = null;
        }
        if ((i3 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i3 & 4) != 0) {
            i = FontStyle.Companion.m8610getNormal_LCdwA();
        }
        if ((i3 & 8) != 0) {
            i2 = FontSynthesis.Companion.m8620getAllGVVA2EU();
        }
        return m8577resolveAsTypefaceWqqsr6A(resolver, fontFamily, fontWeight, i, i2);
    }

    public static final FontFamily.Resolver createFontFamilyResolver(Context context) {
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), AndroidFontResolveInterceptor_androidKt.AndroidFontResolveInterceptor(context), null, null, null, 28, null);
    }
}
