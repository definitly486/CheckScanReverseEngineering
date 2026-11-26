package androidx.compose.foundation.interaction;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public interface PressInteraction extends Interaction {

    public static final class Cancel implements PressInteraction {
        public static final int $stable = 0;
        private final Press press;

        public Cancel(Press press) {
            this.press = press;
        }

        public final Press getPress() {
            return this.press;
        }
    }

    public static final class Release implements PressInteraction {
        public static final int $stable = 0;
        private final Press press;

        public Release(Press press) {
            this.press = press;
        }

        public final Press getPress() {
            return this.press;
        }
    }

    public static final class Press implements PressInteraction {
        public static final int $stable = 0;
        private final long pressPosition;

        private Press(long j) {
            this.pressPosition = j;
        }

        /* JADX INFO: renamed from: getPressPosition-F1C5BW0, reason: not valid java name */
        public final long m1681getPressPositionF1C5BW0() {
            return this.pressPosition;
        }

        public /* synthetic */ Press(long j, jh2 jh2Var) {
            this(j);
        }
    }
}
