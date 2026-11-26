package androidx.compose.ui.spatial;

import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ar4;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.u96;
import defpackage.vg;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class RelativeLayoutBounds {
    public static final int $stable = 8;
    private final long bottomRight;
    private final DelegatableNode node;
    private final long screenOffset;
    private final long topLeft;
    private final float[] viewToWindowMatrix;
    private final long windowOffset;
    private final long windowSize;

    private RelativeLayoutBounds(long j, long j2, long j3, long j4, long j5, float[] fArr, DelegatableNode delegatableNode) {
        this.topLeft = j;
        this.bottomRight = j2;
        this.windowOffset = j3;
        this.screenOffset = j4;
        this.windowSize = j5;
        this.viewToWindowMatrix = fArr;
        this.node = delegatableNode;
    }

    public final List<IntRect> calculateOcclusions() {
        int i;
        int i2;
        RectManager rectManager = DelegatableNodeKt.requireOwner(this.node).getRectManager();
        int semanticsId = DelegatableNodeKt.requireLayoutNode(this.node).getSemanticsId();
        RectList rects = rectManager.getRects();
        int iIndexOf = rects.indexOf(semanticsId);
        if (iIndexOf < 0) {
            return kx2.b;
        }
        ar4 ar4VarE = u96.e();
        long[] jArr = rects.items;
        int i3 = rects.itemsSize;
        long j = jArr[iIndexOf];
        long j2 = jArr[iIndexOf + 1];
        int i4 = 0;
        while (i4 < jArr.length - 2 && i4 < i3) {
            if (i4 == iIndexOf) {
                i4 += 3;
            } else {
                long j3 = jArr[i4];
                long j4 = jArr[i4 + 1];
                if (((((j2 - j3) - InlineClassHelperKt.Uint64Low32) | ((j4 - j) - InlineClassHelperKt.Uint64Low32)) & (-9223372034707292160L)) == 0) {
                    i = i3;
                    i2 = iIndexOf;
                    int i5 = (int) (j3 >> 32);
                    int i6 = (int) j3;
                    int i7 = (int) (j4 >> 32);
                    int i8 = (int) j4;
                    if (rectManager.isTargetDrawnFirst$ui(semanticsId, ((int) jArr[i4 + 2]) & 33554431)) {
                        ar4VarE.add(new IntRect(i5, i6, i7, i8));
                    }
                } else {
                    i = i3;
                    i2 = iIndexOf;
                }
                i4 += 3;
                iIndexOf = i2;
                i3 = i;
            }
        }
        return u96.d(ar4VarE);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    public boolean equals(Object obj) {
        boolean zM6478equalsimpl0;
        if (this == obj) {
            return true;
        }
        if (obj == null || RelativeLayoutBounds.class != obj.getClass()) {
            return false;
        }
        RelativeLayoutBounds relativeLayoutBounds = (RelativeLayoutBounds) obj;
        if (this.topLeft != relativeLayoutBounds.topLeft || this.bottomRight != relativeLayoutBounds.bottomRight || this.windowSize != relativeLayoutBounds.windowSize || !IntOffset.m9169equalsimpl0(this.windowOffset, relativeLayoutBounds.windowOffset) || !IntOffset.m9169equalsimpl0(this.screenOffset, relativeLayoutBounds.screenOffset)) {
            return false;
        }
        float[] fArr = this.viewToWindowMatrix;
        float[] fArr2 = relativeLayoutBounds.viewToWindowMatrix;
        if (fArr == null) {
            if (fArr2 == null) {
                zM6478equalsimpl0 = true;
            } else {
                zM6478equalsimpl0 = false;
            }
        } else if (fArr2 == null) {
            zM6478equalsimpl0 = false;
        } else {
            zM6478equalsimpl0 = Matrix.m6478equalsimpl0(fArr, fArr2);
        }
        return zM6478equalsimpl0 && aa4.e(this.node, relativeLayoutBounds.node);
    }

    public final float fractionVisibleIn(RelativeLayoutBounds relativeLayoutBounds) {
        long j = relativeLayoutBounds.topLeft;
        long j2 = relativeLayoutBounds.bottomRight;
        return fractionVisibleInRect((int) (j >> 32), (int) j, (int) (j2 >> 32), (int) j2);
    }

    public final float fractionVisibleInRect(int i, int i2, int i3, int i4) {
        int i5 = (int) (this.topLeft >> 32);
        int iMin = Math.min(Math.max(i5, i), i3);
        int i6 = (int) this.topLeft;
        int iMin2 = Math.min(Math.max(i6, i2), i4);
        int i7 = (int) (this.bottomRight >> 32);
        int iMax = Math.max(Math.min(i7, i3), i);
        int i8 = (int) this.bottomRight;
        return Math.max((Math.max(Math.min(i8, i4), i2) - iMin2) * (iMax - iMin), 0) / Math.min((i4 - i2) * (i3 - i), (i8 - i6) * (i7 - i5));
    }

    public final float fractionVisibleInWindow() {
        long j = this.windowSize;
        return fractionVisibleInRect(0, 0, (int) (j >> 32), (int) j);
    }

    /* JADX INFO: renamed from: fractionVisibleInWindowWithInsets-E1MhUcY, reason: not valid java name */
    public final float m8290fractionVisibleInWindowWithInsetsE1MhUcY(long j, long j2) {
        long j3 = this.windowSize;
        int iM9170getXimpl = IntOffset.m9170getXimpl(this.windowOffset);
        int iM9171getYimpl = IntOffset.m9171getYimpl(this.windowOffset);
        return fractionVisibleInRect(IntOffset.m9170getXimpl(j) + iM9170getXimpl, IntOffset.m9171getYimpl(j) + iM9171getYimpl, (iM9170getXimpl + ((int) (j3 >> 32))) - IntOffset.m9170getXimpl(j2), (iM9171getYimpl + ((int) j3)) - IntOffset.m9171getYimpl(j2));
    }

    public final IntRect getBoundsInRoot() {
        long j = this.topLeft;
        long j2 = this.bottomRight;
        return new IntRect((int) (j >> 32), (int) j, (int) (j2 >> 32), (int) j2);
    }

    public final IntRect getBoundsInScreen() {
        if (this.viewToWindowMatrix == null) {
            long j = this.topLeft;
            int i = (int) (j >> 32);
            long j2 = this.bottomRight;
            int i2 = (int) (j2 >> 32);
            int i3 = (int) j2;
            int iM9170getXimpl = IntOffset.m9170getXimpl(this.screenOffset);
            int iM9171getYimpl = IntOffset.m9171getYimpl(this.screenOffset);
            return new IntRect(i + iM9170getXimpl, ((int) j) + iM9171getYimpl, i2 + iM9170getXimpl, i3 + iM9171getYimpl);
        }
        IntRect boundsInWindow = getBoundsInWindow();
        long j3 = this.windowOffset;
        return new IntRect(IntOffset.m9170getXimpl(j3) + boundsInWindow.getLeft(), IntOffset.m9171getYimpl(j3) + boundsInWindow.getTop(), IntOffset.m9170getXimpl(j3) + boundsInWindow.getRight(), IntOffset.m9171getYimpl(j3) + boundsInWindow.getBottom());
    }

    public final IntRect getBoundsInWindow() {
        long j = this.topLeft;
        int i = (int) (j >> 32);
        int i2 = (int) j;
        long j2 = this.bottomRight;
        int i3 = (int) (j2 >> 32);
        int i4 = (int) j2;
        float[] fArr = this.viewToWindowMatrix;
        if (fArr != null) {
            return IntRectKt.roundToIntRect(Matrix.m6483mapimpl(fArr, new Rect(i, i2, i3, i4)));
        }
        int iM9170getXimpl = IntOffset.m9170getXimpl(this.screenOffset) - IntOffset.m9170getXimpl(this.windowOffset);
        int iM9171getYimpl = IntOffset.m9171getYimpl(this.screenOffset) - IntOffset.m9171getYimpl(this.windowOffset);
        return new IntRect(i + iM9170getXimpl, i2 + iM9171getYimpl, i3 + iM9170getXimpl, i4 + iM9171getYimpl);
    }

    public final int getHeight() {
        return ((int) this.bottomRight) - ((int) this.topLeft);
    }

    /* JADX INFO: renamed from: getPositionInRoot-nOcc-ac, reason: not valid java name */
    public final long m8291getPositionInRootnOccac() {
        return IntOffset.m9164constructorimpl(this.topLeft);
    }

    /* JADX INFO: renamed from: getPositionInScreen-nOcc-ac, reason: not valid java name */
    public final long m8292getPositionInScreennOccac() {
        int iM9170getXimpl = IntOffset.m9170getXimpl(this.screenOffset);
        int iM9171getYimpl = IntOffset.m9171getYimpl(this.screenOffset);
        long j = this.topLeft;
        return IntOffset.m9164constructorimpl((((long) (((int) (j >> 32)) + iM9170getXimpl)) << 32) | (((long) (((int) j) + iM9171getYimpl)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getPositionInWindow-nOcc-ac, reason: not valid java name */
    public final long m8293getPositionInWindownOccac() {
        int iM9170getXimpl = IntOffset.m9170getXimpl(this.screenOffset) - IntOffset.m9170getXimpl(this.windowOffset);
        int iM9171getYimpl = IntOffset.m9171getYimpl(this.screenOffset) - IntOffset.m9171getYimpl(this.windowOffset);
        long j = this.topLeft;
        return IntOffset.m9164constructorimpl((((long) (((int) (j >> 32)) + iM9170getXimpl)) << 32) | (((long) (((int) j) + iM9171getYimpl)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final int getWidth() {
        return ((int) (this.bottomRight >> 32)) - ((int) (this.topLeft >> 32));
    }

    public int hashCode() {
        int iM9172hashCodeimpl = (IntOffset.m9172hashCodeimpl(this.screenOffset) + ((IntOffset.m9172hashCodeimpl(this.windowOffset) + vg.b(vg.b(Long.hashCode(this.topLeft) * 31, 31, this.bottomRight), 31, this.windowSize)) * 31)) * 31;
        float[] fArr = this.viewToWindowMatrix;
        return this.node.hashCode() + ((iM9172hashCodeimpl + (fArr != null ? Matrix.m6480hashCodeimpl(fArr) : 0)) * 31);
    }

    public /* synthetic */ RelativeLayoutBounds(long j, long j2, long j3, long j4, long j5, float[] fArr, DelegatableNode delegatableNode, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, fArr, delegatableNode);
    }
}
