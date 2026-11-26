package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ch;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public interface PaddingValues {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final PaddingValues Zero = new Absolute(0.0f, 0.0f, 0.0f, 0.0f, 15, null);

        private Companion() {
        }

        public static /* synthetic */ void getZero$annotations() {
        }

        public final PaddingValues getZero() {
            return Zero;
        }
    }

    /* JADX INFO: renamed from: calculateBottomPadding-D9Ej5fM */
    float mo1982calculateBottomPaddingD9Ej5fM();

    /* JADX INFO: renamed from: calculateLeftPadding-u2uoSUM */
    float mo1983calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection);

    /* JADX INFO: renamed from: calculateRightPadding-u2uoSUM */
    float mo1984calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection);

    /* JADX INFO: renamed from: calculateTopPadding-D9Ej5fM */
    float mo1985calculateTopPaddingD9Ej5fM();

    public static final class Absolute implements PaddingValues {
        public static final int $stable = 0;
        private final float bottom;
        private final float left;
        private final float right;
        private final float top;

        private Absolute(float f, float f2, float f3, float f4) {
            this.left = f;
            this.top = f2;
            this.right = f3;
            this.bottom = f4;
            if (!((f >= 0.0f) & (f2 >= 0.0f) & (f3 >= 0.0f)) || !(f4 >= 0.0f)) {
                InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
            }
        }

        /* JADX INFO: renamed from: getBottom-D9Ej5fM$annotations, reason: not valid java name */
        private static /* synthetic */ void m2046getBottomD9Ej5fM$annotations() {
        }

        /* JADX INFO: renamed from: getLeft-D9Ej5fM$annotations, reason: not valid java name */
        private static /* synthetic */ void m2047getLeftD9Ej5fM$annotations() {
        }

        /* JADX INFO: renamed from: getRight-D9Ej5fM$annotations, reason: not valid java name */
        private static /* synthetic */ void m2048getRightD9Ej5fM$annotations() {
        }

        /* JADX INFO: renamed from: getTop-D9Ej5fM$annotations, reason: not valid java name */
        private static /* synthetic */ void m2049getTopD9Ej5fM$annotations() {
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* JADX INFO: renamed from: calculateBottomPadding-D9Ej5fM */
        public float mo1982calculateBottomPaddingD9Ej5fM() {
            return this.bottom;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* JADX INFO: renamed from: calculateLeftPadding-u2uoSUM */
        public float mo1983calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
            return this.left;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* JADX INFO: renamed from: calculateRightPadding-u2uoSUM */
        public float mo1984calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
            return this.right;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* JADX INFO: renamed from: calculateTopPadding-D9Ej5fM */
        public float mo1985calculateTopPaddingD9Ej5fM() {
            return this.top;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Absolute)) {
                return false;
            }
            Absolute absolute = (Absolute) obj;
            return Dp.m9047equalsimpl0(this.left, absolute.left) && Dp.m9047equalsimpl0(this.top, absolute.top) && Dp.m9047equalsimpl0(this.right, absolute.right) && Dp.m9047equalsimpl0(this.bottom, absolute.bottom);
        }

        public int hashCode() {
            return Dp.m9048hashCodeimpl(this.bottom) + rg.c(this.right, rg.c(this.top, Dp.m9048hashCodeimpl(this.left) * 31, 31), 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("PaddingValues.Absolute(left=");
            ch.d(sb, ", top=", this.left);
            ch.d(sb, ", right=", this.top);
            ch.d(sb, ", bottom=", this.right);
            sb.append((Object) Dp.m9053toStringimpl(this.bottom));
            sb.append(')');
            return sb.toString();
        }

        public /* synthetic */ Absolute(float f, float f2, float f3, float f4, jh2 jh2Var) {
            this(f, f2, f3, f4);
        }

        public /* synthetic */ Absolute(float f, float f2, float f3, float f4, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? Dp.m9042constructorimpl(0.0f) : f, (i & 2) != 0 ? Dp.m9042constructorimpl(0.0f) : f2, (i & 4) != 0 ? Dp.m9042constructorimpl(0.0f) : f3, (i & 8) != 0 ? Dp.m9042constructorimpl(0.0f) : f4, null);
        }
    }
}
