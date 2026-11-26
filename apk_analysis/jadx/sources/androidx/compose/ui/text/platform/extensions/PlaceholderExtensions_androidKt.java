package androidx.compose.ui.text.platform.extensions;

import android.text.Spannable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.PlaceholderVerticalAlign;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.emoji2.text.EmojiSpan;
import defpackage.ah;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PlaceholderExtensions_androidKt {
    /* JADX INFO: renamed from: getSpanUnit--R2X_6o, reason: not valid java name */
    private static final int m8762getSpanUnitR2X_6o(long j) {
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
            return 0;
        }
        return TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA()) ? 1 : 2;
    }

    /* JADX INFO: renamed from: getSpanUnit--R2X_6o$annotations, reason: not valid java name */
    private static /* synthetic */ void m8763getSpanUnitR2X_6o$annotations(long j) {
    }

    /* JADX INFO: renamed from: getSpanVerticalAlign-do9X-Gg, reason: not valid java name */
    private static final int m8764getSpanVerticalAligndo9XGg(int i) {
        PlaceholderVerticalAlign.Companion companion = PlaceholderVerticalAlign.Companion;
        if (PlaceholderVerticalAlign.m8408equalsimpl0(i, companion.m8412getAboveBaselineJ6kI3mc())) {
            return 0;
        }
        if (PlaceholderVerticalAlign.m8408equalsimpl0(i, companion.m8418getTopJ6kI3mc())) {
            return 1;
        }
        if (PlaceholderVerticalAlign.m8408equalsimpl0(i, companion.m8413getBottomJ6kI3mc())) {
            return 2;
        }
        if (PlaceholderVerticalAlign.m8408equalsimpl0(i, companion.m8414getCenterJ6kI3mc())) {
            return 3;
        }
        if (PlaceholderVerticalAlign.m8408equalsimpl0(i, companion.m8417getTextTopJ6kI3mc())) {
            return 4;
        }
        if (PlaceholderVerticalAlign.m8408equalsimpl0(i, companion.m8415getTextBottomJ6kI3mc())) {
            return 5;
        }
        if (PlaceholderVerticalAlign.m8408equalsimpl0(i, companion.m8416getTextCenterJ6kI3mc())) {
            return 6;
        }
        ah.f("Invalid PlaceholderVerticalAlign");
        return 0;
    }

    /* JADX INFO: renamed from: getSpanVerticalAlign-do9X-Gg$annotations, reason: not valid java name */
    private static /* synthetic */ void m8765getSpanVerticalAligndo9XGg$annotations(int i) {
    }

    private static final void setPlaceholder(Spannable spannable, Placeholder placeholder, int i, int i2, Density density) {
        for (Object obj : spannable.getSpans(i, i2, EmojiSpan.class)) {
            spannable.removeSpan((EmojiSpan) obj);
        }
        SpannableExtensions_androidKt.setSpan(spannable, new PlaceholderSpan(TextUnit.m9236getValueimpl(placeholder.m8404getWidthXSAIIZE()), m8762getSpanUnitR2X_6o(placeholder.m8404getWidthXSAIIZE()), TextUnit.m9236getValueimpl(placeholder.m8402getHeightXSAIIZE()), m8762getSpanUnitR2X_6o(placeholder.m8402getHeightXSAIIZE()), density, m8764getSpanVerticalAligndo9XGg(placeholder.m8403getPlaceholderVerticalAlignJ6kI3mc())), i, i2);
    }

    public static final void setPlaceholders(Spannable spannable, List<AnnotatedString.Range<Placeholder>> list, Density density) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range<Placeholder> range = list.get(i);
            setPlaceholder(spannable, range.component1(), range.component2(), range.component3(), density);
        }
    }
}
