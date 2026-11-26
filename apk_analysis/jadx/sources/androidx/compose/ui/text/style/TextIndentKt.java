package androidx.compose.ui.text.style;

import androidx.compose.ui.text.SpanStyleKt;

/* JADX INFO: loaded from: classes2.dex */
public final class TextIndentKt {
    public static final TextIndent lerp(TextIndent textIndent, TextIndent textIndent2, float f) {
        return new TextIndent(SpanStyleKt.m8438lerpTextUnitInheritableC3pnCVY(textIndent.m8950getFirstLineXSAIIZE(), textIndent2.m8950getFirstLineXSAIIZE(), f), SpanStyleKt.m8438lerpTextUnitInheritableC3pnCVY(textIndent.m8951getRestLineXSAIIZE(), textIndent2.m8951getRestLineXSAIIZE(), f), null);
    }
}
