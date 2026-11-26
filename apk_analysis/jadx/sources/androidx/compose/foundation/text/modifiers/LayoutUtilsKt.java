package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import defpackage.kx6;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutUtilsKt {
    /* JADX INFO: renamed from: finalConstraints-tfFHcEY, reason: not valid java name */
    public static final long m2916finalConstraintstfFHcEY(long j, boolean z, int i, float f) {
        return Constraints.Companion.m9004fitPrioritizingWidthZbe2FdA(0, m2918finalMaxWidthtfFHcEY(j, z, i, f), 0, Constraints.m8994getMaxHeightimpl(j));
    }

    /* JADX INFO: renamed from: finalMaxLines-xdlQI24, reason: not valid java name */
    public static final int m2917finalMaxLinesxdlQI24(boolean z, int i, int i2) {
        if ((z || !m2919isEllipsisMW5ApA(i)) && i2 >= 1) {
            return i2;
        }
        return 1;
    }

    /* JADX INFO: renamed from: finalMaxWidth-tfFHcEY, reason: not valid java name */
    public static final int m2918finalMaxWidthtfFHcEY(long j, boolean z, int i, float f) {
        int iM8995getMaxWidthimpl = ((z || m2919isEllipsisMW5ApA(i)) && Constraints.m8991getHasBoundedWidthimpl(j)) ? Constraints.m8995getMaxWidthimpl(j) : Integer.MAX_VALUE;
        return Constraints.m8997getMinWidthimpl(j) == iM8995getMaxWidthimpl ? iM8995getMaxWidthimpl : kx6.f(TextDelegateKt.ceilToIntPx(f), Constraints.m8997getMinWidthimpl(j), iM8995getMaxWidthimpl);
    }

    /* JADX INFO: renamed from: isEllipsis-MW5-ApA, reason: not valid java name */
    public static final boolean m2919isEllipsisMW5ApA(int i) {
        TextOverflow.Companion companion = TextOverflow.Companion;
        return TextOverflow.m8968equalsimpl0(i, companion.m8978getEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(i, companion.m8980getStartEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(i, companion.m8979getMiddleEllipsisgIe3tQ8());
    }
}
