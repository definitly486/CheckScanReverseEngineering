package androidx.compose.ui.text.style;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class LineHeightStyle {
    public static final int $stable = 0;
    public static final Companion Companion;
    private static final LineHeightStyle Default;
    private final float alignment;
    private final int mode;
    private final int trim;

    static {
        jh2 jh2Var = null;
        Companion = new Companion(jh2Var);
        Default = new LineHeightStyle(Alignment.Companion.m8888getProportionalPIaL0Z0(), Trim.Companion.m8909getBothEVpEnUU(), Mode.Companion.m8897getFixedlzQqcRY(), jh2Var);
    }

    private LineHeightStyle(float f, int i) {
        this(f, i, Mode.Companion.m8897getFixedlzQqcRY(), null);
    }

    /* JADX INFO: renamed from: copy-38bxuX8$default, reason: not valid java name */
    public static /* synthetic */ LineHeightStyle m8874copy38bxuX8$default(LineHeightStyle lineHeightStyle, float f, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            f = lineHeightStyle.alignment;
        }
        if ((i3 & 2) != 0) {
            i = lineHeightStyle.trim;
        }
        if ((i3 & 4) != 0) {
            i2 = lineHeightStyle.mode;
        }
        return lineHeightStyle.m8875copy38bxuX8(f, i, i2);
    }

    /* JADX INFO: renamed from: copy-38bxuX8, reason: not valid java name */
    public final LineHeightStyle m8875copy38bxuX8(float f, int i, int i2) {
        return new LineHeightStyle(f, i, i2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineHeightStyle)) {
            return false;
        }
        LineHeightStyle lineHeightStyle = (LineHeightStyle) obj;
        return Alignment.m8882equalsimpl0(this.alignment, lineHeightStyle.alignment) && Trim.m8903equalsimpl0(this.trim, lineHeightStyle.trim) && Mode.m8893equalsimpl0(this.mode, lineHeightStyle.mode);
    }

    /* JADX INFO: renamed from: getAlignment-PIaL0Z0, reason: not valid java name */
    public final float m8876getAlignmentPIaL0Z0() {
        return this.alignment;
    }

    /* JADX INFO: renamed from: getMode-lzQqcRY, reason: not valid java name */
    public final int m8877getModelzQqcRY() {
        return this.mode;
    }

    /* JADX INFO: renamed from: getTrim-EVpEnUU, reason: not valid java name */
    public final int m8878getTrimEVpEnUU() {
        return this.trim;
    }

    public int hashCode() {
        return Mode.m8894hashCodeimpl(this.mode) + ((Trim.m8904hashCodeimpl(this.trim) + (Alignment.m8883hashCodeimpl(this.alignment) * 31)) * 31);
    }

    public String toString() {
        return "LineHeightStyle(alignment=" + ((Object) Alignment.m8884toStringimpl(this.alignment)) + ", trim=" + ((Object) Trim.m8907toStringimpl(this.trim)) + ",mode=" + ((Object) Mode.m8895toStringimpl(this.mode)) + ')';
    }

    public static final class Alignment {
        private final float topRatio;
        public static final Companion Companion = new Companion(null);
        private static final float Top = m8880constructorimpl(0.0f);
        private static final float Center = m8880constructorimpl(0.5f);
        private static final float Proportional = m8880constructorimpl(-1.0f);
        private static final float Bottom = m8880constructorimpl(1.0f);

        private /* synthetic */ Alignment(float f) {
            this.topRatio = f;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Alignment m8879boximpl(float f) {
            return new Alignment(f);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static float m8880constructorimpl(float f) {
            if (!((0.0f <= f && f <= 1.0f) || f == -1.0f)) {
                InlineClassHelperKt.throwIllegalStateException("topRatio should be in [0..1] range or -1");
            }
            return f;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8881equalsimpl(float f, Object obj) {
            return (obj instanceof Alignment) && Float.compare(f, ((Alignment) obj).m8885unboximpl()) == 0;
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8882equalsimpl0(float f, float f2) {
            return Float.compare(f, f2) == 0;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8883hashCodeimpl(float f) {
            return Float.hashCode(f);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8884toStringimpl(float f) {
            if (f == Top) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (f == Center) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (f == Proportional) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (f == Bottom) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + f + ')';
        }

        public boolean equals(Object obj) {
            return m8881equalsimpl(this.topRatio, obj);
        }

        public int hashCode() {
            return m8883hashCodeimpl(this.topRatio);
        }

        public String toString() {
            return m8884toStringimpl(this.topRatio);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ float m8885unboximpl() {
            return this.topRatio;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getBottom-PIaL0Z0, reason: not valid java name */
            public final float m8886getBottomPIaL0Z0() {
                return Alignment.Bottom;
            }

            /* JADX INFO: renamed from: getCenter-PIaL0Z0, reason: not valid java name */
            public final float m8887getCenterPIaL0Z0() {
                return Alignment.Center;
            }

            /* JADX INFO: renamed from: getProportional-PIaL0Z0, reason: not valid java name */
            public final float m8888getProportionalPIaL0Z0() {
                return Alignment.Proportional;
            }

            /* JADX INFO: renamed from: getTop-PIaL0Z0, reason: not valid java name */
            public final float m8889getTopPIaL0Z0() {
                return Alignment.Top;
            }

            private Companion() {
            }
        }
    }

    public static final class Mode {
        public static final Companion Companion = new Companion(null);
        private static final int Fixed = m8891constructorimpl(0);
        private static final int Minimum = m8891constructorimpl(1);
        private static final int Tight = m8891constructorimpl(2);
        private final int value;

        private /* synthetic */ Mode(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Mode m8890boximpl(int i) {
            return new Mode(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m8891constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8892equalsimpl(int i, Object obj) {
            return (obj instanceof Mode) && i == ((Mode) obj).m8896unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8893equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8894hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8895toStringimpl(int i) {
            if (m8893equalsimpl0(i, Fixed)) {
                return "LineHeightStyle.Mode.Fixed";
            }
            if (m8893equalsimpl0(i, Minimum)) {
                return "LineHeightStyle.Mode.Minimum";
            }
            return m8893equalsimpl0(i, Tight) ? "LineHeightStyle.Mode.Tight" : "Invalid";
        }

        public boolean equals(Object obj) {
            return m8892equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m8894hashCodeimpl(this.value);
        }

        public String toString() {
            return m8895toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m8896unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getFixed-lzQqcRY, reason: not valid java name */
            public final int m8897getFixedlzQqcRY() {
                return Mode.Fixed;
            }

            /* JADX INFO: renamed from: getMinimum-lzQqcRY, reason: not valid java name */
            public final int m8898getMinimumlzQqcRY() {
                return Mode.Minimum;
            }

            /* JADX INFO: renamed from: getTight-lzQqcRY, reason: not valid java name */
            public final int m8899getTightlzQqcRY() {
                return Mode.Tight;
            }

            private Companion() {
            }
        }
    }

    public static final class Trim {
        private static final int FlagTrimBottom = 16;
        private static final int FlagTrimTop = 1;
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int FirstLineTop = m8901constructorimpl(1);
        private static final int LastLineBottom = m8901constructorimpl(16);
        private static final int Both = m8901constructorimpl(17);
        private static final int None = m8901constructorimpl(0);

        private /* synthetic */ Trim(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Trim m8900boximpl(int i) {
            return new Trim(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m8901constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8902equalsimpl(int i, Object obj) {
            return (obj instanceof Trim) && i == ((Trim) obj).m8908unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8903equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8904hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: isTrimFirstLineTop-impl$ui_text, reason: not valid java name */
        public static final boolean m8905isTrimFirstLineTopimpl$ui_text(int i) {
            return (i & 1) > 0;
        }

        /* JADX INFO: renamed from: isTrimLastLineBottom-impl$ui_text, reason: not valid java name */
        public static final boolean m8906isTrimLastLineBottomimpl$ui_text(int i) {
            return (i & 16) > 0;
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8907toStringimpl(int i) {
            if (i == FirstLineTop) {
                return "LineHeightStyle.Trim.FirstLineTop";
            }
            if (i == LastLineBottom) {
                return "LineHeightStyle.Trim.LastLineBottom";
            }
            if (i == Both) {
                return "LineHeightStyle.Trim.Both";
            }
            return i == None ? "LineHeightStyle.Trim.None" : "Invalid";
        }

        public boolean equals(Object obj) {
            return m8902equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m8904hashCodeimpl(this.value);
        }

        public String toString() {
            return m8907toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m8908unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getBoth-EVpEnUU, reason: not valid java name */
            public final int m8909getBothEVpEnUU() {
                return Trim.Both;
            }

            /* JADX INFO: renamed from: getFirstLineTop-EVpEnUU, reason: not valid java name */
            public final int m8910getFirstLineTopEVpEnUU() {
                return Trim.FirstLineTop;
            }

            /* JADX INFO: renamed from: getLastLineBottom-EVpEnUU, reason: not valid java name */
            public final int m8911getLastLineBottomEVpEnUU() {
                return Trim.LastLineBottom;
            }

            /* JADX INFO: renamed from: getNone-EVpEnUU, reason: not valid java name */
            public final int m8912getNoneEVpEnUU() {
                return Trim.None;
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final LineHeightStyle getDefault() {
            return LineHeightStyle.Default;
        }

        private Companion() {
        }
    }

    public /* synthetic */ LineHeightStyle(float f, int i, jh2 jh2Var) {
        this(f, i);
    }

    private LineHeightStyle(float f, int i, int i2) {
        this.alignment = f;
        this.trim = i;
        this.mode = i2;
    }

    public /* synthetic */ LineHeightStyle(float f, int i, int i2, jh2 jh2Var) {
        this(f, i, i2);
    }
}
