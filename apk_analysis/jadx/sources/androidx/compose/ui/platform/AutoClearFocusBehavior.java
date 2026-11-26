package androidx.compose.ui.platform;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class AutoClearFocusBehavior {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int None = m8153constructorimpl(0);
    private static final int CursorBased = m8153constructorimpl(1);

    private /* synthetic */ AutoClearFocusBehavior(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AutoClearFocusBehavior m8152boximpl(int i) {
        return new AutoClearFocusBehavior(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m8153constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8154equalsimpl(int i, Object obj) {
        return (obj instanceof AutoClearFocusBehavior) && i == ((AutoClearFocusBehavior) obj).m8158unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8155equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8156hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8157toStringimpl(int i) {
        return qz0.d("AutoClearFocusBehavior(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m8154equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m8156hashCodeimpl(this.value);
    }

    public String toString() {
        return m8157toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8158unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCursorBased-4UtRPd4, reason: not valid java name */
        public final int m8159getCursorBased4UtRPd4() {
            return AutoClearFocusBehavior.CursorBased;
        }

        /* JADX INFO: renamed from: getDefault-4UtRPd4, reason: not valid java name */
        public final int m8160getDefault4UtRPd4() {
            return m8159getCursorBased4UtRPd4();
        }

        /* JADX INFO: renamed from: getNone-4UtRPd4, reason: not valid java name */
        public final int m8161getNone4UtRPd4() {
            return AutoClearFocusBehavior.None;
        }

        private Companion() {
        }
    }
}
