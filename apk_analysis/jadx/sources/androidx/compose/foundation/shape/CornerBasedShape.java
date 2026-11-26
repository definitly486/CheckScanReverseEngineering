package androidx.compose.foundation.shape;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Interpolatable;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public abstract class CornerBasedShape implements Shape, Interpolatable {
    public static final int $stable = 0;
    private final CornerSize bottomEnd;
    private final CornerSize bottomStart;
    private final CornerSize topEnd;
    private final CornerSize topStart;

    public CornerBasedShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        this.topStart = cornerSize;
        this.topEnd = cornerSize2;
        this.bottomEnd = cornerSize3;
        this.bottomStart = cornerSize4;
    }

    public static /* synthetic */ CornerBasedShape copy$default(CornerBasedShape cornerBasedShape, CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: copy");
            return null;
        }
        if ((i & 1) != 0) {
            cornerSize = cornerBasedShape.topStart;
        }
        if ((i & 2) != 0) {
            cornerSize2 = cornerBasedShape.topEnd;
        }
        if ((i & 4) != 0) {
            cornerSize3 = cornerBasedShape.bottomEnd;
        }
        if ((i & 8) != 0) {
            cornerSize4 = cornerBasedShape.bottomStart;
        }
        return cornerBasedShape.copy(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    public final CornerBasedShape copy(CornerSize cornerSize) {
        return copy(cornerSize, cornerSize, cornerSize, cornerSize);
    }

    public abstract CornerBasedShape copy(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4);

    /* JADX INFO: renamed from: createOutline-LjSzlW0 */
    public abstract Outline mo2333createOutlineLjSzlW0(long j, float f, float f2, float f3, float f4, LayoutDirection layoutDirection);

    @Override // androidx.compose.ui.graphics.Shape
    /* JADX INFO: renamed from: createOutline-Pq9zytI */
    public final Outline mo1345createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        float fMo2341toPxTmRCtEA = this.topStart.mo2341toPxTmRCtEA(j, density);
        float fMo2341toPxTmRCtEA2 = this.topEnd.mo2341toPxTmRCtEA(j, density);
        float fMo2341toPxTmRCtEA3 = this.bottomEnd.mo2341toPxTmRCtEA(j, density);
        float fMo2341toPxTmRCtEA4 = this.bottomStart.mo2341toPxTmRCtEA(j, density);
        float fM6055getMinDimensionimpl = Size.m6055getMinDimensionimpl(j);
        float f = fMo2341toPxTmRCtEA + fMo2341toPxTmRCtEA4;
        if (f > fM6055getMinDimensionimpl) {
            float f2 = fM6055getMinDimensionimpl / f;
            fMo2341toPxTmRCtEA *= f2;
            fMo2341toPxTmRCtEA4 *= f2;
        }
        float f3 = fMo2341toPxTmRCtEA2 + fMo2341toPxTmRCtEA3;
        if (f3 > fM6055getMinDimensionimpl) {
            float f4 = fM6055getMinDimensionimpl / f3;
            fMo2341toPxTmRCtEA2 *= f4;
            fMo2341toPxTmRCtEA3 *= f4;
        }
        if (!(fMo2341toPxTmRCtEA >= 0.0f && fMo2341toPxTmRCtEA2 >= 0.0f && fMo2341toPxTmRCtEA3 >= 0.0f && fMo2341toPxTmRCtEA4 >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Corner size in Px can't be negative(topStart = " + fMo2341toPxTmRCtEA + ", topEnd = " + fMo2341toPxTmRCtEA2 + ", bottomEnd = " + fMo2341toPxTmRCtEA3 + ", bottomStart = " + fMo2341toPxTmRCtEA4 + ")!");
        }
        return mo2333createOutlineLjSzlW0(j, fMo2341toPxTmRCtEA, fMo2341toPxTmRCtEA2, fMo2341toPxTmRCtEA3, fMo2341toPxTmRCtEA4, layoutDirection);
    }

    public final CornerSize getBottomEnd() {
        return this.bottomEnd;
    }

    public final CornerSize getBottomStart() {
        return this.bottomStart;
    }

    public final CornerSize getTopEnd() {
        return this.topEnd;
    }

    public final CornerSize getTopStart() {
        return this.topStart;
    }

    public Object lerp(Object obj, float f) {
        return null;
    }
}
