package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class LookaheadLayoutCoordinates implements LayoutCoordinates {
    public static final int $stable = 0;
    private final LookaheadDelegate lookaheadDelegate;

    public LookaheadLayoutCoordinates(LookaheadDelegate lookaheadDelegate) {
        this.lookaheadDelegate = lookaheadDelegate;
    }

    /* JADX INFO: renamed from: getLookaheadOffset-F1C5BW0, reason: not valid java name */
    private final long m7731getLookaheadOffsetF1C5BW0() {
        LookaheadDelegate rootLookaheadDelegate = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
        LayoutCoordinates coordinates = rootLookaheadDelegate.getCoordinates();
        Offset.Companion companion = Offset.Companion;
        return Offset.m5991minusMKHz9U(mo7711localPositionOfR5De75A(coordinates, companion.m6003getZeroF1C5BW0()), getCoordinator().mo7711localPositionOfR5De75A(rootLookaheadDelegate.getCoordinator(), companion.m6003getZeroF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public int get(AlignmentLine alignmentLine) {
        return this.lookaheadDelegate.get(alignmentLine);
    }

    public final NodeCoordinator getCoordinator() {
        return this.lookaheadDelegate.getCoordinator();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean getIntroducesMotionFrameOfReference() {
        return this.lookaheadDelegate.isPlacedUnderMotionFrameOfReference();
    }

    public final LookaheadDelegate getLookaheadDelegate() {
        return this.lookaheadDelegate;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public LayoutCoordinates getParentCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(NodeCoordinator.ExpectAttachedLayoutCoordinates);
        }
        NodeCoordinator wrappedBy$ui = getCoordinator().getWrappedBy$ui();
        if (wrappedBy$ui == null || (lookaheadDelegate = wrappedBy$ui.getLookaheadDelegate()) == null) {
            return null;
        }
        return lookaheadDelegate.getCoordinates();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public LayoutCoordinates getParentLayoutCoordinates() {
        LookaheadDelegate lookaheadDelegate;
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(NodeCoordinator.ExpectAttachedLayoutCoordinates);
        }
        NodeCoordinator wrappedBy$ui = getCoordinator().getLayoutNode().getOuterCoordinator$ui().getWrappedBy$ui();
        if (wrappedBy$ui == null || (lookaheadDelegate = wrappedBy$ui.getLookaheadDelegate()) == null) {
            return null;
        }
        return lookaheadDelegate.getCoordinates();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Set<AlignmentLine> getProvidedAlignmentLines() {
        return getCoordinator().getProvidedAlignmentLines();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: getSize-YbymL2g */
    public long mo7710getSizeYbymL2g() {
        LookaheadDelegate lookaheadDelegate = this.lookaheadDelegate;
        return IntSize.m9208constructorimpl((((long) lookaheadDelegate.getWidth()) << 32) | (((long) lookaheadDelegate.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean isAttached() {
        return getCoordinator().isAttached();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z) {
        return getCoordinator().localBoundingBoxOf(layoutCoordinates, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localPositionOf-R5De75A */
    public long mo7711localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo7712localPositionOfS_NoaFU(layoutCoordinates, j, true);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localPositionOf-S_NoaFU */
    public long mo7712localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j, boolean z) {
        if (!(layoutCoordinates instanceof LookaheadLayoutCoordinates)) {
            LookaheadDelegate rootLookaheadDelegate = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
            long jMo7712localPositionOfS_NoaFU = mo7712localPositionOfS_NoaFU(rootLookaheadDelegate.getLookaheadLayoutCoordinates(), j, z);
            long jMo7947getPositionnOccac = rootLookaheadDelegate.mo7947getPositionnOccac();
            float fM9170getXimpl = IntOffset.m9170getXimpl(jMo7947getPositionnOccac);
            long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(jMo7712localPositionOfS_NoaFU, Offset.m5979constructorimpl((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(jMo7947getPositionnOccac)))) | (Float.floatToRawIntBits(fM9170getXimpl) << 32)));
            LayoutCoordinates parentCoordinates = rootLookaheadDelegate.getCoordinator().getParentCoordinates();
            if (parentCoordinates == null) {
                parentCoordinates = rootLookaheadDelegate.getCoordinator().getCoordinates();
            }
            return Offset.m5992plusMKHz9U(jM5991minusMKHz9U, parentCoordinates.mo7712localPositionOfS_NoaFU(layoutCoordinates, Offset.Companion.m6003getZeroF1C5BW0(), z));
        }
        LookaheadDelegate lookaheadDelegate = ((LookaheadLayoutCoordinates) layoutCoordinates).lookaheadDelegate;
        lookaheadDelegate.getCoordinator().onCoordinatesUsed$ui();
        LookaheadDelegate lookaheadDelegate2 = getCoordinator().findCommonAncestor$ui(lookaheadDelegate.getCoordinator()).getLookaheadDelegate();
        if (lookaheadDelegate2 != null) {
            long jM9173minusqkQi6aY = IntOffset.m9173minusqkQi6aY(IntOffset.m9174plusqkQi6aY(lookaheadDelegate.m7958positionIniSbpLlY$ui(lookaheadDelegate2, !z), IntOffsetKt.m9187roundk4lQ0M(j)), this.lookaheadDelegate.m7958positionIniSbpLlY$ui(lookaheadDelegate2, !z));
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9170getXimpl(jM9173minusqkQi6aY))) << 32) | (((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(jM9173minusqkQi6aY))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        LookaheadDelegate rootLookaheadDelegate2 = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(lookaheadDelegate);
        long jM9174plusqkQi6aY = IntOffset.m9174plusqkQi6aY(IntOffset.m9174plusqkQi6aY(lookaheadDelegate.m7958positionIniSbpLlY$ui(rootLookaheadDelegate2, !z), rootLookaheadDelegate2.mo7947getPositionnOccac()), IntOffsetKt.m9187roundk4lQ0M(j));
        LookaheadDelegate rootLookaheadDelegate3 = LookaheadLayoutCoordinatesKt.getRootLookaheadDelegate(this.lookaheadDelegate);
        long jM9173minusqkQi6aY2 = IntOffset.m9173minusqkQi6aY(jM9174plusqkQi6aY, IntOffset.m9174plusqkQi6aY(this.lookaheadDelegate.m7958positionIniSbpLlY$ui(rootLookaheadDelegate3, !z), rootLookaheadDelegate3.mo7947getPositionnOccac()));
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9170getXimpl(jM9173minusqkQi6aY2))) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(jM9173minusqkQi6aY2)))));
        NodeCoordinator wrappedBy$ui = rootLookaheadDelegate3.getCoordinator().getWrappedBy$ui();
        wrappedBy$ui.getClass();
        NodeCoordinator wrappedBy$ui2 = rootLookaheadDelegate2.getCoordinator().getWrappedBy$ui();
        wrappedBy$ui2.getClass();
        return wrappedBy$ui.mo7712localPositionOfS_NoaFU(wrappedBy$ui2, jM5979constructorimpl, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToRoot-MK-Hz9U */
    public long mo7713localToRootMKHz9U(long j) {
        return getCoordinator().mo7713localToRootMKHz9U(Offset.m5992plusMKHz9U(j, m7731getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToScreen-MK-Hz9U */
    public long mo7714localToScreenMKHz9U(long j) {
        return getCoordinator().mo7714localToScreenMKHz9U(Offset.m5992plusMKHz9U(j, m7731getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToWindow-MK-Hz9U */
    public long mo7715localToWindowMKHz9U(long j) {
        return getCoordinator().mo7715localToWindowMKHz9U(Offset.m5992plusMKHz9U(j, m7731getLookaheadOffsetF1C5BW0()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: screenToLocal-MK-Hz9U */
    public long mo7716screenToLocalMKHz9U(long j) {
        return Offset.m5992plusMKHz9U(getCoordinator().mo7716screenToLocalMKHz9U(j), m7731getLookaheadOffsetF1C5BW0());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: transformFrom-EL8BTi8 */
    public void mo7717transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr) {
        getCoordinator().mo7717transformFromEL8BTi8(layoutCoordinates, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: transformToScreen-58bKbWc */
    public void mo7718transformToScreen58bKbWc(float[] fArr) {
        getCoordinator().mo7718transformToScreen58bKbWc(fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: windowToLocal-MK-Hz9U */
    public long mo7719windowToLocalMKHz9U(long j) {
        return Offset.m5992plusMKHz9U(getCoordinator().mo7719windowToLocalMKHz9U(j), m7731getLookaheadOffsetF1C5BW0());
    }
}
