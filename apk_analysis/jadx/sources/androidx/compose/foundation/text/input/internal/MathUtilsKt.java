package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class MathUtilsKt {
    public static final int addExactOrElse(int i, int i2, ll3<Integer> ll3Var) {
        int i3 = i + i2;
        return ((i ^ i3) & (i2 ^ i3)) < 0 ? ll3Var.invoke().intValue() : i3;
    }

    /* JADX INFO: renamed from: distanceSquaredToClosestCornerFromOutside-3MmeM6k, reason: not valid java name */
    private static final float m2770distanceSquaredToClosestCornerFromOutside3MmeM6k(long j, Rect rect) {
        if (SelectionManagerKt.m3015containsInclusiveUv8p0NA(rect, j)) {
            return 0.0f;
        }
        float fM5986getDistanceSquaredimpl = Offset.m5986getDistanceSquaredimpl(Offset.m5991minusMKHz9U(rect.m6022getTopLeftF1C5BW0(), j));
        if (fM5986getDistanceSquaredimpl >= Float.MAX_VALUE) {
            fM5986getDistanceSquaredimpl = Float.MAX_VALUE;
        }
        float fM5986getDistanceSquaredimpl2 = Offset.m5986getDistanceSquaredimpl(Offset.m5991minusMKHz9U(rect.m6023getTopRightF1C5BW0(), j));
        if (fM5986getDistanceSquaredimpl2 < fM5986getDistanceSquaredimpl) {
            fM5986getDistanceSquaredimpl = fM5986getDistanceSquaredimpl2;
        }
        float fM5986getDistanceSquaredimpl3 = Offset.m5986getDistanceSquaredimpl(Offset.m5991minusMKHz9U(rect.m6015getBottomLeftF1C5BW0(), j));
        if (fM5986getDistanceSquaredimpl3 < fM5986getDistanceSquaredimpl) {
            fM5986getDistanceSquaredimpl = fM5986getDistanceSquaredimpl3;
        }
        float fM5986getDistanceSquaredimpl4 = Offset.m5986getDistanceSquaredimpl(Offset.m5991minusMKHz9U(rect.m6016getBottomRightF1C5BW0(), j));
        return fM5986getDistanceSquaredimpl4 < fM5986getDistanceSquaredimpl ? fM5986getDistanceSquaredimpl4 : fM5986getDistanceSquaredimpl;
    }

    /* JADX INFO: renamed from: findClosestRect-9KIMszo, reason: not valid java name */
    public static final int m2771findClosestRect9KIMszo(long j, Rect rect, Rect rect2) {
        float fM2770distanceSquaredToClosestCornerFromOutside3MmeM6k = m2770distanceSquaredToClosestCornerFromOutside3MmeM6k(j, rect);
        float fM2770distanceSquaredToClosestCornerFromOutside3MmeM6k2 = m2770distanceSquaredToClosestCornerFromOutside3MmeM6k(j, rect2);
        if (fM2770distanceSquaredToClosestCornerFromOutside3MmeM6k == fM2770distanceSquaredToClosestCornerFromOutside3MmeM6k2) {
            return 0;
        }
        return fM2770distanceSquaredToClosestCornerFromOutside3MmeM6k < fM2770distanceSquaredToClosestCornerFromOutside3MmeM6k2 ? -1 : 1;
    }

    public static final int subtractExactOrElse(int i, int i2, ll3<Integer> ll3Var) {
        int i3 = i - i2;
        return ((i ^ i3) & (i2 ^ i)) < 0 ? ll3Var.invoke().intValue() : i3;
    }
}
