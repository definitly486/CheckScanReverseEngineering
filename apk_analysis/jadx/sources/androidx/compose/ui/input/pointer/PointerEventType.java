package androidx.compose.ui.input.pointer;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerEventType {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m7507constructorimpl(0);
    private static final int Press = m7507constructorimpl(1);
    private static final int Release = m7507constructorimpl(2);
    private static final int Move = m7507constructorimpl(3);
    private static final int Enter = m7507constructorimpl(4);
    private static final int Exit = m7507constructorimpl(5);
    private static final int Scroll = m7507constructorimpl(6);
    private static final int ScaleStart = m7507constructorimpl(7);
    private static final int ScaleChange = m7507constructorimpl(8);
    private static final int ScaleEnd = m7507constructorimpl(9);
    private static final int PanStart = m7507constructorimpl(10);
    private static final int PanMove = m7507constructorimpl(11);
    private static final int PanEnd = m7507constructorimpl(12);

    private /* synthetic */ PointerEventType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PointerEventType m7506boximpl(int i) {
        return new PointerEventType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m7507constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7508equalsimpl(int i, Object obj) {
        return (obj instanceof PointerEventType) && i == ((PointerEventType) obj).m7512unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7509equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7510hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7511toStringimpl(int i) {
        if (m7509equalsimpl0(i, Press)) {
            return "Press";
        }
        if (m7509equalsimpl0(i, Release)) {
            return "Release";
        }
        if (m7509equalsimpl0(i, Move)) {
            return "Move";
        }
        if (m7509equalsimpl0(i, Enter)) {
            return "Enter";
        }
        if (m7509equalsimpl0(i, Exit)) {
            return "Exit";
        }
        if (m7509equalsimpl0(i, Scroll)) {
            return "Scroll";
        }
        if (m7509equalsimpl0(i, ScaleStart)) {
            return "ScaleStart";
        }
        if (m7509equalsimpl0(i, ScaleChange)) {
            return "ScaleChange";
        }
        if (m7509equalsimpl0(i, ScaleEnd)) {
            return "ScaleFinish";
        }
        if (m7509equalsimpl0(i, PanStart)) {
            return "PanStart";
        }
        if (m7509equalsimpl0(i, PanMove)) {
            return "Pan";
        }
        return m7509equalsimpl0(i, PanEnd) ? "PanEnd" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m7508equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m7510hashCodeimpl(this.value);
    }

    public String toString() {
        return m7511toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7512unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getEnter-7fucELk, reason: not valid java name */
        public final int m7513getEnter7fucELk() {
            return PointerEventType.Enter;
        }

        /* JADX INFO: renamed from: getExit-7fucELk, reason: not valid java name */
        public final int m7514getExit7fucELk() {
            return PointerEventType.Exit;
        }

        /* JADX INFO: renamed from: getMove-7fucELk, reason: not valid java name */
        public final int m7515getMove7fucELk() {
            return PointerEventType.Move;
        }

        /* JADX INFO: renamed from: getPanEnd-7fucELk, reason: not valid java name */
        public final int m7516getPanEnd7fucELk() {
            return PointerEventType.PanEnd;
        }

        /* JADX INFO: renamed from: getPanMove-7fucELk, reason: not valid java name */
        public final int m7517getPanMove7fucELk() {
            return PointerEventType.PanMove;
        }

        /* JADX INFO: renamed from: getPanStart-7fucELk, reason: not valid java name */
        public final int m7518getPanStart7fucELk() {
            return PointerEventType.PanStart;
        }

        /* JADX INFO: renamed from: getPress-7fucELk, reason: not valid java name */
        public final int m7519getPress7fucELk() {
            return PointerEventType.Press;
        }

        /* JADX INFO: renamed from: getRelease-7fucELk, reason: not valid java name */
        public final int m7520getRelease7fucELk() {
            return PointerEventType.Release;
        }

        /* JADX INFO: renamed from: getScaleChange-7fucELk, reason: not valid java name */
        public final int m7521getScaleChange7fucELk() {
            return PointerEventType.ScaleChange;
        }

        /* JADX INFO: renamed from: getScaleEnd-7fucELk, reason: not valid java name */
        public final int m7522getScaleEnd7fucELk() {
            return PointerEventType.ScaleEnd;
        }

        /* JADX INFO: renamed from: getScaleStart-7fucELk, reason: not valid java name */
        public final int m7523getScaleStart7fucELk() {
            return PointerEventType.ScaleStart;
        }

        /* JADX INFO: renamed from: getScroll-7fucELk, reason: not valid java name */
        public final int m7524getScroll7fucELk() {
            return PointerEventType.Scroll;
        }

        /* JADX INFO: renamed from: getUnknown-7fucELk, reason: not valid java name */
        public final int m7525getUnknown7fucELk() {
            return PointerEventType.Unknown;
        }

        private Companion() {
        }
    }
}
