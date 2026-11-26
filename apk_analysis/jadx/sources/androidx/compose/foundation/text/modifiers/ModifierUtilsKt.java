package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;

/* JADX INFO: loaded from: classes.dex */
public final class ModifierUtilsKt {
    /* JADX INFO: renamed from: maxWidthForTextLayout-R2G3SPE, reason: not valid java name */
    public static final int m2921maxWidthForTextLayoutR2G3SPE(long j, boolean z, int i) {
        if ((z || TextOverflow.m8968equalsimpl0(i, TextOverflow.Companion.m8978getEllipsisgIe3tQ8())) && Constraints.m8991getHasBoundedWidthimpl(j)) {
            return Constraints.m8995getMaxWidthimpl(j);
        }
        return Integer.MAX_VALUE;
    }
}
