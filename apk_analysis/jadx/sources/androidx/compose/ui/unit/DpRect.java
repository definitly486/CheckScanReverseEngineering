package androidx.compose.ui.unit;

import defpackage.ch;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class DpRect {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    private DpRect(long j, long j2) {
        this(DpOffset.m9103getXD9Ej5fM(j), DpOffset.m9105getYD9Ej5fM(j), Dp.m9042constructorimpl(DpSize.m9140getWidthD9Ej5fM(j2) + DpOffset.m9103getXD9Ej5fM(j)), Dp.m9042constructorimpl(DpSize.m9138getHeightD9Ej5fM(j2) + DpOffset.m9105getYD9Ej5fM(j)), null);
    }

    /* JADX INFO: renamed from: copy-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ DpRect m9114copya9UjIt4$default(DpRect dpRect, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = dpRect.left;
        }
        if ((i & 2) != 0) {
            f2 = dpRect.top;
        }
        if ((i & 4) != 0) {
            f3 = dpRect.right;
        }
        if ((i & 8) != 0) {
            f4 = dpRect.bottom;
        }
        return dpRect.m9123copya9UjIt4(f, f2, f3, f4);
    }

    /* JADX INFO: renamed from: getBottom-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9115getBottomD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: getLeft-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9116getLeftD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: getRight-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9117getRightD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: getTop-D9Ej5fM$annotations, reason: not valid java name */
    public static /* synthetic */ void m9118getTopD9Ej5fM$annotations() {
    }

    /* JADX INFO: renamed from: component1-D9Ej5fM, reason: not valid java name */
    public final float m9119component1D9Ej5fM() {
        return this.left;
    }

    /* JADX INFO: renamed from: component2-D9Ej5fM, reason: not valid java name */
    public final float m9120component2D9Ej5fM() {
        return this.top;
    }

    /* JADX INFO: renamed from: component3-D9Ej5fM, reason: not valid java name */
    public final float m9121component3D9Ej5fM() {
        return this.right;
    }

    /* JADX INFO: renamed from: component4-D9Ej5fM, reason: not valid java name */
    public final float m9122component4D9Ej5fM() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: copy-a9UjIt4, reason: not valid java name */
    public final DpRect m9123copya9UjIt4(float f, float f2, float f3, float f4) {
        return new DpRect(f, f2, f3, f4, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DpRect)) {
            return false;
        }
        DpRect dpRect = (DpRect) obj;
        return Dp.m9047equalsimpl0(this.left, dpRect.left) && Dp.m9047equalsimpl0(this.top, dpRect.top) && Dp.m9047equalsimpl0(this.right, dpRect.right) && Dp.m9047equalsimpl0(this.bottom, dpRect.bottom);
    }

    /* JADX INFO: renamed from: getBottom-D9Ej5fM, reason: not valid java name */
    public final float m9124getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getLeft-D9Ej5fM, reason: not valid java name */
    public final float m9125getLeftD9Ej5fM() {
        return this.left;
    }

    /* JADX INFO: renamed from: getRight-D9Ej5fM, reason: not valid java name */
    public final float m9126getRightD9Ej5fM() {
        return this.right;
    }

    /* JADX INFO: renamed from: getTop-D9Ej5fM, reason: not valid java name */
    public final float m9127getTopD9Ej5fM() {
        return this.top;
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.bottom) + rg.c(this.right, rg.c(this.top, Dp.m9048hashCodeimpl(this.left) * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DpRect(left=");
        ch.d(sb, ", top=", this.left);
        ch.d(sb, ", right=", this.top);
        ch.d(sb, ", bottom=", this.right);
        sb.append((Object) Dp.m9053toStringimpl(this.bottom));
        sb.append(')');
        return sb.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ DpRect(long j, long j2, jh2 jh2Var) {
        this(j, j2);
    }

    private DpRect(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    public /* synthetic */ DpRect(float f, float f2, float f3, float f4, jh2 jh2Var) {
        this(f, f2, f3, f4);
    }
}
