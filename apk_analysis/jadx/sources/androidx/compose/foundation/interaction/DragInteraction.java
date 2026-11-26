package androidx.compose.foundation.interaction;

/* JADX INFO: loaded from: classes.dex */
public interface DragInteraction extends Interaction {

    public static final class Cancel implements DragInteraction {
        public static final int $stable = 0;
        private final Start start;

        public Cancel(Start start) {
            this.start = start;
        }

        public final Start getStart() {
            return this.start;
        }
    }

    public static final class Start implements DragInteraction {
        public static final int $stable = 0;
    }

    public static final class Stop implements DragInteraction {
        public static final int $stable = 0;
        private final Start start;

        public Stop(Start start) {
            this.start = start;
        }

        public final Start getStart() {
            return this.start;
        }
    }
}
