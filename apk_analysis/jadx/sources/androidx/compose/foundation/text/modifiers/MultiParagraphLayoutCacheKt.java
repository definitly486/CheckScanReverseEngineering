package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.ki0;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiParagraphLayoutCacheKt {
    private static final long DefaultFontSize = TextUnitKt.getSp(14);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: times-NB67dxo, reason: not valid java name */
    public static final long m2934timesNB67dxo(long j, long j2) {
        if (!TextUnit.m9238isEmimpl(j2)) {
            throw new IllegalArgumentException("The multiplier must be in em, but was " + ((Object) TextUnit.m9243toStringimpl(j2)) + '.');
        }
        if (TextUnit.m9238isEmimpl(j)) {
            ki0.c(TextUnit.m9243toStringimpl(j2), "Cannot convert Em to Px when style.fontSize is Em (", "). Please declare the style.fontSize with Sp units instead.");
            return 0L;
        }
        if (TextUnit.m9234getRawTypeimpl(j) != 0) {
            float fM9236getValueimpl = TextUnit.m9236getValueimpl(j2);
            TextUnitKt.m9249checkArithmeticR2X_6o(j);
            return TextUnitKt.pack(TextUnit.m9234getRawTypeimpl(j), TextUnit.m9236getValueimpl(j) * fM9236getValueimpl);
        }
        long j3 = DefaultFontSize;
        float fM9236getValueimpl2 = TextUnit.m9236getValueimpl(j2);
        TextUnitKt.m9249checkArithmeticR2X_6o(j3);
        return TextUnitKt.pack(TextUnit.m9234getRawTypeimpl(j3), TextUnit.m9236getValueimpl(j3) * fM9236getValueimpl2);
    }
}
