package androidx.compose.foundation.shape;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes.dex */
public final class CutCornerShapeKt {
    public static final CutCornerShape CutCornerShape(float f, float f2, float f3, float f4) {
        return new CutCornerShape(CornerSizeKt.CornerSize(f), CornerSizeKt.CornerSize(f2), CornerSizeKt.CornerSize(f3), CornerSizeKt.CornerSize(f4));
    }

    public static /* synthetic */ CutCornerShape CutCornerShape$default(float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        return CutCornerShape(f, f2, f3, f4);
    }

    /* JADX INFO: renamed from: CutCornerShape-0680j_4, reason: not valid java name */
    public static final CutCornerShape m2343CutCornerShape0680j_4(float f) {
        return CutCornerShape(CornerSizeKt.m2342CornerSize0680j_4(f));
    }

    /* JADX INFO: renamed from: CutCornerShape-a9UjIt4, reason: not valid java name */
    public static final CutCornerShape m2344CutCornerShapea9UjIt4(float f, float f2, float f3, float f4) {
        return new CutCornerShape(CornerSizeKt.m2342CornerSize0680j_4(f), CornerSizeKt.m2342CornerSize0680j_4(f2), CornerSizeKt.m2342CornerSize0680j_4(f3), CornerSizeKt.m2342CornerSize0680j_4(f4));
    }

    /* JADX INFO: renamed from: CutCornerShape-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ CutCornerShape m2345CutCornerShapea9UjIt4$default(float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 4) != 0) {
            f3 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 8) != 0) {
            f4 = Dp.m9042constructorimpl(0.0f);
        }
        return m2344CutCornerShapea9UjIt4(f, f2, f3, f4);
    }

    public static final CutCornerShape lerp(CutCornerShape cutCornerShape, CutCornerShape cutCornerShape2, float f) {
        return new CutCornerShape(RoundedCornerShapeKt.lerp(cutCornerShape.getTopStart(), cutCornerShape2.getTopStart(), f), RoundedCornerShapeKt.lerp(cutCornerShape.getTopEnd(), cutCornerShape2.getTopEnd(), f), RoundedCornerShapeKt.lerp(cutCornerShape.getBottomEnd(), cutCornerShape2.getBottomEnd(), f), RoundedCornerShapeKt.lerp(cutCornerShape.getBottomStart(), cutCornerShape2.getBottomStart(), f));
    }

    public static final CutCornerShape CutCornerShape(float f) {
        return CutCornerShape(CornerSizeKt.CornerSize(f));
    }

    public static final CutCornerShape CutCornerShape(int i) {
        return CutCornerShape(CornerSizeKt.CornerSize(i));
    }

    public static final CutCornerShape CutCornerShape(CornerSize cornerSize) {
        return new CutCornerShape(cornerSize, cornerSize, cornerSize, cornerSize);
    }

    public static final CutCornerShape CutCornerShape(int i, int i2, int i3, int i4) {
        return new CutCornerShape(CornerSizeKt.CornerSize(i), CornerSizeKt.CornerSize(i2), CornerSizeKt.CornerSize(i3), CornerSizeKt.CornerSize(i4));
    }

    public static /* synthetic */ CutCornerShape CutCornerShape$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = 0;
        }
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = 0;
        }
        return CutCornerShape(i, i2, i3, i4);
    }
}
