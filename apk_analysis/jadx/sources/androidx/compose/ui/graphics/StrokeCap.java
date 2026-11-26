package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class StrokeCap {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Butt = m6600constructorimpl(0);
    private static final int Round = m6600constructorimpl(1);
    private static final int Square = m6600constructorimpl(2);

    private /* synthetic */ StrokeCap(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StrokeCap m6599boximpl(int i) {
        return new StrokeCap(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6600constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6601equalsimpl(int i, Object obj) {
        return (obj instanceof StrokeCap) && i == ((StrokeCap) obj).m6605unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6602equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6603hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6604toStringimpl(int i) {
        if (m6602equalsimpl0(i, Butt)) {
            return "Butt";
        }
        if (m6602equalsimpl0(i, Round)) {
            return "Round";
        }
        return m6602equalsimpl0(i, Square) ? "Square" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6601equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6603hashCodeimpl(this.value);
    }

    public String toString() {
        return m6604toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6605unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getButt-KaPHkGw, reason: not valid java name */
        public final int m6606getButtKaPHkGw() {
            return StrokeCap.Butt;
        }

        /* JADX INFO: renamed from: getRound-KaPHkGw, reason: not valid java name */
        public final int m6607getRoundKaPHkGw() {
            return StrokeCap.Round;
        }

        /* JADX INFO: renamed from: getSquare-KaPHkGw, reason: not valid java name */
        public final int m6608getSquareKaPHkGw() {
            return StrokeCap.Square;
        }

        private Companion() {
        }
    }
}
