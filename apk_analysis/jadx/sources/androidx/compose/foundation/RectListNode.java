package androidx.compose.foundation;

import android.graphics.Rect;
import android.view.View;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.media3.muxer.MuxerUtil;
import defpackage.nl3;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public abstract class RectListNode extends Modifier.Node implements GlobalPositionAwareModifierNode {
    public static final int $stable = 8;
    private Rect androidRect;
    private nl3<? super LayoutCoordinates, androidx.compose.ui.geometry.Rect> rect;

    public RectListNode(nl3<? super LayoutCoordinates, androidx.compose.ui.geometry.Rect> nl3Var) {
        this.rect = nl3Var;
    }

    private final Rect calcBounds(LayoutCoordinates layoutCoordinates, androidx.compose.ui.geometry.Rect rect) {
        LayoutCoordinates layoutCoordinatesFindRootCoordinates = LayoutCoordinatesKt.findRootCoordinates(layoutCoordinates);
        long jMo7711localPositionOfR5De75A = layoutCoordinatesFindRootCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates, rect.m6022getTopLeftF1C5BW0());
        long jMo7711localPositionOfR5De75A2 = layoutCoordinatesFindRootCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates, rect.m6023getTopRightF1C5BW0());
        long jMo7711localPositionOfR5De75A3 = layoutCoordinatesFindRootCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates, rect.m6015getBottomLeftF1C5BW0());
        long jMo7711localPositionOfR5De75A4 = layoutCoordinatesFindRootCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates, rect.m6016getBottomRightF1C5BW0());
        int i = (int) (jMo7711localPositionOfR5De75A >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i);
        int i2 = (int) (jMo7711localPositionOfR5De75A2 >> 32);
        int i3 = (int) (jMo7711localPositionOfR5De75A3 >> 32);
        int i4 = (int) (jMo7711localPositionOfR5De75A4 >> 32);
        boolean z = true;
        float[] fArr = {Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat(i4)};
        int i5 = 0;
        while (i5 < 3) {
            fIntBitsToFloat = Math.min(fIntBitsToFloat, fArr[i5]);
            i5++;
            z = z;
        }
        boolean z2 = z;
        int i6 = (int) (jMo7711localPositionOfR5De75A & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i6);
        int i7 = (int) (jMo7711localPositionOfR5De75A2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat3 = Float.intBitsToFloat(i7);
        int i8 = (int) (jMo7711localPositionOfR5De75A3 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat4 = Float.intBitsToFloat(i8);
        int i9 = (int) (jMo7711localPositionOfR5De75A4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        float fIntBitsToFloat5 = Float.intBitsToFloat(i9);
        float[] fArr2 = new float[3];
        fArr2[0] = fIntBitsToFloat3;
        fArr2[z2 ? 1 : 0] = fIntBitsToFloat4;
        fArr2[2] = fIntBitsToFloat5;
        for (int i10 = 0; i10 < 3; i10++) {
            fIntBitsToFloat2 = Math.min(fIntBitsToFloat2, fArr2[i10]);
        }
        float fIntBitsToFloat6 = Float.intBitsToFloat(i);
        float fIntBitsToFloat7 = Float.intBitsToFloat(i2);
        float fIntBitsToFloat8 = Float.intBitsToFloat(i3);
        float fIntBitsToFloat9 = Float.intBitsToFloat(i4);
        float[] fArr3 = new float[3];
        fArr3[0] = fIntBitsToFloat7;
        fArr3[z2 ? 1 : 0] = fIntBitsToFloat8;
        fArr3[2] = fIntBitsToFloat9;
        for (int i11 = 0; i11 < 3; i11++) {
            fIntBitsToFloat6 = Math.max(fIntBitsToFloat6, fArr3[i11]);
        }
        float fIntBitsToFloat10 = Float.intBitsToFloat(i6);
        float fIntBitsToFloat11 = Float.intBitsToFloat(i7);
        float fIntBitsToFloat12 = Float.intBitsToFloat(i8);
        float fIntBitsToFloat13 = Float.intBitsToFloat(i9);
        float[] fArr4 = new float[3];
        fArr4[0] = fIntBitsToFloat11;
        fArr4[z2 ? 1 : 0] = fIntBitsToFloat12;
        fArr4[2] = fIntBitsToFloat13;
        for (int i12 = 0; i12 < 3; i12++) {
            fIntBitsToFloat10 = Math.max(fIntBitsToFloat10, fArr4[i12]);
        }
        return new Rect(w65.b(fIntBitsToFloat), w65.b(fIntBitsToFloat2), w65.b(fIntBitsToFloat6), w65.b(fIntBitsToFloat10));
    }

    private final void replaceRect(Rect rect) {
        MutableVector<Rect> mutableVectorCurrentRects = currentRects();
        Rect rect2 = this.androidRect;
        if (rect2 != null) {
            mutableVectorCurrentRects.remove(rect2);
        }
        if (rect != null && !rect.isEmpty()) {
            mutableVectorCurrentRects.add(rect);
        }
        updateRects(mutableVectorCurrentRects);
        this.androidRect = rect;
    }

    public abstract MutableVector<Rect> currentRects();

    public nl3<LayoutCoordinates, androidx.compose.ui.geometry.Rect> getRect() {
        return this.rect;
    }

    public final View getView() {
        return DelegatableNode_androidKt.requireView(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        super.onDetach();
        replaceRect(null);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        Rect rectCalcBounds;
        if (getRect() == null) {
            androidx.compose.ui.geometry.Rect rectBoundsInRoot = LayoutCoordinatesKt.boundsInRoot(layoutCoordinates);
            rectCalcBounds = new Rect(w65.b(rectBoundsInRoot.getLeft()), w65.b(rectBoundsInRoot.getTop()), w65.b(rectBoundsInRoot.getRight()), w65.b(rectBoundsInRoot.getBottom()));
        } else {
            nl3<LayoutCoordinates, androidx.compose.ui.geometry.Rect> rect = getRect();
            rect.getClass();
            rectCalcBounds = calcBounds(layoutCoordinates, rect.invoke(layoutCoordinates));
        }
        replaceRect(rectCalcBounds);
    }

    public void setRect(nl3<? super LayoutCoordinates, androidx.compose.ui.geometry.Rect> nl3Var) {
        this.rect = nl3Var;
    }

    public abstract void updateRects(MutableVector<Rect> mutableVector);
}
