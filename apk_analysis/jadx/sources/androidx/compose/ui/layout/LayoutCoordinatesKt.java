package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutCoordinatesKt {
    public static final Rect boundsInParent(LayoutCoordinates layoutCoordinates) {
        Rect rectLocalBoundingBoxOf$default;
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        return (parentLayoutCoordinates == null || (rectLocalBoundingBoxOf$default = LayoutCoordinates.localBoundingBoxOf$default(parentLayoutCoordinates, layoutCoordinates, false, 2, null)) == null) ? new Rect(0.0f, 0.0f, (int) (layoutCoordinates.mo7710getSizeYbymL2g() >> 32), (int) (layoutCoordinates.mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) : rectLocalBoundingBoxOf$default;
    }

    public static final Rect boundsInRoot(LayoutCoordinates layoutCoordinates) {
        return LayoutCoordinates.localBoundingBoxOf$default(findRootCoordinates(layoutCoordinates), layoutCoordinates, false, 2, null);
    }

    public static final Rect boundsInWindow(LayoutCoordinates layoutCoordinates, boolean z) {
        LayoutCoordinates layoutCoordinatesFindRootCoordinates = findRootCoordinates(layoutCoordinates);
        float fMo7710getSizeYbymL2g = (int) (layoutCoordinatesFindRootCoordinates.mo7710getSizeYbymL2g() >> 32);
        float fMo7710getSizeYbymL2g2 = (int) (layoutCoordinatesFindRootCoordinates.mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        Rect rectLocalBoundingBoxOf = layoutCoordinatesFindRootCoordinates.localBoundingBoxOf(layoutCoordinates, z);
        float left = rectLocalBoundingBoxOf.getLeft();
        if (z) {
            if (left < 0.0f) {
                left = 0.0f;
            }
            if (left > fMo7710getSizeYbymL2g) {
                left = fMo7710getSizeYbymL2g;
            }
        }
        float top = rectLocalBoundingBoxOf.getTop();
        if (z) {
            if (top < 0.0f) {
                top = 0.0f;
            }
            if (top > fMo7710getSizeYbymL2g2) {
                top = fMo7710getSizeYbymL2g2;
            }
        }
        if (z) {
            float right = rectLocalBoundingBoxOf.getRight();
            if (right < 0.0f) {
                right = 0.0f;
            }
            if (right <= fMo7710getSizeYbymL2g) {
                fMo7710getSizeYbymL2g = right;
            }
        } else {
            fMo7710getSizeYbymL2g = rectLocalBoundingBoxOf.getRight();
        }
        if (z) {
            float bottom = rectLocalBoundingBoxOf.getBottom();
            float f = bottom >= 0.0f ? bottom : 0.0f;
            if (f <= fMo7710getSizeYbymL2g2) {
                fMo7710getSizeYbymL2g2 = f;
            }
        } else {
            fMo7710getSizeYbymL2g2 = rectLocalBoundingBoxOf.getBottom();
        }
        if (left == fMo7710getSizeYbymL2g || top == fMo7710getSizeYbymL2g2) {
            return Rect.Companion.getZero();
        }
        long jMo7715localToWindowMKHz9U = layoutCoordinatesFindRootCoordinates.mo7715localToWindowMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(left)) << 32) | (((long) Float.floatToRawIntBits(top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        long jMo7715localToWindowMKHz9U2 = layoutCoordinatesFindRootCoordinates.mo7715localToWindowMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fMo7710getSizeYbymL2g)) << 32) | (((long) Float.floatToRawIntBits(top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        long jMo7715localToWindowMKHz9U3 = layoutCoordinatesFindRootCoordinates.mo7715localToWindowMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fMo7710getSizeYbymL2g)) << 32) | (((long) Float.floatToRawIntBits(fMo7710getSizeYbymL2g2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        long jMo7715localToWindowMKHz9U4 = layoutCoordinatesFindRootCoordinates.mo7715localToWindowMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fMo7710getSizeYbymL2g2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(left)) << 32)));
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U2 >> 32));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U4 >> 32));
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U3 >> 32));
        float fMin = Math.min(fIntBitsToFloat, Math.min(fIntBitsToFloat2, Math.min(fIntBitsToFloat3, fIntBitsToFloat4)));
        float fMax = Math.max(fIntBitsToFloat, Math.max(fIntBitsToFloat2, Math.max(fIntBitsToFloat3, fIntBitsToFloat4)));
        float fIntBitsToFloat5 = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fIntBitsToFloat6 = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fIntBitsToFloat7 = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fIntBitsToFloat8 = Float.intBitsToFloat((int) (jMo7715localToWindowMKHz9U3 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return new Rect(fMin, Math.min(fIntBitsToFloat5, Math.min(fIntBitsToFloat6, Math.min(fIntBitsToFloat7, fIntBitsToFloat8))), fMax, Math.max(fIntBitsToFloat5, Math.max(fIntBitsToFloat6, Math.max(fIntBitsToFloat7, fIntBitsToFloat8))));
    }

    public static /* synthetic */ Rect boundsInWindow$default(LayoutCoordinates layoutCoordinates, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return boundsInWindow(layoutCoordinates, z);
    }

    public static final LayoutCoordinates findRootCoordinates(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        while (true) {
            LayoutCoordinates layoutCoordinates3 = parentLayoutCoordinates;
            layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates3;
            if (layoutCoordinates == null) {
                break;
            }
            parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        }
        NodeCoordinator nodeCoordinator = layoutCoordinates2 instanceof NodeCoordinator ? (NodeCoordinator) layoutCoordinates2 : null;
        if (nodeCoordinator == null) {
            return layoutCoordinates2;
        }
        NodeCoordinator wrappedBy$ui = nodeCoordinator.getWrappedBy$ui();
        while (true) {
            NodeCoordinator nodeCoordinator2 = wrappedBy$ui;
            NodeCoordinator nodeCoordinator3 = nodeCoordinator;
            nodeCoordinator = nodeCoordinator2;
            if (nodeCoordinator == null) {
                return nodeCoordinator3;
            }
            wrappedBy$ui = nodeCoordinator.getWrappedBy$ui();
        }
    }

    public static final long positionInParent(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        return parentLayoutCoordinates != null ? parentLayoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates, Offset.Companion.m6003getZeroF1C5BW0()) : Offset.Companion.m6003getZeroF1C5BW0();
    }

    public static final long positionInRoot(LayoutCoordinates layoutCoordinates) {
        return layoutCoordinates.mo7713localToRootMKHz9U(Offset.Companion.m6003getZeroF1C5BW0());
    }

    public static final long positionInWindow(LayoutCoordinates layoutCoordinates) {
        return layoutCoordinates.mo7715localToWindowMKHz9U(Offset.Companion.m6003getZeroF1C5BW0());
    }

    public static final long positionOnScreen(LayoutCoordinates layoutCoordinates) {
        return layoutCoordinates.mo7714localToScreenMKHz9U(Offset.Companion.m6003getZeroF1C5BW0());
    }
}
