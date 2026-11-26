package androidx.compose.ui.window;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class AlignmentOffsetPositionProvider implements PopupPositionProvider {
    public static final int $stable = 0;
    private final Alignment alignment;
    private final long offset;

    private AlignmentOffsetPositionProvider(Alignment alignment, long j) {
        this.alignment = alignment;
        this.offset = j;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4 */
    public long mo1402calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        Alignment alignment = this.alignment;
        IntSize.Companion companion = IntSize.Companion;
        long jMo5655alignKFBX0sM = alignment.mo5655alignKFBX0sM(companion.m9218getZeroYbymL2g(), intRect.m9197getSizeYbymL2g(), layoutDirection);
        return IntOffset.m9174plusqkQi6aY(IntOffset.m9174plusqkQi6aY(IntOffset.m9174plusqkQi6aY(intRect.m9199getTopLeftnOccac(), jMo5655alignKFBX0sM), IntOffset.m9178unaryMinusnOccac(this.alignment.mo5655alignKFBX0sM(companion.m9218getZeroYbymL2g(), j2, layoutDirection))), IntOffset.m9164constructorimpl((((long) (IntOffset.m9170getXimpl(this.offset) * (layoutDirection == LayoutDirection.Ltr ? 1 : -1))) << 32) | (((long) IntOffset.m9171getYimpl(this.offset)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    /* JADX INFO: renamed from: getOffset-nOcc-ac, reason: not valid java name */
    public final long m9293getOffsetnOccac() {
        return this.offset;
    }

    public /* synthetic */ AlignmentOffsetPositionProvider(Alignment alignment, long j, jh2 jh2Var) {
        this(alignment, j);
    }
}
