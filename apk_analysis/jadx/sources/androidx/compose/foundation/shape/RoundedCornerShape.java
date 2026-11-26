package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class RoundedCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    public RoundedCornerShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        super(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    public RoundedCornerShape copy(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        return new RoundedCornerShape(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    /* JADX INFO: renamed from: createOutline-LjSzlW0 */
    public Outline mo2333createOutlineLjSzlW0(long j, float f, float f2, float f3, float f4, LayoutDirection layoutDirection) {
        if (f + f2 + f3 + f4 == 0.0f) {
            return new Outline.Rectangle(SizeKt.m6077toRectuvyYCjk(j));
        }
        Rect rectM6077toRectuvyYCjk = SizeKt.m6077toRectuvyYCjk(j);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        float f5 = layoutDirection == layoutDirection2 ? f : f2;
        long jM5941constructorimpl = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f5)) << 32) | (((long) Float.floatToRawIntBits(f5)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float f6 = layoutDirection == layoutDirection2 ? f2 : f;
        long jM5941constructorimpl2 = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(f6)) << 32));
        float f7 = layoutDirection == layoutDirection2 ? f3 : f4;
        long jM5941constructorimpl3 = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f7)) << 32) | (((long) Float.floatToRawIntBits(f7)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float f8 = layoutDirection == layoutDirection2 ? f4 : f3;
        return new Outline.Rounded(RoundRectKt.m6039RoundRectZAM2FJo(rectM6077toRectuvyYCjk, jM5941constructorimpl, jM5941constructorimpl2, jM5941constructorimpl3, CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f8)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(f8)) << 32))));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundedCornerShape)) {
            return false;
        }
        RoundedCornerShape roundedCornerShape = (RoundedCornerShape) obj;
        return aa4.e(getTopStart(), roundedCornerShape.getTopStart()) && aa4.e(getTopEnd(), roundedCornerShape.getTopEnd()) && aa4.e(getBottomEnd(), roundedCornerShape.getBottomEnd()) && aa4.e(getBottomStart(), roundedCornerShape.getBottomStart());
    }

    public int hashCode() {
        return getBottomStart().hashCode() + ((getBottomEnd().hashCode() + ((getTopEnd().hashCode() + (getTopStart().hashCode() * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape, androidx.compose.ui.graphics.Interpolatable
    public Object lerp(Object obj, float f) {
        if (aa4.e(obj, RectangleShapeKt.getRectangleShape()) || obj == null) {
            obj = RoundedCornerShapeKt.RoundedCornerShape(0.0f);
        }
        if (obj instanceof RoundedCornerShape) {
            return RoundedCornerShapeKt.lerp(this, (RoundedCornerShape) obj, f);
        }
        return null;
    }

    public String toString() {
        return "RoundedCornerShape(topStart = " + getTopStart() + ", topEnd = " + getTopEnd() + ", bottomEnd = " + getBottomEnd() + ", bottomStart = " + getBottomStart() + ')';
    }
}
