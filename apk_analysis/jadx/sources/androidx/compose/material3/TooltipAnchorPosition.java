package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TooltipAnchorPosition {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Above = m4245constructorimpl(1);
    private static final int Below = m4245constructorimpl(2);
    private static final int Left = m4245constructorimpl(3);
    private static final int Right = m4245constructorimpl(4);
    private static final int Start = m4245constructorimpl(5);
    private static final int End = m4245constructorimpl(6);

    private /* synthetic */ TooltipAnchorPosition(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TooltipAnchorPosition m4244boximpl(int i) {
        return new TooltipAnchorPosition(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m4245constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4246equalsimpl(int i, Object obj) {
        return (obj instanceof TooltipAnchorPosition) && i == ((TooltipAnchorPosition) obj).m4250unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4247equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4248hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4249toStringimpl(int i) {
        if (m4247equalsimpl0(i, Above)) {
            return "Above";
        }
        if (m4247equalsimpl0(i, Below)) {
            return "Below";
        }
        if (m4247equalsimpl0(i, Left)) {
            return "Left";
        }
        if (m4247equalsimpl0(i, Right)) {
            return "Right";
        }
        if (m4247equalsimpl0(i, Start)) {
            return "Start";
        }
        return m4247equalsimpl0(i, End) ? "End" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m4246equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4248hashCodeimpl(this.value);
    }

    public String toString() {
        return m4249toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m4250unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAbove-lOKsHw4, reason: not valid java name */
        public final int m4251getAbovelOKsHw4() {
            return TooltipAnchorPosition.Above;
        }

        /* JADX INFO: renamed from: getBelow-lOKsHw4, reason: not valid java name */
        public final int m4252getBelowlOKsHw4() {
            return TooltipAnchorPosition.Below;
        }

        /* JADX INFO: renamed from: getEnd-lOKsHw4, reason: not valid java name */
        public final int m4253getEndlOKsHw4() {
            return TooltipAnchorPosition.End;
        }

        /* JADX INFO: renamed from: getLeft-lOKsHw4, reason: not valid java name */
        public final int m4254getLeftlOKsHw4() {
            return TooltipAnchorPosition.Left;
        }

        /* JADX INFO: renamed from: getRight-lOKsHw4, reason: not valid java name */
        public final int m4255getRightlOKsHw4() {
            return TooltipAnchorPosition.Right;
        }

        /* JADX INFO: renamed from: getStart-lOKsHw4, reason: not valid java name */
        public final int m4256getStartlOKsHw4() {
            return TooltipAnchorPosition.Start;
        }

        private Companion() {
        }
    }
}
