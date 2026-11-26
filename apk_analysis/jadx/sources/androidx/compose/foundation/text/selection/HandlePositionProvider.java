package androidx.compose.foundation.text.selection;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* JADX INFO: loaded from: classes.dex */
public final class HandlePositionProvider implements PopupPositionProvider {
    public static final int $stable = 0;
    private final Alignment handleReferencePoint;
    private final OffsetProvider positionProvider;
    private long prevPosition = Offset.Companion.m6003getZeroF1C5BW0();

    public HandlePositionProvider(Alignment alignment, OffsetProvider offsetProvider) {
        this.handleReferencePoint = alignment;
        this.positionProvider = offsetProvider;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4 */
    public long mo1402calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        long jMo2453provideF1C5BW0 = this.positionProvider.mo2453provideF1C5BW0();
        if ((9223372034707292159L & jMo2453provideF1C5BW0) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            jMo2453provideF1C5BW0 = this.prevPosition;
        }
        this.prevPosition = jMo2453provideF1C5BW0;
        return IntOffset.m9174plusqkQi6aY(IntOffset.m9174plusqkQi6aY(intRect.m9199getTopLeftnOccac(), IntOffsetKt.m9187roundk4lQ0M(jMo2453provideF1C5BW0)), this.handleReferencePoint.mo5655alignKFBX0sM(j2, IntSize.Companion.m9218getZeroYbymL2g(), layoutDirection));
    }
}
