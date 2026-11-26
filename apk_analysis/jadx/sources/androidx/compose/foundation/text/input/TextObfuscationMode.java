package androidx.compose.foundation.text.input;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class TextObfuscationMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Visible = m2681constructorimpl(0);
    private static final int RevealLastTyped = m2681constructorimpl(1);
    private static final int Hidden = m2681constructorimpl(2);

    private /* synthetic */ TextObfuscationMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextObfuscationMode m2680boximpl(int i) {
        return new TextObfuscationMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m2681constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2682equalsimpl(int i, Object obj) {
        return (obj instanceof TextObfuscationMode) && i == ((TextObfuscationMode) obj).m2686unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2683equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2684hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2685toStringimpl(int i) {
        return qz0.d("TextObfuscationMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2682equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m2684hashCodeimpl(this.value);
    }

    public String toString() {
        return m2685toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2686unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getHidden-vTwcZD0, reason: not valid java name */
        public final int m2687getHiddenvTwcZD0() {
            return TextObfuscationMode.Hidden;
        }

        /* JADX INFO: renamed from: getRevealLastTyped-vTwcZD0, reason: not valid java name */
        public final int m2688getRevealLastTypedvTwcZD0() {
            return TextObfuscationMode.RevealLastTyped;
        }

        /* JADX INFO: renamed from: getVisible-vTwcZD0, reason: not valid java name */
        public final int m2689getVisiblevTwcZD0() {
            return TextObfuscationMode.Visible;
        }

        private Companion() {
        }
    }
}
