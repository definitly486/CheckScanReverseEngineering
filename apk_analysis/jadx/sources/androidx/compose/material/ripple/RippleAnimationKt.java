package androidx.compose.material.ripple;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes.dex */
public final class RippleAnimationKt {
    private static final float BoundedRippleExtraRadius = Dp.m9042constructorimpl(10.0f);
    private static final int FadeInDuration = 75;
    private static final int FadeOutDuration = 150;
    private static final int RadiusDuration = 225;

    /* JADX INFO: renamed from: getRippleEndRadius-cSwnlzA, reason: not valid java name */
    public static final float m3055getRippleEndRadiuscSwnlzA(Density density, boolean z, long j) {
        float fM5985getDistanceimpl = Offset.m5985getDistanceimpl(OffsetKt.Offset(Size.m6056getWidthimpl(j), Size.m6053getHeightimpl(j))) / 2.0f;
        return z ? density.mo1434toPx0680j_4(BoundedRippleExtraRadius) + fM5985getDistanceimpl : fM5985getDistanceimpl;
    }

    /* JADX INFO: renamed from: getRippleStartRadius-uvyYCjk, reason: not valid java name */
    public static final float m3056getRippleStartRadiusuvyYCjk(long j) {
        return Math.max(Size.m6056getWidthimpl(j), Size.m6053getHeightimpl(j)) * 0.3f;
    }
}
