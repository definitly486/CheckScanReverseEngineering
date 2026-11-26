package androidx.compose.ui.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.compose.ui.text.android.SpannedExtensions_androidKt;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.style.IndentationFixSpan;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidParagraph_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence attachIndentationFixSpan(CharSequence charSequence) {
        if (charSequence.length() == 0) {
            return charSequence;
        }
        Spannable spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : null;
        if (spannableString == null) {
            spannableString = new SpannableString(charSequence);
        }
        if (!SpannedExtensions_androidKt.hasSpan(spannableString, IndentationFixSpan.class)) {
            SpannableExtensions_androidKt.setSpan(spannableString, new IndentationFixSpan(), spannableString.length() - 1, spannableString.length() - 1);
        }
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int numberOfLinesThatFitMaxHeight(TextLayout textLayout, int i) {
        int lineCount = textLayout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (textLayout.getLineBottom(i2) > i) {
                return i2;
            }
        }
        return textLayout.getLineCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean shouldAttachIndentationFixSpan(TextStyle textStyle, boolean z) {
        if (z && !TextUnit.m9233equalsimpl0(textStyle.m8527getLetterSpacingXSAIIZE(), TextUnitKt.getSp(0)) && !TextUnit.m9233equalsimpl0(textStyle.m8527getLetterSpacingXSAIIZE(), TextUnit.Companion.m9247getUnspecifiedXSAIIZE())) {
            int iM8532getTextAligne0LSkKk = textStyle.m8532getTextAligne0LSkKk();
            TextAlign.Companion companion = TextAlign.Companion;
            if (!TextAlign.m8916equalsimpl0(iM8532getTextAligne0LSkKk, companion.m8926getUnspecifiede0LSkKk()) && !TextAlign.m8916equalsimpl0(textStyle.m8532getTextAligne0LSkKk(), companion.m8925getStarte0LSkKk()) && !TextAlign.m8916equalsimpl0(textStyle.m8532getTextAligne0LSkKk(), companion.m8922getJustifye0LSkKk())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toLayoutAlign-aXe7zB0, reason: not valid java name */
    public static final int m8320toLayoutAlignaXe7zB0(int i) {
        TextAlign.Companion companion = TextAlign.Companion;
        if (TextAlign.m8916equalsimpl0(i, companion.m8923getLefte0LSkKk())) {
            return 3;
        }
        if (TextAlign.m8916equalsimpl0(i, companion.m8924getRighte0LSkKk())) {
            return 4;
        }
        if (TextAlign.m8916equalsimpl0(i, companion.m8920getCentere0LSkKk())) {
            return 2;
        }
        return (!TextAlign.m8916equalsimpl0(i, companion.m8925getStarte0LSkKk()) && TextAlign.m8916equalsimpl0(i, companion.m8921getEnde0LSkKk())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toLayoutBreakStrategy-xImikfE, reason: not valid java name */
    public static final int m8321toLayoutBreakStrategyxImikfE(int i) {
        LineBreak.Strategy.Companion companion = LineBreak.Strategy.Companion;
        if (LineBreak.Strategy.m8842equalsimpl0(i, companion.m8848getSimplefcGXIks())) {
            return 0;
        }
        if (LineBreak.Strategy.m8842equalsimpl0(i, companion.m8847getHighQualityfcGXIks())) {
            return 1;
        }
        return LineBreak.Strategy.m8842equalsimpl0(i, companion.m8846getBalancedfcGXIks()) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toLayoutHyphenationFrequency--3fSNIE, reason: not valid java name */
    public static final int m8322toLayoutHyphenationFrequency3fSNIE(int i) {
        Hyphens.Companion companion = Hyphens.Companion;
        if (Hyphens.m8808equalsimpl0(i, companion.m8812getAutovmbZdU8())) {
            return Build.VERSION.SDK_INT <= 32 ? 2 : 4;
        }
        Hyphens.m8808equalsimpl0(i, companion.m8813getNonevmbZdU8());
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toLayoutLineBreakStyle-hpcqdu8, reason: not valid java name */
    public static final int m8323toLayoutLineBreakStylehpcqdu8(int i) {
        LineBreak.Strictness.Companion companion = LineBreak.Strictness.Companion;
        if (LineBreak.Strictness.m8853equalsimpl0(i, companion.m8857getDefaultusljTpc())) {
            return 0;
        }
        if (LineBreak.Strictness.m8853equalsimpl0(i, companion.m8858getLooseusljTpc())) {
            return 1;
        }
        if (LineBreak.Strictness.m8853equalsimpl0(i, companion.m8859getNormalusljTpc())) {
            return 2;
        }
        return LineBreak.Strictness.m8853equalsimpl0(i, companion.m8860getStrictusljTpc()) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toLayoutLineBreakWordStyle-wPN0Rpw, reason: not valid java name */
    public static final int m8324toLayoutLineBreakWordStylewPN0Rpw(int i) {
        LineBreak.WordBreak.Companion companion = LineBreak.WordBreak.Companion;
        return (!LineBreak.WordBreak.m8865equalsimpl0(i, companion.m8869getDefaultjp8hJ3c()) && LineBreak.WordBreak.m8865equalsimpl0(i, companion.m8870getPhrasejp8hJ3c())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toLayoutTextGranularity-duNsdkg, reason: not valid java name */
    public static final int m8325toLayoutTextGranularityduNsdkg(int i) {
        TextGranularity.Companion companion = TextGranularity.Companion;
        return (!TextGranularity.m8449equalsimpl0(i, companion.m8453getCharacterDRrd7Zo()) && TextGranularity.m8449equalsimpl0(i, companion.m8454getWordDRrd7Zo())) ? 1 : 0;
    }
}
