package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.jh2;
import defpackage.xy;

/* JADX INFO: loaded from: classes.dex */
final class DpCornerSize implements CornerSize, InspectableValue {
    private final float size;

    private DpCornerSize(float f) {
        this.size = f;
    }

    /* JADX INFO: renamed from: component1-D9Ej5fM, reason: not valid java name */
    private final float m2346component1D9Ej5fM() {
        return this.size;
    }

    /* JADX INFO: renamed from: copy-0680j_4$default, reason: not valid java name */
    public static /* synthetic */ DpCornerSize m2347copy0680j_4$default(DpCornerSize dpCornerSize, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = dpCornerSize.size;
        }
        return dpCornerSize.m2348copy0680j_4(f);
    }

    /* JADX INFO: renamed from: copy-0680j_4, reason: not valid java name */
    public final DpCornerSize m2348copy0680j_4(float f) {
        return new DpCornerSize(f, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DpCornerSize) && Dp.m9047equalsimpl0(this.size, ((DpCornerSize) obj).size);
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public /* bridge */ /* synthetic */ Object getValueOverride() {
        return Dp.m9040boximpl(m2349getValueOverrideD9Ej5fM());
    }

    /* JADX INFO: renamed from: getValueOverride-D9Ej5fM, reason: not valid java name */
    public float m2349getValueOverrideD9Ej5fM() {
        return this.size;
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.size);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    /* JADX INFO: renamed from: toPx-TmRCtEA */
    public float mo2341toPxTmRCtEA(long j, Density density) {
        return density.mo1434toPx0680j_4(this.size);
    }

    public String toString() {
        return xy.e(new StringBuilder("CornerSize(size = "), ".dp)", this.size);
    }

    public /* synthetic */ DpCornerSize(float f, jh2 jh2Var) {
        this(f);
    }
}
