package androidx.compose.foundation.gestures.snapping;

/* JADX INFO: loaded from: classes.dex */
public interface SnapPosition {

    public static final class Center implements SnapPosition {
        public static final int $stable = 0;
        public static final Center INSTANCE = new Center();

        private Center() {
        }

        @Override // androidx.compose.foundation.gestures.snapping.SnapPosition
        public int position(int i, int i2, int i3, int i4, int i5, int i6) {
            return (((i - i3) - i4) / 2) - (i2 / 2);
        }

        public String toString() {
            return "Center";
        }
    }

    public static final class End implements SnapPosition {
        public static final int $stable = 0;
        public static final End INSTANCE = new End();

        private End() {
        }

        @Override // androidx.compose.foundation.gestures.snapping.SnapPosition
        public int position(int i, int i2, int i3, int i4, int i5, int i6) {
            return ((i - i3) - i4) - i2;
        }

        public String toString() {
            return "End";
        }
    }

    public static final class Start implements SnapPosition {
        public static final int $stable = 0;
        public static final Start INSTANCE = new Start();

        private Start() {
        }

        @Override // androidx.compose.foundation.gestures.snapping.SnapPosition
        public int position(int i, int i2, int i3, int i4, int i5, int i6) {
            return 0;
        }

        public String toString() {
            return "Start";
        }
    }

    int position(int i, int i2, int i3, int i4, int i5, int i6);
}
