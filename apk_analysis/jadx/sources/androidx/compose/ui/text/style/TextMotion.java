package androidx.compose.ui.text.style;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextMotion {
    public static final int $stable = 0;
    private static final TextMotion Animated;
    public static final Companion Companion;
    private static final TextMotion Static;
    private final int linearity;
    private final boolean subpixelTextPositioning;

    static {
        jh2 jh2Var = null;
        Companion = new Companion(jh2Var);
        Linearity.Companion companion = Linearity.Companion;
        Static = new TextMotion(companion.m8962getFontHinting4e0Vf04(), false, jh2Var);
        Animated = new TextMotion(companion.m8963getLinear4e0Vf04(), true, jh2Var);
    }

    private TextMotion(int i, boolean z) {
        this.linearity = i;
        this.subpixelTextPositioning = z;
    }

    /* JADX INFO: renamed from: copy-JdDtMQo$ui_text$default, reason: not valid java name */
    public static /* synthetic */ TextMotion m8952copyJdDtMQo$ui_text$default(TextMotion textMotion, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = textMotion.linearity;
        }
        if ((i2 & 2) != 0) {
            z = textMotion.subpixelTextPositioning;
        }
        return textMotion.m8953copyJdDtMQo$ui_text(i, z);
    }

    /* JADX INFO: renamed from: copy-JdDtMQo$ui_text, reason: not valid java name */
    public final TextMotion m8953copyJdDtMQo$ui_text(int i, boolean z) {
        return new TextMotion(i, z, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextMotion)) {
            return false;
        }
        TextMotion textMotion = (TextMotion) obj;
        return Linearity.m8958equalsimpl0(this.linearity, textMotion.linearity) && this.subpixelTextPositioning == textMotion.subpixelTextPositioning;
    }

    /* JADX INFO: renamed from: getLinearity-4e0Vf04$ui_text, reason: not valid java name */
    public final int m8954getLinearity4e0Vf04$ui_text() {
        return this.linearity;
    }

    public final boolean getSubpixelTextPositioning$ui_text() {
        return this.subpixelTextPositioning;
    }

    public int hashCode() {
        return Boolean.hashCode(this.subpixelTextPositioning) + (Linearity.m8959hashCodeimpl(this.linearity) * 31);
    }

    public String toString() {
        if (equals(Static)) {
            return "TextMotion.Static";
        }
        return equals(Animated) ? "TextMotion.Animated" : "Invalid";
    }

    public static final class Linearity {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int Linear = m8956constructorimpl(1);
        private static final int FontHinting = m8956constructorimpl(2);
        private static final int None = m8956constructorimpl(3);

        private /* synthetic */ Linearity(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Linearity m8955boximpl(int i) {
            return new Linearity(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m8956constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8957equalsimpl(int i, Object obj) {
            return (obj instanceof Linearity) && i == ((Linearity) obj).m8961unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8958equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8959hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8960toStringimpl(int i) {
            if (m8958equalsimpl0(i, Linear)) {
                return "Linearity.Linear";
            }
            if (m8958equalsimpl0(i, FontHinting)) {
                return "Linearity.FontHinting";
            }
            return m8958equalsimpl0(i, None) ? "Linearity.None" : "Invalid";
        }

        public boolean equals(Object obj) {
            return m8957equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m8959hashCodeimpl(this.value);
        }

        public String toString() {
            return m8960toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m8961unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getFontHinting-4e0Vf04, reason: not valid java name */
            public final int m8962getFontHinting4e0Vf04() {
                return Linearity.FontHinting;
            }

            /* JADX INFO: renamed from: getLinear-4e0Vf04, reason: not valid java name */
            public final int m8963getLinear4e0Vf04() {
                return Linearity.Linear;
            }

            /* JADX INFO: renamed from: getNone-4e0Vf04, reason: not valid java name */
            public final int m8964getNone4e0Vf04() {
                return Linearity.None;
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final TextMotion getAnimated() {
            return TextMotion.Animated;
        }

        public final TextMotion getStatic() {
            return TextMotion.Static;
        }

        private Companion() {
        }
    }

    public /* synthetic */ TextMotion(int i, boolean z, jh2 jh2Var) {
        this(i, z);
    }
}
