package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import defpackage.jh2;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface AnimatedContentTransitionScope<S> extends Transition.Segment<S> {
    static /* synthetic */ void getKeepUntilTransitionsFinished$annotations(ExitTransition.Companion companion) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: slideIntoContainer-mOhB8PU$default, reason: not valid java name */
    static /* synthetic */ EnterTransition m1046slideIntoContainermOhB8PU$default(AnimatedContentTransitionScope animatedContentTransitionScope, int i, FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: slideIntoContainer-mOhB8PU");
            return null;
        }
        if ((i2 & 2) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 3, null);
        }
        if ((i2 & 4) != 0) {
            nl3Var = AnimatedContentTransitionScope$slideIntoContainer$1.INSTANCE;
        }
        return animatedContentTransitionScope.mo1048slideIntoContainermOhB8PU(i, finiteAnimationSpec, nl3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: slideOutOfContainer-mOhB8PU$default, reason: not valid java name */
    static /* synthetic */ ExitTransition m1047slideOutOfContainermOhB8PU$default(AnimatedContentTransitionScope animatedContentTransitionScope, int i, FiniteAnimationSpec finiteAnimationSpec, nl3 nl3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: slideOutOfContainer-mOhB8PU");
            return null;
        }
        if ((i2 & 2) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m9161boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 3, null);
        }
        if ((i2 & 4) != 0) {
            nl3Var = AnimatedContentTransitionScope$slideOutOfContainer$1.INSTANCE;
        }
        return animatedContentTransitionScope.mo1049slideOutOfContainermOhB8PU(i, finiteAnimationSpec, nl3Var);
    }

    Alignment getContentAlignment();

    default ExitTransition getKeepUntilTransitionsFinished(ExitTransition.Companion companion) {
        return companion.getKeepUntilTransitionsFinished$animation();
    }

    /* JADX INFO: renamed from: slideIntoContainer-mOhB8PU, reason: not valid java name */
    EnterTransition mo1048slideIntoContainermOhB8PU(int i, FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super Integer, Integer> nl3Var);

    /* JADX INFO: renamed from: slideOutOfContainer-mOhB8PU, reason: not valid java name */
    ExitTransition mo1049slideOutOfContainermOhB8PU(int i, FiniteAnimationSpec<IntOffset> finiteAnimationSpec, nl3<? super Integer, Integer> nl3Var);

    ContentTransform using(ContentTransform contentTransform, SizeTransform sizeTransform);

    public static final class SlideDirection {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int Left = m1051constructorimpl(0);
        private static final int Right = m1051constructorimpl(1);
        private static final int Up = m1051constructorimpl(2);
        private static final int Down = m1051constructorimpl(3);
        private static final int Start = m1051constructorimpl(4);
        private static final int End = m1051constructorimpl(5);

        private /* synthetic */ SlideDirection(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ SlideDirection m1050boximpl(int i) {
            return new SlideDirection(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1051constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1052equalsimpl(int i, Object obj) {
            return (obj instanceof SlideDirection) && i == ((SlideDirection) obj).m1056unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1053equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1054hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1055toStringimpl(int i) {
            if (m1053equalsimpl0(i, Left)) {
                return "Left";
            }
            if (m1053equalsimpl0(i, Right)) {
                return "Right";
            }
            if (m1053equalsimpl0(i, Up)) {
                return "Up";
            }
            if (m1053equalsimpl0(i, Down)) {
                return "Down";
            }
            if (m1053equalsimpl0(i, Start)) {
                return "Start";
            }
            return m1053equalsimpl0(i, End) ? "End" : "Invalid";
        }

        public boolean equals(Object obj) {
            return m1052equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1054hashCodeimpl(this.value);
        }

        public String toString() {
            return m1055toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m1056unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getDown-DKzdypw, reason: not valid java name */
            public final int m1057getDownDKzdypw() {
                return SlideDirection.Down;
            }

            /* JADX INFO: renamed from: getEnd-DKzdypw, reason: not valid java name */
            public final int m1058getEndDKzdypw() {
                return SlideDirection.End;
            }

            /* JADX INFO: renamed from: getLeft-DKzdypw, reason: not valid java name */
            public final int m1059getLeftDKzdypw() {
                return SlideDirection.Left;
            }

            /* JADX INFO: renamed from: getRight-DKzdypw, reason: not valid java name */
            public final int m1060getRightDKzdypw() {
                return SlideDirection.Right;
            }

            /* JADX INFO: renamed from: getStart-DKzdypw, reason: not valid java name */
            public final int m1061getStartDKzdypw() {
                return SlideDirection.Start;
            }

            /* JADX INFO: renamed from: getUp-DKzdypw, reason: not valid java name */
            public final int m1062getUpDKzdypw() {
                return SlideDirection.Up;
            }

            private Companion() {
            }
        }
    }
}
