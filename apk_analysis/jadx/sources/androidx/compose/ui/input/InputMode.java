package androidx.compose.ui.input;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class InputMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Touch = m7036constructorimpl(1);
    private static final int Keyboard = m7036constructorimpl(2);

    private /* synthetic */ InputMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ InputMode m7035boximpl(int i) {
        return new InputMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7036constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7037equalsimpl(int i, Object obj) {
        return (obj instanceof InputMode) && i == ((InputMode) obj).m7041unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7038equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7039hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7040toStringimpl(int i) {
        if (m7038equalsimpl0(i, Touch)) {
            return "Touch";
        }
        return m7038equalsimpl0(i, Keyboard) ? "Keyboard" : "Error";
    }

    public boolean equals(Object obj) {
        return m7037equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m7039hashCodeimpl(this.value);
    }

    public String toString() {
        return m7040toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7041unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getKeyboard-aOaMEAU, reason: not valid java name */
        public final int m7042getKeyboardaOaMEAU() {
            return InputMode.Keyboard;
        }

        /* JADX INFO: renamed from: getTouch-aOaMEAU, reason: not valid java name */
        public final int m7043getTouchaOaMEAU() {
            return InputMode.Touch;
        }

        private Companion() {
        }
    }
}
