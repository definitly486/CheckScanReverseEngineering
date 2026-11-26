package androidx.compose.ui.text.style;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class LineBreak {
    public static final Companion Companion = new Companion(null);
    private static final int Heading;
    private static final int Paragraph;
    private static final int Simple;
    private static final int Unspecified;
    private final int mask;

    static {
        Strategy.Companion companion = Strategy.Companion;
        int iM8848getSimplefcGXIks = companion.m8848getSimplefcGXIks();
        Strictness.Companion companion2 = Strictness.Companion;
        int iM8859getNormalusljTpc = companion2.m8859getNormalusljTpc();
        WordBreak.Companion companion3 = WordBreak.Companion;
        Simple = m8819constructorimpl(LineBreak_androidKt.packBytes(iM8848getSimplefcGXIks, iM8859getNormalusljTpc, companion3.m8869getDefaultjp8hJ3c()));
        Heading = m8819constructorimpl(LineBreak_androidKt.packBytes(companion.m8846getBalancedfcGXIks(), companion2.m8858getLooseusljTpc(), companion3.m8870getPhrasejp8hJ3c()));
        Paragraph = m8819constructorimpl(LineBreak_androidKt.packBytes(companion.m8847getHighQualityfcGXIks(), companion2.m8860getStrictusljTpc(), companion3.m8869getDefaultjp8hJ3c()));
        Unspecified = m8819constructorimpl(0);
    }

    private /* synthetic */ LineBreak(int i) {
        this.mask = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ LineBreak m8818boximpl(int i) {
        return new LineBreak(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8820constructorimpl(int i, int i2, int i3) {
        return m8819constructorimpl(LineBreak_androidKt.packBytes(i, i2, i3));
    }

    /* JADX INFO: renamed from: copy-gijOMQM, reason: not valid java name */
    public static final int m8821copygijOMQM(int i, int i2, int i3, int i4) {
        return m8820constructorimpl(i2, i3, i4);
    }

    /* JADX INFO: renamed from: copy-gijOMQM$default, reason: not valid java name */
    public static /* synthetic */ int m8822copygijOMQM$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = m8825getStrategyfcGXIks(i);
        }
        if ((i5 & 2) != 0) {
            i3 = m8826getStrictnessusljTpc(i);
        }
        if ((i5 & 4) != 0) {
            i4 = m8827getWordBreakjp8hJ3c(i);
        }
        return m8821copygijOMQM(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8823equalsimpl(int i, Object obj) {
        return (obj instanceof LineBreak) && i == ((LineBreak) obj).m8830unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8824equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: getStrategy-fcGXIks, reason: not valid java name */
    public static final int m8825getStrategyfcGXIks(int i) {
        return Strategy.m8840constructorimpl(LineBreak_androidKt.unpackByte1(i));
    }

    /* JADX INFO: renamed from: getStrictness-usljTpc, reason: not valid java name */
    public static final int m8826getStrictnessusljTpc(int i) {
        return Strictness.m8851constructorimpl(LineBreak_androidKt.unpackByte2(i));
    }

    /* JADX INFO: renamed from: getWordBreak-jp8hJ3c, reason: not valid java name */
    public static final int m8827getWordBreakjp8hJ3c(int i) {
        return WordBreak.m8863constructorimpl(LineBreak_androidKt.unpackByte3(i));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8828hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8829toStringimpl(int i) {
        return "LineBreak(strategy=" + ((Object) Strategy.m8844toStringimpl(m8825getStrategyfcGXIks(i))) + ", strictness=" + ((Object) Strictness.m8855toStringimpl(m8826getStrictnessusljTpc(i))) + ", wordBreak=" + ((Object) WordBreak.m8867toStringimpl(m8827getWordBreakjp8hJ3c(i))) + ')';
    }

    public boolean equals(Object obj) {
        return m8823equalsimpl(this.mask, obj);
    }

    public int hashCode() {
        return m8828hashCodeimpl(this.mask);
    }

    public String toString() {
        return m8829toStringimpl(this.mask);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8830unboximpl() {
        return this.mask;
    }

    public static final class Strategy {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int Simple = m8840constructorimpl(1);
        private static final int HighQuality = m8840constructorimpl(2);
        private static final int Balanced = m8840constructorimpl(3);
        private static final int Unspecified = m8840constructorimpl(0);

        private /* synthetic */ Strategy(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Strategy m8839boximpl(int i) {
            return new Strategy(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m8840constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8841equalsimpl(int i, Object obj) {
            return (obj instanceof Strategy) && i == ((Strategy) obj).m8845unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8842equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8843hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8844toStringimpl(int i) {
            if (m8842equalsimpl0(i, Simple)) {
                return "Strategy.Simple";
            }
            if (m8842equalsimpl0(i, HighQuality)) {
                return "Strategy.HighQuality";
            }
            if (m8842equalsimpl0(i, Balanced)) {
                return "Strategy.Balanced";
            }
            return m8842equalsimpl0(i, Unspecified) ? "Strategy.Unspecified" : "Invalid";
        }

        public boolean equals(Object obj) {
            return m8841equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m8843hashCodeimpl(this.value);
        }

        public String toString() {
            return m8844toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m8845unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getBalanced-fcGXIks, reason: not valid java name */
            public final int m8846getBalancedfcGXIks() {
                return Strategy.Balanced;
            }

            /* JADX INFO: renamed from: getHighQuality-fcGXIks, reason: not valid java name */
            public final int m8847getHighQualityfcGXIks() {
                return Strategy.HighQuality;
            }

            /* JADX INFO: renamed from: getSimple-fcGXIks, reason: not valid java name */
            public final int m8848getSimplefcGXIks() {
                return Strategy.Simple;
            }

            /* JADX INFO: renamed from: getUnspecified-fcGXIks, reason: not valid java name */
            public final int m8849getUnspecifiedfcGXIks() {
                return Strategy.Unspecified;
            }

            private Companion() {
            }
        }
    }

    public static final class Strictness {
        public static final Companion Companion = new Companion(null);
        private static final int Default = m8851constructorimpl(1);
        private static final int Loose = m8851constructorimpl(2);
        private static final int Normal = m8851constructorimpl(3);
        private static final int Strict = m8851constructorimpl(4);
        private static final int Unspecified = m8851constructorimpl(0);
        private final int value;

        private /* synthetic */ Strictness(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Strictness m8850boximpl(int i) {
            return new Strictness(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m8851constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8852equalsimpl(int i, Object obj) {
            return (obj instanceof Strictness) && i == ((Strictness) obj).m8856unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8853equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8854hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8855toStringimpl(int i) {
            if (m8853equalsimpl0(i, Default)) {
                return "Strictness.None";
            }
            if (m8853equalsimpl0(i, Loose)) {
                return "Strictness.Loose";
            }
            if (m8853equalsimpl0(i, Normal)) {
                return "Strictness.Normal";
            }
            if (m8853equalsimpl0(i, Strict)) {
                return "Strictness.Strict";
            }
            return m8853equalsimpl0(i, Unspecified) ? "Strictness.Unspecified" : "Invalid";
        }

        public boolean equals(Object obj) {
            return m8852equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m8854hashCodeimpl(this.value);
        }

        public String toString() {
            return m8855toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m8856unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getDefault-usljTpc, reason: not valid java name */
            public final int m8857getDefaultusljTpc() {
                return Strictness.Default;
            }

            /* JADX INFO: renamed from: getLoose-usljTpc, reason: not valid java name */
            public final int m8858getLooseusljTpc() {
                return Strictness.Loose;
            }

            /* JADX INFO: renamed from: getNormal-usljTpc, reason: not valid java name */
            public final int m8859getNormalusljTpc() {
                return Strictness.Normal;
            }

            /* JADX INFO: renamed from: getStrict-usljTpc, reason: not valid java name */
            public final int m8860getStrictusljTpc() {
                return Strictness.Strict;
            }

            /* JADX INFO: renamed from: getUnspecified-usljTpc, reason: not valid java name */
            public final int m8861getUnspecifiedusljTpc() {
                return Strictness.Unspecified;
            }

            private Companion() {
            }
        }
    }

    public static final class WordBreak {
        public static final Companion Companion = new Companion(null);
        private static final int Default = m8863constructorimpl(1);
        private static final int Phrase = m8863constructorimpl(2);
        private static final int Unspecified = m8863constructorimpl(0);
        private final int value;

        private /* synthetic */ WordBreak(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ WordBreak m8862boximpl(int i) {
            return new WordBreak(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m8863constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m8864equalsimpl(int i, Object obj) {
            return (obj instanceof WordBreak) && i == ((WordBreak) obj).m8868unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m8865equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m8866hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m8867toStringimpl(int i) {
            if (m8865equalsimpl0(i, Default)) {
                return "WordBreak.None";
            }
            if (m8865equalsimpl0(i, Phrase)) {
                return "WordBreak.Phrase";
            }
            return m8865equalsimpl0(i, Unspecified) ? "WordBreak.Unspecified" : "Invalid";
        }

        public boolean equals(Object obj) {
            return m8864equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m8866hashCodeimpl(this.value);
        }

        public String toString() {
            return m8867toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m8868unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getDefault-jp8hJ3c, reason: not valid java name */
            public final int m8869getDefaultjp8hJ3c() {
                return WordBreak.Default;
            }

            /* JADX INFO: renamed from: getPhrase-jp8hJ3c, reason: not valid java name */
            public final int m8870getPhrasejp8hJ3c() {
                return WordBreak.Phrase;
            }

            /* JADX INFO: renamed from: getUnspecified-jp8hJ3c, reason: not valid java name */
            public final int m8871getUnspecifiedjp8hJ3c() {
                return WordBreak.Unspecified;
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getHeading-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m8831getHeadingrAG3T2k$annotations() {
        }

        /* JADX INFO: renamed from: getParagraph-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m8832getParagraphrAG3T2k$annotations() {
        }

        /* JADX INFO: renamed from: getSimple-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m8833getSimplerAG3T2k$annotations() {
        }

        /* JADX INFO: renamed from: getUnspecified-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m8834getUnspecifiedrAG3T2k$annotations() {
        }

        /* JADX INFO: renamed from: getHeading-rAG3T2k, reason: not valid java name */
        public final int m8835getHeadingrAG3T2k() {
            return LineBreak.Heading;
        }

        /* JADX INFO: renamed from: getParagraph-rAG3T2k, reason: not valid java name */
        public final int m8836getParagraphrAG3T2k() {
            return LineBreak.Paragraph;
        }

        /* JADX INFO: renamed from: getSimple-rAG3T2k, reason: not valid java name */
        public final int m8837getSimplerAG3T2k() {
            return LineBreak.Simple;
        }

        /* JADX INFO: renamed from: getUnspecified-rAG3T2k, reason: not valid java name */
        public final int m8838getUnspecifiedrAG3T2k() {
            return LineBreak.Unspecified;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8819constructorimpl(int i) {
        return i;
    }
}
