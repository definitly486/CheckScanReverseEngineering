package androidx.compose.ui.spatial;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class ThrottledCallbacksKt {
    /* JADX INFO: renamed from: rectInfoFor-Dg36KO4, reason: not valid java name */
    public static final RelativeLayoutBounds m8304rectInfoForDg36KO4(DelegatableNode delegatableNode, long j, long j2, long j3, long j4, long j5, float[] fArr) {
        NodeCoordinator nodeCoordinatorM7874requireCoordinator64DMado = DelegatableNodeKt.m7874requireCoordinator64DMado(delegatableNode, NodeKind.m8019constructorimpl(2));
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode);
        if (!layoutNodeRequireLayoutNode.isPlaced()) {
            return null;
        }
        if (layoutNodeRequireLayoutNode.getOuterCoordinator$ui() == nodeCoordinatorM7874requireCoordinator64DMado) {
            return new RelativeLayoutBounds(j, j2, j3, j4, j5, fArr, delegatableNode, null);
        }
        long jM9164constructorimpl = IntOffset.m9164constructorimpl(j);
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9170getXimpl(jM9164constructorimpl))) << 32) | (((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(jM9164constructorimpl))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long jMo7710getSizeYbymL2g = nodeCoordinatorM7874requireCoordinator64DMado.getCoordinates().mo7710getSizeYbymL2g();
        long jM9187roundk4lQ0M = IntOffsetKt.m9187roundk4lQ0M(layoutNodeRequireLayoutNode.getOuterCoordinator$ui().getCoordinates().mo7711localPositionOfR5De75A(nodeCoordinatorM7874requireCoordinator64DMado, jM5979constructorimpl));
        return new RelativeLayoutBounds(jM9187roundk4lQ0M, IntOffset.m9164constructorimpl((((long) (IntOffset.m9170getXimpl(jM9187roundk4lQ0M) + ((int) (jMo7710getSizeYbymL2g >> 32)))) << 32) | (((long) (IntOffset.m9171getYimpl(jM9187roundk4lQ0M) + ((int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), j3, j4, j5, fArr, delegatableNode, null);
    }
}
