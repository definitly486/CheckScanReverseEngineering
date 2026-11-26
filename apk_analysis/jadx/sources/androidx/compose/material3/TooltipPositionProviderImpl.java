package androidx.compose.material3;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
final class TooltipPositionProviderImpl implements PopupPositionProvider {
    private final int tooltipAnchorSpacing;
    private final int type;

    private TooltipPositionProviderImpl(int i, int i2) {
        this.type = i;
        this.tooltipAnchorSpacing = i2;
    }

    /* JADX INFO: renamed from: abovePositioning-uHY26d4, reason: not valid java name */
    public final long m4272abovePositioninguHY26d4(IntRect intRect, long j, long j2) {
        int i = (int) (j >> 32);
        int iB = defpackage.k.b(intRect.getWidth(), i, 2, intRect.getLeft());
        if (iB < 0) {
            iB = intRect.getLeft();
        } else if (iB + i > ((int) (j2 >> 32))) {
            iB = intRect.getRight() - i;
        }
        int top = (intRect.getTop() - ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) - this.tooltipAnchorSpacing;
        if (top < 0) {
            top = intRect.getBottom() + this.tooltipAnchorSpacing;
        }
        return IntOffset.m9164constructorimpl((((long) iB) << 32) | (((long) top) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: belowPositioning-uHY26d4, reason: not valid java name */
    public final long m4273belowPositioninguHY26d4(IntRect intRect, long j, long j2) {
        int i = (int) (j >> 32);
        int iB = defpackage.k.b(intRect.getWidth(), i, 2, intRect.getLeft());
        if (iB < 0) {
            iB = intRect.getLeft();
        } else if (iB + i > ((int) (j2 >> 32))) {
            iB = intRect.getRight() - i;
        }
        int bottom = intRect.getBottom() + this.tooltipAnchorSpacing;
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (bottom + i2 > ((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
            bottom = (intRect.getTop() - i2) - this.tooltipAnchorSpacing;
        }
        return IntOffset.m9164constructorimpl((((long) iB) << 32) | (((long) bottom) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4 */
    public long mo1402calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        int i = this.type;
        TooltipAnchorPosition.Companion companion = TooltipAnchorPosition.Companion;
        if (TooltipAnchorPosition.m4247equalsimpl0(i, companion.m4254getLeftlOKsHw4())) {
            return m4276leftPositioningoFUgxo0(intRect, j2);
        }
        if (TooltipAnchorPosition.m4247equalsimpl0(i, companion.m4255getRightlOKsHw4())) {
            return m4277rightPositioninguHY26d4(intRect, j2, j);
        }
        if (TooltipAnchorPosition.m4247equalsimpl0(i, companion.m4251getAbovelOKsHw4())) {
            return m4272abovePositioninguHY26d4(intRect, j2, j);
        }
        if (TooltipAnchorPosition.m4247equalsimpl0(i, companion.m4252getBelowlOKsHw4())) {
            return m4273belowPositioninguHY26d4(intRect, j2, j);
        }
        if (TooltipAnchorPosition.m4247equalsimpl0(i, companion.m4256getStartlOKsHw4())) {
            return m4278startPositioning_JLpSYE(layoutDirection, intRect, j2, j);
        }
        return TooltipAnchorPosition.m4247equalsimpl0(i, companion.m4253getEndlOKsHw4()) ? m4274endPositioning_JLpSYE(layoutDirection, intRect, j2, j) : m4272abovePositioninguHY26d4(intRect, j2, j);
    }

    /* JADX INFO: renamed from: endPositioning-_JLpSYE, reason: not valid java name */
    public final long m4274endPositioning_JLpSYE(LayoutDirection layoutDirection, IntRect intRect, long j, long j2) {
        return layoutDirection == LayoutDirection.Ltr ? m4277rightPositioninguHY26d4(intRect, j, j2) : m4276leftPositioningoFUgxo0(intRect, j);
    }

    public final int getTooltipAnchorSpacing() {
        return this.tooltipAnchorSpacing;
    }

    /* JADX INFO: renamed from: getType-lOKsHw4, reason: not valid java name */
    public final int m4275getTypelOKsHw4() {
        return this.type;
    }

    /* JADX INFO: renamed from: leftPositioning-oFUgxo0, reason: not valid java name */
    public final long m4276leftPositioningoFUgxo0(IntRect intRect, long j) {
        int left = intRect.getLeft() - (((int) (j >> 32)) + this.tooltipAnchorSpacing);
        if (left < 0) {
            left = intRect.getRight() + this.tooltipAnchorSpacing;
        }
        return IntOffset.m9164constructorimpl((((long) (((intRect.getBottom() + intRect.getTop()) - ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) / 2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) left) << 32));
    }

    /* JADX INFO: renamed from: rightPositioning-uHY26d4, reason: not valid java name */
    public final long m4277rightPositioninguHY26d4(IntRect intRect, long j, long j2) {
        int right = intRect.getRight() + this.tooltipAnchorSpacing;
        int i = (int) (j >> 32);
        if (right + i > ((int) (j2 >> 32))) {
            right = intRect.getLeft() - (i + this.tooltipAnchorSpacing);
        }
        return IntOffset.m9164constructorimpl((((long) (((intRect.getBottom() + intRect.getTop()) - ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) / 2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) right) << 32));
    }

    /* JADX INFO: renamed from: startPositioning-_JLpSYE, reason: not valid java name */
    public final long m4278startPositioning_JLpSYE(LayoutDirection layoutDirection, IntRect intRect, long j, long j2) {
        return layoutDirection == LayoutDirection.Ltr ? m4276leftPositioningoFUgxo0(intRect, j) : m4277rightPositioninguHY26d4(intRect, j, j2);
    }

    public /* synthetic */ TooltipPositionProviderImpl(int i, int i2, jh2 jh2Var) {
        this(i, i2);
    }
}
