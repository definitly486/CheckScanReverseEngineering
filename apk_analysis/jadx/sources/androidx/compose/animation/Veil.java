package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.Color;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ln;
import defpackage.r01;
import defpackage.sg;

/* JADX INFO: loaded from: classes.dex */
public final class Veil {
    public static final int $stable = 0;
    private final FiniteAnimationSpec<Color> animationSpec;
    private final long initialColor;
    private final boolean matchParentSize;
    private final long targetColor;

    private Veil(long j, long j2, FiniteAnimationSpec<Color> finiteAnimationSpec, boolean z) {
        this.initialColor = j;
        this.targetColor = j2;
        this.animationSpec = finiteAnimationSpec;
        this.matchParentSize = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-RFnl5yQ$default, reason: not valid java name */
    public static /* synthetic */ Veil m1181copyRFnl5yQ$default(Veil veil, long j, long j2, FiniteAnimationSpec finiteAnimationSpec, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            j = veil.initialColor;
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = veil.targetColor;
        }
        long j4 = j2;
        if ((i & 4) != 0) {
            finiteAnimationSpec = veil.animationSpec;
        }
        FiniteAnimationSpec finiteAnimationSpec2 = finiteAnimationSpec;
        if ((i & 8) != 0) {
            z = veil.matchParentSize;
        }
        return veil.m1184copyRFnl5yQ(j3, j4, finiteAnimationSpec2, z);
    }

    /* JADX INFO: renamed from: component1-0d7_KjU, reason: not valid java name */
    public final long m1182component10d7_KjU() {
        return this.initialColor;
    }

    /* JADX INFO: renamed from: component2-0d7_KjU, reason: not valid java name */
    public final long m1183component20d7_KjU() {
        return this.targetColor;
    }

    public final FiniteAnimationSpec<Color> component3() {
        return this.animationSpec;
    }

    public final boolean component4() {
        return this.matchParentSize;
    }

    /* JADX INFO: renamed from: copy-RFnl5yQ, reason: not valid java name */
    public final Veil m1184copyRFnl5yQ(long j, long j2, FiniteAnimationSpec<Color> finiteAnimationSpec, boolean z) {
        return new Veil(j, j2, finiteAnimationSpec, z, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Veil)) {
            return false;
        }
        Veil veil = (Veil) obj;
        return Color.m6233equalsimpl0(this.initialColor, veil.initialColor) && Color.m6233equalsimpl0(this.targetColor, veil.targetColor) && aa4.e(this.animationSpec, veil.animationSpec) && this.matchParentSize == veil.matchParentSize;
    }

    public final FiniteAnimationSpec<Color> getAnimationSpec() {
        return this.animationSpec;
    }

    /* JADX INFO: renamed from: getInitialColor-0d7_KjU, reason: not valid java name */
    public final long m1185getInitialColor0d7_KjU() {
        return this.initialColor;
    }

    public final boolean getMatchParentSize() {
        return this.matchParentSize;
    }

    /* JADX INFO: renamed from: getTargetColor-0d7_KjU, reason: not valid java name */
    public final long m1186getTargetColor0d7_KjU() {
        return this.targetColor;
    }

    public int hashCode() {
        return Boolean.hashCode(this.matchParentSize) + ((this.animationSpec.hashCode() + r01.b(Color.m6239hashCodeimpl(this.initialColor) * 31, 31, this.targetColor)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Veil(initialColor=");
        ln.g(this.initialColor, ", targetColor=", sb);
        ln.g(this.targetColor, ", animationSpec=", sb);
        sb.append(this.animationSpec);
        sb.append(", matchParentSize=");
        return sg.d(sb, this.matchParentSize, ')');
    }

    public /* synthetic */ Veil(long j, long j2, FiniteAnimationSpec finiteAnimationSpec, boolean z, jh2 jh2Var) {
        this(j, j2, finiteAnimationSpec, z);
    }
}
