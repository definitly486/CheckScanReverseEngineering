package androidx.compose.ui.focus;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusDirection {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Next = m5860constructorimpl(1);
    private static final int Previous = m5860constructorimpl(2);
    private static final int Left = m5860constructorimpl(3);
    private static final int Right = m5860constructorimpl(4);
    private static final int Up = m5860constructorimpl(5);
    private static final int Down = m5860constructorimpl(6);
    private static final int Enter = m5860constructorimpl(7);
    private static final int Exit = m5860constructorimpl(8);

    private /* synthetic */ FocusDirection(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FocusDirection m5859boximpl(int i) {
        return new FocusDirection(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m5860constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5861equalsimpl(int i, Object obj) {
        return (obj instanceof FocusDirection) && i == ((FocusDirection) obj).m5865unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5862equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5863hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5864toStringimpl(int i) {
        if (m5862equalsimpl0(i, Next)) {
            return "Next";
        }
        if (m5862equalsimpl0(i, Previous)) {
            return "Previous";
        }
        if (m5862equalsimpl0(i, Left)) {
            return "Left";
        }
        if (m5862equalsimpl0(i, Right)) {
            return "Right";
        }
        if (m5862equalsimpl0(i, Up)) {
            return "Up";
        }
        if (m5862equalsimpl0(i, Down)) {
            return "Down";
        }
        if (m5862equalsimpl0(i, Enter)) {
            return "Enter";
        }
        return m5862equalsimpl0(i, Exit) ? "Exit" : "Invalid FocusDirection";
    }

    public boolean equals(Object obj) {
        return m5861equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5863hashCodeimpl(this.value);
    }

    public String toString() {
        return m5864toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m5865unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getDown-dhqQ-8s, reason: not valid java name */
        public final int m5866getDowndhqQ8s() {
            return FocusDirection.Down;
        }

        /* JADX INFO: renamed from: getEnter-dhqQ-8s, reason: not valid java name */
        public final int m5867getEnterdhqQ8s() {
            return FocusDirection.Enter;
        }

        /* JADX INFO: renamed from: getExit-dhqQ-8s, reason: not valid java name */
        public final int m5868getExitdhqQ8s() {
            return FocusDirection.Exit;
        }

        /* JADX INFO: renamed from: getLeft-dhqQ-8s, reason: not valid java name */
        public final int m5869getLeftdhqQ8s() {
            return FocusDirection.Left;
        }

        /* JADX INFO: renamed from: getNext-dhqQ-8s, reason: not valid java name */
        public final int m5870getNextdhqQ8s() {
            return FocusDirection.Next;
        }

        /* JADX INFO: renamed from: getPrevious-dhqQ-8s, reason: not valid java name */
        public final int m5871getPreviousdhqQ8s() {
            return FocusDirection.Previous;
        }

        /* JADX INFO: renamed from: getRight-dhqQ-8s, reason: not valid java name */
        public final int m5872getRightdhqQ8s() {
            return FocusDirection.Right;
        }

        /* JADX INFO: renamed from: getUp-dhqQ-8s, reason: not valid java name */
        public final int m5873getUpdhqQ8s() {
            return FocusDirection.Up;
        }

        private Companion() {
        }
    }
}
