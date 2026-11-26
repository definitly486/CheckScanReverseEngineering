package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class LongPressResult {
    public static final int $stable = 0;

    public static final class Canceled extends LongPressResult {
        public static final int $stable = 0;
        public static final Canceled INSTANCE = new Canceled();

        private Canceled() {
            super(null);
        }
    }

    public static final class Released extends LongPressResult {
        public static final int $stable = 0;
        private final PointerInputChange finalUpChange;

        public Released(PointerInputChange pointerInputChange) {
            super(null);
            this.finalUpChange = pointerInputChange;
        }

        public final PointerInputChange getFinalUpChange() {
            return this.finalUpChange;
        }
    }

    public static final class Success extends LongPressResult {
        public static final int $stable = 0;
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }
    }

    public /* synthetic */ LongPressResult(jh2 jh2Var) {
        this();
    }

    private LongPressResult() {
    }
}
