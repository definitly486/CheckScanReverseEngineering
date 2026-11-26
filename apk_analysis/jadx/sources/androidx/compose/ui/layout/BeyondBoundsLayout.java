package androidx.compose.ui.layout;

import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface BeyondBoundsLayout {

    public interface BeyondBoundsScope {
        boolean getHasMoreContent();
    }

    /* JADX INFO: renamed from: layout-o7g1Pn8 */
    <T> T mo2202layouto7g1Pn8(int i, nl3<? super BeyondBoundsScope, ? extends T> nl3Var);

    public static final class LayoutDirection {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int Before = m7683constructorimpl(1);
        private static final int After = m7683constructorimpl(2);
        private static final int Left = m7683constructorimpl(3);
        private static final int Right = m7683constructorimpl(4);
        private static final int Above = m7683constructorimpl(5);
        private static final int Below = m7683constructorimpl(6);

        private /* synthetic */ LayoutDirection(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ LayoutDirection m7682boximpl(int i) {
            return new LayoutDirection(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m7683constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m7684equalsimpl(int i, Object obj) {
            return (obj instanceof LayoutDirection) && i == ((LayoutDirection) obj).m7688unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m7685equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m7686hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m7687toStringimpl(int i) {
            if (m7685equalsimpl0(i, Before)) {
                return "Before";
            }
            if (m7685equalsimpl0(i, After)) {
                return "After";
            }
            if (m7685equalsimpl0(i, Left)) {
                return "Left";
            }
            if (m7685equalsimpl0(i, Right)) {
                return "Right";
            }
            if (m7685equalsimpl0(i, Above)) {
                return "Above";
            }
            return m7685equalsimpl0(i, Below) ? "Below" : "invalid LayoutDirection";
        }

        public boolean equals(Object obj) {
            return m7684equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m7686hashCodeimpl(this.value);
        }

        public String toString() {
            return m7687toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m7688unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getAbove-hoxUOeE, reason: not valid java name */
            public final int m7689getAbovehoxUOeE() {
                return LayoutDirection.Above;
            }

            /* JADX INFO: renamed from: getAfter-hoxUOeE, reason: not valid java name */
            public final int m7690getAfterhoxUOeE() {
                return LayoutDirection.After;
            }

            /* JADX INFO: renamed from: getBefore-hoxUOeE, reason: not valid java name */
            public final int m7691getBeforehoxUOeE() {
                return LayoutDirection.Before;
            }

            /* JADX INFO: renamed from: getBelow-hoxUOeE, reason: not valid java name */
            public final int m7692getBelowhoxUOeE() {
                return LayoutDirection.Below;
            }

            /* JADX INFO: renamed from: getLeft-hoxUOeE, reason: not valid java name */
            public final int m7693getLefthoxUOeE() {
                return LayoutDirection.Left;
            }

            /* JADX INFO: renamed from: getRight-hoxUOeE, reason: not valid java name */
            public final int m7694getRighthoxUOeE() {
                return LayoutDirection.Right;
            }

            private Companion() {
            }
        }
    }
}
