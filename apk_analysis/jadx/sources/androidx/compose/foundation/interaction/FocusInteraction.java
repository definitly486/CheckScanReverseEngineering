package androidx.compose.foundation.interaction;

/* JADX INFO: loaded from: classes.dex */
public interface FocusInteraction extends Interaction {

    public static final class Focus implements FocusInteraction {
        public static final int $stable = 0;
    }

    public static final class Unfocus implements FocusInteraction {
        public static final int $stable = 0;
        private final Focus focus;

        public Unfocus(Focus focus) {
            this.focus = focus;
        }

        public final Focus getFocus() {
            return this.focus;
        }
    }
}
