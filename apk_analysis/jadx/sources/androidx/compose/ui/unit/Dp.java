package androidx.compose.ui.unit;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class Dp implements Comparable<Dp> {
    public static final Companion Companion = new Companion(null);
    private static final float Hairline = m9042constructorimpl(0.0f);
    private static final float Infinity = m9042constructorimpl(Float.POSITIVE_INFINITY);
    private static final float Unspecified = m9042constructorimpl(Float.NaN);
    private final float value;

    private /* synthetic */ Dp(float f) {
        this.value = f;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Dp m9040boximpl(float f) {
        return new Dp(f);
    }

    /* JADX INFO: renamed from: compareTo-0680j_4, reason: not valid java name */
    public static int m9041compareTo0680j_4(float f, float f2) {
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return 0;
        }
        return Float.compare(f, f2);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static float m9042constructorimpl(float f) {
        return f;
    }

    /* JADX INFO: renamed from: div-0680j_4, reason: not valid java name */
    public static final float m9043div0680j_4(float f, float f2) {
        return f / f2;
    }

    /* JADX INFO: renamed from: div-u2uoSUM, reason: not valid java name */
    public static final float m9045divu2uoSUM(float f, int i) {
        return m9042constructorimpl(f / i);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9046equalsimpl(float f, Object obj) {
        return (obj instanceof Dp) && Float.compare(f, ((Dp) obj).m9056unboximpl()) == 0;
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9047equalsimpl0(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9048hashCodeimpl(float f) {
        return Float.hashCode(f);
    }

    /* JADX INFO: renamed from: minus-5rwHm24, reason: not valid java name */
    public static final float m9049minus5rwHm24(float f, float f2) {
        return m9042constructorimpl(f - f2);
    }

    /* JADX INFO: renamed from: plus-5rwHm24, reason: not valid java name */
    public static final float m9050plus5rwHm24(float f, float f2) {
        return m9042constructorimpl(f + f2);
    }

    /* JADX INFO: renamed from: times-u2uoSUM, reason: not valid java name */
    public static final float m9052timesu2uoSUM(float f, int i) {
        return m9042constructorimpl(f * i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9053toStringimpl(float f) {
        if (Float.isNaN(f)) {
            return "Dp.Unspecified";
        }
        return f + ".dp";
    }

    /* JADX INFO: renamed from: unaryMinus-D9Ej5fM, reason: not valid java name */
    public static final float m9054unaryMinusD9Ej5fM(float f) {
        return m9042constructorimpl(-f);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Dp dp) {
        return m9055compareTo0680j_4(dp.m9056unboximpl());
    }

    public boolean equals(Object obj) {
        return m9046equalsimpl(this.value, obj);
    }

    public final float getValue() {
        return this.value;
    }

    public int hashCode() {
        return m9048hashCodeimpl(this.value);
    }

    public String toString() {
        return m9053toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float m9056unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getHairline-D9Ej5fM$annotations, reason: not valid java name */
        public static /* synthetic */ void m9057getHairlineD9Ej5fM$annotations() {
        }

        /* JADX INFO: renamed from: getInfinity-D9Ej5fM$annotations, reason: not valid java name */
        public static /* synthetic */ void m9058getInfinityD9Ej5fM$annotations() {
        }

        /* JADX INFO: renamed from: getUnspecified-D9Ej5fM$annotations, reason: not valid java name */
        public static /* synthetic */ void m9059getUnspecifiedD9Ej5fM$annotations() {
        }

        /* JADX INFO: renamed from: getHairline-D9Ej5fM, reason: not valid java name */
        public final float m9060getHairlineD9Ej5fM() {
            return Dp.Hairline;
        }

        /* JADX INFO: renamed from: getInfinity-D9Ej5fM, reason: not valid java name */
        public final float m9061getInfinityD9Ej5fM() {
            return Dp.Infinity;
        }

        /* JADX INFO: renamed from: getUnspecified-D9Ej5fM, reason: not valid java name */
        public final float m9062getUnspecifiedD9Ej5fM() {
            return Dp.Unspecified;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: div-u2uoSUM, reason: not valid java name */
    public static final float m9044divu2uoSUM(float f, float f2) {
        return m9042constructorimpl(f / f2);
    }

    /* JADX INFO: renamed from: times-u2uoSUM, reason: not valid java name */
    public static final float m9051timesu2uoSUM(float f, float f2) {
        return m9042constructorimpl(f * f2);
    }

    /* JADX INFO: renamed from: compareTo-0680j_4, reason: not valid java name */
    public int m9055compareTo0680j_4(float f) {
        return m9041compareTo0680j_4(this.value, f);
    }
}
