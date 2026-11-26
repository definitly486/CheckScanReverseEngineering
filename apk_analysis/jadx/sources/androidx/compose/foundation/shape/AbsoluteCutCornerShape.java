package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class AbsoluteCutCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    public AbsoluteCutCornerShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        super(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    public AbsoluteCutCornerShape copy(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        return new AbsoluteCutCornerShape(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    /* JADX INFO: renamed from: createOutline-LjSzlW0, reason: not valid java name */
    public Outline mo2333createOutlineLjSzlW0(long j, float f, float f2, float f3, float f4, LayoutDirection layoutDirection) {
        if (f + f2 + f4 + f3 == 0.0f) {
            return new Outline.Rectangle(SizeKt.m6077toRectuvyYCjk(j));
        }
        Path Path = AndroidPath_androidKt.Path();
        Path.moveTo(0.0f, f);
        Path.lineTo(f, 0.0f);
        int i = (int) (j >> 32);
        Path.lineTo(Float.intBitsToFloat(i) - f2, 0.0f);
        Path.lineTo(Float.intBitsToFloat(i), f2);
        float fIntBitsToFloat = Float.intBitsToFloat(i);
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        Path.lineTo(fIntBitsToFloat, Float.intBitsToFloat(i2) - f3);
        Path.lineTo(Float.intBitsToFloat(i) - f3, Float.intBitsToFloat(i2));
        Path.lineTo(f4, Float.intBitsToFloat(i2));
        Path.lineTo(0.0f, Float.intBitsToFloat(i2) - f4);
        Path.close();
        return new Outline.Generic(Path);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbsoluteCutCornerShape)) {
            return false;
        }
        AbsoluteCutCornerShape absoluteCutCornerShape = (AbsoluteCutCornerShape) obj;
        return aa4.e(getTopStart(), absoluteCutCornerShape.getTopStart()) && aa4.e(getTopEnd(), absoluteCutCornerShape.getTopEnd()) && aa4.e(getBottomEnd(), absoluteCutCornerShape.getBottomEnd()) && aa4.e(getBottomStart(), absoluteCutCornerShape.getBottomStart());
    }

    public int hashCode() {
        return getBottomStart().hashCode() + ((getBottomEnd().hashCode() + ((getTopEnd().hashCode() + (getTopStart().hashCode() * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape, androidx.compose.ui.graphics.Interpolatable
    public Object lerp(Object obj, float f) {
        if (aa4.e(obj, RectangleShapeKt.getRectangleShape()) || obj == null) {
            obj = AbsoluteCutCornerShapeKt.AbsoluteCutCornerShape(0.0f);
        }
        if (obj instanceof AbsoluteCutCornerShape) {
            return AbsoluteCutCornerShapeKt.lerp(this, (AbsoluteCutCornerShape) obj, f);
        }
        return null;
    }

    public String toString() {
        return "AbsoluteCutCornerShape(topLeft = " + getTopStart() + ", topRight = " + getTopEnd() + ", bottomRight = " + getBottomEnd() + ", bottomLeft = " + getBottomStart() + ')';
    }
}
