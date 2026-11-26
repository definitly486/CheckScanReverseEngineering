package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Dp;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionHandlesKt {
    private static final float HandleWidth = Dp.m9042constructorimpl(25.0f);
    private static final float HandleHeight = Dp.m9042constructorimpl(25.0f);
    private static final SemanticsPropertyKey<SelectionHandleInfo> SelectionHandleInfoKey = new SemanticsPropertyKey<>("SelectionHandleInfo", (bm3) null, 2, (jh2) null);

    /* JADX INFO: renamed from: getAdjustedCoordinates-k-4lQ0M, reason: not valid java name */
    public static final long m2988getAdjustedCoordinatesk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - 1.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32));
    }

    public static final float getHandleHeight() {
        return HandleHeight;
    }

    public static final float getHandleWidth() {
        return HandleWidth;
    }

    public static final SemanticsPropertyKey<SelectionHandleInfo> getSelectionHandleInfoKey() {
        return SelectionHandleInfoKey;
    }

    public static final boolean isHandleLtrDirection(ResolvedTextDirection resolvedTextDirection, boolean z) {
        if (resolvedTextDirection != ResolvedTextDirection.Ltr || z) {
            return resolvedTextDirection == ResolvedTextDirection.Rtl && z;
        }
        return true;
    }

    public static final boolean isLeftSelectionHandle(boolean z, ResolvedTextDirection resolvedTextDirection, boolean z2) {
        if (z) {
            return isHandleLtrDirection(resolvedTextDirection, z2);
        }
        return !isHandleLtrDirection(resolvedTextDirection, z2);
    }
}
