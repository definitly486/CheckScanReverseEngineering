package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ch;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class PaddingValuesImpl implements PaddingValues {
    public static final int $stable = 0;
    private final float bottom;
    private final float end;
    private final float start;
    private final float top;

    private PaddingValuesImpl(float f, float f2, float f3, float f4) {
        this.start = f;
        this.top = f2;
        this.end = f3;
        this.bottom = f4;
        if (!((f >= 0.0f) & (f2 >= 0.0f) & (f3 >= 0.0f)) || !(f4 >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
    }

    /* JADX INFO: renamed from: getBottom-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m2050getBottomD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: getEnd-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m2051getEndD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: getStart-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m2052getStartD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: getTop-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m2053getTopD9Ej5fM$annotations() {
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateBottomPadding-D9Ej5fM */
    public float mo1982calculateBottomPaddingD9Ej5fM() {
        return this.bottom;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateLeftPadding-u2uoSUM */
    public float mo1983calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.start : this.end;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateRightPadding-u2uoSUM */
    public float mo1984calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.end : this.start;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateTopPadding-D9Ej5fM */
    public float mo1985calculateTopPaddingD9Ej5fM() {
        return this.top;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PaddingValuesImpl)) {
            return false;
        }
        PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
        return Dp.m9047equalsimpl0(this.start, paddingValuesImpl.start) && Dp.m9047equalsimpl0(this.top, paddingValuesImpl.top) && Dp.m9047equalsimpl0(this.end, paddingValuesImpl.end) && Dp.m9047equalsimpl0(this.bottom, paddingValuesImpl.bottom);
    }

    /* JADX INFO: renamed from: getBottom-D9Ej5fM, reason: not valid java name */
    public final float m2054getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getEnd-D9Ej5fM, reason: not valid java name */
    public final float m2055getEndD9Ej5fM() {
        return this.end;
    }

    /* JADX INFO: renamed from: getStart-D9Ej5fM, reason: not valid java name */
    public final float m2056getStartD9Ej5fM() {
        return this.start;
    }

    /* JADX INFO: renamed from: getTop-D9Ej5fM, reason: not valid java name */
    public final float m2057getTopD9Ej5fM() {
        return this.top;
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.bottom) + rg.c(this.end, rg.c(this.top, Dp.m9048hashCodeimpl(this.start) * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PaddingValues(start=");
        ch.d(sb, ", top=", this.start);
        ch.d(sb, ", end=", this.top);
        ch.d(sb, ", bottom=", this.end);
        sb.append((Object) Dp.m9053toStringimpl(this.bottom));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ PaddingValuesImpl(float f, float f2, float f3, float f4, jh2 jh2Var) {
        this(f, f2, f3, f4);
    }

    public /* synthetic */ PaddingValuesImpl(float f, float f2, float f3, float f4, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Dp.m9042constructorimpl(0.0f) : f, (i & 2) != 0 ? Dp.m9042constructorimpl(0.0f) : f2, (i & 4) != 0 ? Dp.m9042constructorimpl(0.0f) : f3, (i & 8) != 0 ? Dp.m9042constructorimpl(0.0f) : f4, null);
    }
}
