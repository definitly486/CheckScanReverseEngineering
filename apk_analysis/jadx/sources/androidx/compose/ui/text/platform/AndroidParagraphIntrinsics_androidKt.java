package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import androidx.core.text.TextUtilsCompat;
import defpackage.ah;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidParagraphIntrinsics_androidKt {
    public static final ParagraphIntrinsics ActualParagraphIntrinsics(String str, TextStyle textStyle, List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>> list, List<AnnotatedString.Range<Placeholder>> list2, Density density, FontFamily.Resolver resolver) {
        return new AndroidParagraphIntrinsics(str, textStyle, list, list2, resolver, density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getHasEmojiCompat(TextStyle textStyle) {
        PlatformParagraphStyle paragraphStyle;
        PlatformTextStyle platformStyle = textStyle.getPlatformStyle();
        EmojiSupportMatch emojiSupportMatchM8338boximpl = (platformStyle == null || (paragraphStyle = platformStyle.getParagraphStyle()) == null) ? null : EmojiSupportMatch.m8338boximpl(paragraphStyle.m8419getEmojiSupportMatch_3YsG6Y());
        return !(emojiSupportMatchM8338boximpl == null ? false : EmojiSupportMatch.m8341equalsimpl0(emojiSupportMatchM8338boximpl.m8344unboximpl(), EmojiSupportMatch.Companion.m8347getNone_3YsG6Y()));
    }

    /* JADX INFO: renamed from: resolveTextDirectionHeuristics-HklW4sA, reason: not valid java name */
    public static final int m8749resolveTextDirectionHeuristicsHklW4sA(int i, LocaleList localeList) {
        Locale platformLocale;
        TextDirection.Companion companion = TextDirection.Companion;
        if (TextDirection.m8933equalsimpl0(i, companion.m8938getContentOrLtrs_7Xco())) {
            return 2;
        }
        if (TextDirection.m8933equalsimpl0(i, companion.m8939getContentOrRtls_7Xco())) {
            return 3;
        }
        if (TextDirection.m8933equalsimpl0(i, companion.m8940getLtrs_7Xco())) {
            return 0;
        }
        if (TextDirection.m8933equalsimpl0(i, companion.m8941getRtls_7Xco())) {
            return 1;
        }
        if (!TextDirection.m8933equalsimpl0(i, companion.m8937getContents_7Xco()) && !TextDirection.m8933equalsimpl0(i, companion.m8942getUnspecifieds_7Xco())) {
            ah.f("Invalid TextDirection.");
            return 0;
        }
        if (localeList == null || (platformLocale = localeList.get(0).getPlatformLocale()) == null) {
            platformLocale = Locale.getDefault();
        }
        int layoutDirectionFromLocale = TextUtilsCompat.getLayoutDirectionFromLocale(platformLocale);
        return (layoutDirectionFromLocale == 0 || layoutDirectionFromLocale != 1) ? 2 : 3;
    }

    /* JADX INFO: renamed from: resolveTextDirectionHeuristics-HklW4sA$default, reason: not valid java name */
    public static /* synthetic */ int m8750resolveTextDirectionHeuristicsHklW4sA$default(int i, LocaleList localeList, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            localeList = null;
        }
        return m8749resolveTextDirectionHeuristicsHklW4sA(i, localeList);
    }
}
