package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.ch;
import defpackage.jh2;
import defpackage.rg;
import defpackage.sg;

/* JADX INFO: loaded from: classes2.dex */
public final class DpTouchBoundsExpansion {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final float bottom;
    private final float end;
    private final boolean isLayoutDirectionAware;
    private final float start;
    private final float top;

    private DpTouchBoundsExpansion(float f, float f2, float f3, float f4, boolean z) {
        this.start = f;
        this.top = f2;
        this.end = f3;
        this.bottom = f4;
        this.isLayoutDirectionAware = z;
        if (!(f >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Left must be non-negative");
        }
        if (!(f2 >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Top must be non-negative");
        }
        if (!(f3 >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Right must be non-negative");
        }
        if (f4 >= 0.0f) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Bottom must be non-negative");
    }

    /* JADX INFO: renamed from: copy-lDy3nrA$default, reason: not valid java name */
    public static /* synthetic */ DpTouchBoundsExpansion m7902copylDy3nrA$default(DpTouchBoundsExpansion dpTouchBoundsExpansion, float f, float f2, float f3, float f4, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            f = dpTouchBoundsExpansion.start;
        }
        if ((i & 2) != 0) {
            f2 = dpTouchBoundsExpansion.top;
        }
        if ((i & 4) != 0) {
            f3 = dpTouchBoundsExpansion.end;
        }
        if ((i & 8) != 0) {
            f4 = dpTouchBoundsExpansion.bottom;
        }
        if ((i & 16) != 0) {
            z = dpTouchBoundsExpansion.isLayoutDirectionAware;
        }
        boolean z2 = z;
        float f5 = f3;
        return dpTouchBoundsExpansion.m7907copylDy3nrA(f, f2, f5, f4, z2);
    }

    /* JADX INFO: renamed from: component1-D9Ej5fM, reason: not valid java name */
    public final float m7903component1D9Ej5fM() {
        return this.start;
    }

    /* JADX INFO: renamed from: component2-D9Ej5fM, reason: not valid java name */
    public final float m7904component2D9Ej5fM() {
        return this.top;
    }

    /* JADX INFO: renamed from: component3-D9Ej5fM, reason: not valid java name */
    public final float m7905component3D9Ej5fM() {
        return this.end;
    }

    /* JADX INFO: renamed from: component4-D9Ej5fM, reason: not valid java name */
    public final float m7906component4D9Ej5fM() {
        return this.bottom;
    }

    public final boolean component5() {
        return this.isLayoutDirectionAware;
    }

    /* JADX INFO: renamed from: copy-lDy3nrA, reason: not valid java name */
    public final DpTouchBoundsExpansion m7907copylDy3nrA(float f, float f2, float f3, float f4, boolean z) {
        return new DpTouchBoundsExpansion(f, f2, f3, f4, z, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DpTouchBoundsExpansion)) {
            return false;
        }
        DpTouchBoundsExpansion dpTouchBoundsExpansion = (DpTouchBoundsExpansion) obj;
        return Dp.m9047equalsimpl0(this.start, dpTouchBoundsExpansion.start) && Dp.m9047equalsimpl0(this.top, dpTouchBoundsExpansion.top) && Dp.m9047equalsimpl0(this.end, dpTouchBoundsExpansion.end) && Dp.m9047equalsimpl0(this.bottom, dpTouchBoundsExpansion.bottom) && this.isLayoutDirectionAware == dpTouchBoundsExpansion.isLayoutDirectionAware;
    }

    /* JADX INFO: renamed from: getBottom-D9Ej5fM, reason: not valid java name */
    public final float m7908getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getEnd-D9Ej5fM, reason: not valid java name */
    public final float m7909getEndD9Ej5fM() {
        return this.end;
    }

    /* JADX INFO: renamed from: getStart-D9Ej5fM, reason: not valid java name */
    public final float m7910getStartD9Ej5fM() {
        return this.start;
    }

    /* JADX INFO: renamed from: getTop-D9Ej5fM, reason: not valid java name */
    public final float m7911getTopD9Ej5fM() {
        return this.top;
    }

    public int hashCode() {
        return Boolean.hashCode(this.isLayoutDirectionAware) + rg.c(this.bottom, rg.c(this.end, rg.c(this.top, Dp.m9048hashCodeimpl(this.start) * 31, 31), 31), 31);
    }

    public final boolean isLayoutDirectionAware() {
        return this.isLayoutDirectionAware;
    }

    /* JADX INFO: renamed from: roundToTouchBoundsExpansion-TW6G1oQ, reason: not valid java name */
    public final long m7912roundToTouchBoundsExpansionTW6G1oQ(Density density) {
        return TouchBoundsExpansion.m8107constructorimpl(TouchBoundsExpansion.Companion.pack$ui(density.mo1428roundToPx0680j_4(this.start), density.mo1428roundToPx0680j_4(this.top), density.mo1428roundToPx0680j_4(this.end), density.mo1428roundToPx0680j_4(this.bottom), this.isLayoutDirectionAware));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DpTouchBoundsExpansion(start=");
        ch.d(sb, ", top=", this.start);
        ch.d(sb, ", end=", this.top);
        ch.d(sb, ", bottom=", this.end);
        ch.d(sb, ", isLayoutDirectionAware=", this.bottom);
        return sg.d(sb, this.isLayoutDirectionAware, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: Absolute-a9UjIt4$default, reason: not valid java name */
        public static /* synthetic */ DpTouchBoundsExpansion m7913Absolutea9UjIt4$default(Companion companion, float f, float f2, float f3, float f4, int i, Object obj) {
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
            return companion.m7914Absolutea9UjIt4(f, f2, f3, f4);
        }

        /* JADX INFO: renamed from: Absolute-a9UjIt4, reason: not valid java name */
        public final DpTouchBoundsExpansion m7914Absolutea9UjIt4(float f, float f2, float f3, float f4) {
            return new DpTouchBoundsExpansion(f, f2, f3, f4, false, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ DpTouchBoundsExpansion(float f, float f2, float f3, float f4, boolean z, jh2 jh2Var) {
        this(f, f2, f3, f4, z);
    }
}
