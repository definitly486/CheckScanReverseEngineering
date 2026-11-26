package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.interaction.Interaction;

/* JADX INFO: loaded from: classes.dex */
public interface DragAndDropHoverInteraction extends Interaction {

    public static final class Enter implements DragAndDropHoverInteraction {
        public static final int $stable = 0;
    }

    public static final class Exit implements DragAndDropHoverInteraction {
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
