package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class StrokeJoin {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Miter = m6610constructorimpl(0);
    private static final int Round = m6610constructorimpl(1);
    private static final int Bevel = m6610constructorimpl(2);

    private /* synthetic */ StrokeJoin(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StrokeJoin m6609boximpl(int i) {
        return new StrokeJoin(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6610constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6611equalsimpl(int i, Object obj) {
        return (obj instanceof StrokeJoin) && i == ((StrokeJoin) obj).m6615unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6612equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6613hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6614toStringimpl(int i) {
        if (m6612equalsimpl0(i, Miter)) {
            return "Miter";
        }
        if (m6612equalsimpl0(i, Round)) {
            return "Round";
        }
        return m6612equalsimpl0(i, Bevel) ? "Bevel" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6611equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6613hashCodeimpl(this.value);
    }

    public String toString() {
        return m6614toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6615unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getBevel-LxFBmk8, reason: not valid java name */
        public final int m6616getBevelLxFBmk8() {
            return StrokeJoin.Bevel;
        }

        /* JADX INFO: renamed from: getMiter-LxFBmk8, reason: not valid java name */
        public final int m6617getMiterLxFBmk8() {
            return StrokeJoin.Miter;
        }

        /* JADX INFO: renamed from: getRound-LxFBmk8, reason: not valid java name */
        public final int m6618getRoundLxFBmk8() {
            return StrokeJoin.Round;
        }

        private Companion() {
        }
    }
}
