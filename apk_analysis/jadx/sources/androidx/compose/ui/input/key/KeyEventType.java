package androidx.compose.ui.input.key;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyEventType {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m7392constructorimpl(0);
    private static final int KeyUp = m7392constructorimpl(1);
    private static final int KeyDown = m7392constructorimpl(2);

    private /* synthetic */ KeyEventType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ KeyEventType m7391boximpl(int i) {
        return new KeyEventType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7392constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7393equalsimpl(int i, Object obj) {
        return (obj instanceof KeyEventType) && i == ((KeyEventType) obj).m7397unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7394equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7395hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7396toStringimpl(int i) {
        if (m7394equalsimpl0(i, KeyUp)) {
            return "KeyUp";
        }
        if (m7394equalsimpl0(i, KeyDown)) {
            return "KeyDown";
        }
        return m7394equalsimpl0(i, Unknown) ? "Unknown" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m7393equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m7395hashCodeimpl(this.value);
    }

    public String toString() {
        return m7396toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7397unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getKeyDown-CS__XNY, reason: not valid java name */
        public final int m7398getKeyDownCS__XNY() {
            return KeyEventType.KeyDown;
        }

        /* JADX INFO: renamed from: getKeyUp-CS__XNY, reason: not valid java name */
        public final int m7399getKeyUpCS__XNY() {
            return KeyEventType.KeyUp;
        }

        /* JADX INFO: renamed from: getUnknown-CS__XNY, reason: not valid java name */
        public final int m7400getUnknownCS__XNY() {
            return KeyEventType.Unknown;
        }

        private Companion() {
        }
    }
}
