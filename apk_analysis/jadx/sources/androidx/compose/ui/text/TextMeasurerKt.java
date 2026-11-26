package androidx.compose.ui.text;

import androidx.compose.ui.text.style.TextOverflow;

/* JADX INFO: loaded from: classes2.dex */
public final class TextMeasurerKt {
    private static final int DefaultCacheSize = 8;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isEllipsis-MW5-ApA, reason: not valid java name */
    public static final boolean m8469isEllipsisMW5ApA(int i) {
        TextOverflow.Companion companion = TextOverflow.Companion;
        return TextOverflow.m8968equalsimpl0(i, companion.m8978getEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(i, companion.m8980getStartEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(i, companion.m8979getMiddleEllipsisgIe3tQ8());
    }
}
