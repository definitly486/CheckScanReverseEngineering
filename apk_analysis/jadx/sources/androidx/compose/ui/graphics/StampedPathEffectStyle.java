package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class StampedPathEffectStyle {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Translate = m6590constructorimpl(0);
    private static final int Rotate = m6590constructorimpl(1);
    private static final int Morph = m6590constructorimpl(2);

    private /* synthetic */ StampedPathEffectStyle(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StampedPathEffectStyle m6589boximpl(int i) {
        return new StampedPathEffectStyle(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6590constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6591equalsimpl(int i, Object obj) {
        return (obj instanceof StampedPathEffectStyle) && i == ((StampedPathEffectStyle) obj).m6595unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6592equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6593hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6594toStringimpl(int i) {
        if (m6592equalsimpl0(i, Translate)) {
            return "Translate";
        }
        if (m6592equalsimpl0(i, Rotate)) {
            return "Rotate";
        }
        return m6592equalsimpl0(i, Morph) ? "Morph" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6591equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6593hashCodeimpl(this.value);
    }

    public String toString() {
        return m6594toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6595unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getMorph-Ypspkwk, reason: not valid java name */
        public final int m6596getMorphYpspkwk() {
            return StampedPathEffectStyle.Morph;
        }

        /* JADX INFO: renamed from: getRotate-Ypspkwk, reason: not valid java name */
        public final int m6597getRotateYpspkwk() {
            return StampedPathEffectStyle.Rotate;
        }

        /* JADX INFO: renamed from: getTranslate-Ypspkwk, reason: not valid java name */
        public final int m6598getTranslateYpspkwk() {
            return StampedPathEffectStyle.Translate;
        }

        private Companion() {
        }
    }
}
