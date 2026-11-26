package androidx.compose.foundation.interaction;

/* JADX INFO: loaded from: classes.dex */
public interface HoverInteraction extends Interaction {

    public static final class Enter implements HoverInteraction {
        public static final int $stable = 0;
    }

    public static final class Exit implements HoverInteraction {
        public static final int $stable = 0;
        private final Enter enter;

        public Exit(Enter enter) {
            this.enter = enter;
        }

        public final Enter getEnter() {
            return this.enter;
        }
    }
}
