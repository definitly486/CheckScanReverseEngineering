package androidx.compose.ui.text.font;

import defpackage.b36;
import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;
import defpackage.qz0;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FontListFontFamilyTypefaceAdapterKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final b36<List<Font>, Object> firstImmediatelyAvailable(List<? extends Font> list, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, PlatformFontLoader platformFontLoader, nl3<? super TypefaceRequest, ? extends Object> nl3Var) {
        Object objInvoke;
        Object objInvoke2;
        Object aVar;
        Object objM8565unboximpl;
        int size = list.size();
        ArrayList arrayListK = null;
        for (int i = 0; i < size; i++) {
            Font font = list.get(i);
            int iMo8548getLoadingStrategyPKNRLFQ = font.mo8548getLoadingStrategyPKNRLFQ();
            FontLoadingStrategy.Companion companion = FontLoadingStrategy.Companion;
            if (FontLoadingStrategy.m8590equalsimpl0(iMo8548getLoadingStrategyPKNRLFQ, companion.m8595getBlockingPKNRLFQ())) {
                synchronized (asyncTypefaceCache.cacheLock) {
                    try {
                        AsyncTypefaceCache.Key key = new AsyncTypefaceCache.Key(font, platformFontLoader.getCacheKey());
                        AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key);
                        if (asyncTypefaceResult == null) {
                            asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key);
                        }
                        if (asyncTypefaceResult != null) {
                            objInvoke2 = asyncTypefaceResult.m8565unboximpl();
                        } else {
                            j59 j59Var = j59.a;
                            try {
                                objInvoke = platformFontLoader.loadBlocking(font);
                            } catch (Exception unused) {
                                objInvoke = nl3Var.invoke(typefaceRequest);
                            }
                            Object obj = objInvoke;
                            AsyncTypefaceCache.put$default(asyncTypefaceCache, font, platformFontLoader, obj, false, 8, null);
                            objInvoke2 = obj;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (objInvoke2 == null) {
                    objInvoke2 = nl3Var.invoke(typefaceRequest);
                }
                return new b36<>(arrayListK, FontSynthesis_androidKt.m8625synthesizeTypefaceFxwP2eA(typefaceRequest.m8650getFontSynthesisGVVA2EU(), objInvoke2, font, typefaceRequest.getFontWeight(), typefaceRequest.m8649getFontStyle_LCdwA()));
            }
            if (FontLoadingStrategy.m8590equalsimpl0(iMo8548getLoadingStrategyPKNRLFQ, companion.m8596getOptionalLocalPKNRLFQ())) {
                synchronized (asyncTypefaceCache.cacheLock) {
                    try {
                        AsyncTypefaceCache.Key key2 = new AsyncTypefaceCache.Key(font, platformFontLoader.getCacheKey());
                        AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key2);
                        if (asyncTypefaceResult2 == null) {
                            asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key2);
                        }
                        if (asyncTypefaceResult2 != null) {
                            objM8565unboximpl = asyncTypefaceResult2.m8565unboximpl();
                        } else {
                            j59 j59Var2 = j59.a;
                            try {
                                aVar = platformFontLoader.loadBlocking(font);
                            } catch (Throwable th2) {
                                aVar = new k57.a(th2);
                            }
                            Object obj2 = aVar instanceof k57.a ? null : aVar;
                            AsyncTypefaceCache.put$default(asyncTypefaceCache, font, platformFontLoader, obj2, false, 8, null);
                            objM8565unboximpl = obj2;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (objM8565unboximpl != null) {
                    return new b36<>(arrayListK, FontSynthesis_androidKt.m8625synthesizeTypefaceFxwP2eA(typefaceRequest.m8650getFontSynthesisGVVA2EU(), objM8565unboximpl, font, typefaceRequest.getFontWeight(), typefaceRequest.m8649getFontStyle_LCdwA()));
                }
            } else {
                if (!FontLoadingStrategy.m8590equalsimpl0(iMo8548getLoadingStrategyPKNRLFQ, companion.m8594getAsyncPKNRLFQ())) {
                    qz0.i(font, "Unknown font type ");
                    return null;
                }
                AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResultM8557get1ASDuI8 = asyncTypefaceCache.m8557get1ASDuI8(font, platformFontLoader);
                if (asyncTypefaceResultM8557get1ASDuI8 != null) {
                    if (!AsyncTypefaceCache.AsyncTypefaceResult.m8563isPermanentFailureimpl(asyncTypefaceResultM8557get1ASDuI8.m8565unboximpl()) && asyncTypefaceResultM8557get1ASDuI8.m8565unboximpl() != null) {
                        return new b36<>(arrayListK, FontSynthesis_androidKt.m8625synthesizeTypefaceFxwP2eA(typefaceRequest.m8650getFontSynthesisGVVA2EU(), asyncTypefaceResultM8557get1ASDuI8.m8565unboximpl(), font, typefaceRequest.getFontWeight(), typefaceRequest.m8649getFontStyle_LCdwA()));
                    }
                } else if (arrayListK == null) {
                    arrayListK = u96.k(font);
                } else {
                    arrayListK.add(font);
                }
            }
        }
        return new b36<>(arrayListK, nl3Var.invoke(typefaceRequest));
    }
}
