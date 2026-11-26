package androidx.compose.foundation.text;

import androidx.compose.ui.unit.TextUnitKt;

/* JADX INFO: loaded from: classes.dex */
public final class TextAutoSizeDefaults {
    public static final int $stable = 0;
    public static final TextAutoSizeDefaults INSTANCE = new TextAutoSizeDefaults();
    private static final long MinFontSize = TextUnitKt.getSp(12);
    private static final long MaxFontSize = TextUnitKt.getSp(112);

    private TextAutoSizeDefaults() {
    }

    /* JADX INFO: renamed from: getMaxFontSize-XSAIIZE, reason: not valid java name */
    public final long m2586getMaxFontSizeXSAIIZE() {
        return MaxFontSize;
    }

    /* JADX INFO: renamed from: getMinFontSize-XSAIIZE, reason: not valid java name */
    public final long m2587getMinFontSizeXSAIIZE() {
        return MinFontSize;
    }
}
