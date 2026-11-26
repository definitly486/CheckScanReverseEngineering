package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorKt {
    public static final String DefaultGroupName = "";
    public static final String DefaultPathName = "";
    public static final float DefaultPivotX = 0.0f;
    public static final float DefaultPivotY = 0.0f;
    public static final float DefaultRotation = 0.0f;
    public static final float DefaultScaleX = 1.0f;
    public static final float DefaultScaleY = 1.0f;
    public static final float DefaultStrokeLineMiter = 4.0f;
    public static final float DefaultStrokeLineWidth = 0.0f;
    public static final float DefaultTranslationX = 0.0f;
    public static final float DefaultTranslationY = 0.0f;
    public static final float DefaultTrimPathEnd = 1.0f;
    public static final float DefaultTrimPathOffset = 0.0f;
    public static final float DefaultTrimPathStart = 0.0f;
    private static final List<PathNode> EmptyPath = kx2.b;
    private static final int DefaultStrokeLineCap = StrokeCap.Companion.m6606getButtKaPHkGw();
    private static final int DefaultStrokeLineJoin = StrokeJoin.Companion.m6617getMiterLxFBmk8();
    private static final int DefaultTintBlendMode = BlendMode.Companion.m6170getSrcIn0nO6VwU();
    private static final long DefaultTintColor = Color.Companion.m6267getTransparent0d7_KjU();
    private static final int DefaultFillType = PathFillType.Companion.m6529getNonZeroRgk1Os();

    public static final List<PathNode> PathData(nl3<? super PathBuilder, j59> nl3Var) {
        PathBuilder pathBuilder = new PathBuilder();
        nl3Var.invoke(pathBuilder);
        return pathBuilder.getNodes();
    }

    public static final List<PathNode> addPathNodes(String str) {
        return str == null ? EmptyPath : new PathParser().parsePathString(str).toNodes();
    }

    public static final int getDefaultFillType() {
        return DefaultFillType;
    }

    public static final int getDefaultStrokeLineCap() {
        return DefaultStrokeLineCap;
    }

    public static final int getDefaultStrokeLineJoin() {
        return DefaultStrokeLineJoin;
    }

    public static final int getDefaultTintBlendMode() {
        return DefaultTintBlendMode;
    }

    public static final long getDefaultTintColor() {
        return DefaultTintColor;
    }

    public static final List<PathNode> getEmptyPath() {
        return EmptyPath;
    }

    /* JADX INFO: renamed from: rgbEqual--OWjLjI, reason: not valid java name */
    public static final boolean m6980rgbEqualOWjLjI(long j, long j2) {
        return Color.m6238getRedimpl(j) == Color.m6238getRedimpl(j2) && Color.m6237getGreenimpl(j) == Color.m6237getGreenimpl(j2) && Color.m6235getBlueimpl(j) == Color.m6235getBlueimpl(j2);
    }

    public static final boolean tintableWithAlphaMask(ColorFilter colorFilter) {
        if (!(colorFilter instanceof BlendModeColorFilter)) {
            return colorFilter == null;
        }
        BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) colorFilter;
        int iM6174getBlendMode0nO6VwU = blendModeColorFilter.m6174getBlendMode0nO6VwU();
        BlendMode.Companion companion = BlendMode.Companion;
        return BlendMode.m6141equalsimpl0(iM6174getBlendMode0nO6VwU, companion.m6170getSrcIn0nO6VwU()) || BlendMode.m6141equalsimpl0(blendModeColorFilter.m6174getBlendMode0nO6VwU(), companion.m6172getSrcOver0nO6VwU());
    }

    /* JADX INFO: renamed from: toOpaque-8_81llA, reason: not valid java name */
    public static final long m6981toOpaque8_81llA(long j) {
        return Color.m6234getAlphaimpl(j) == 1.0f ? j : Color.m6231copywmQWz5c$default(j, 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
    }
}
