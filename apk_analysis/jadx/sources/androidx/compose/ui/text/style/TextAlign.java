package androidx.compose.ui.text.style;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TextAlign {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Left = m8914constructorimpl(1);
    private static final int Right = m8914constructorimpl(2);
    private static final int Center = m8914constructorimpl(3);
    private static final int Justify = m8914constructorimpl(4);
    private static final int Start = m8914constructorimpl(5);
    private static final int End = m8914constructorimpl(6);
    private static final int Unspecified = m8914constructorimpl(0);

    private /* synthetic */ TextAlign(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextAlign m8913boximpl(int i) {
        return new TextAlign(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8914constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8915equalsimpl(int i, Object obj) {
        return (obj instanceof TextAlign) && i == ((TextAlign) obj).m8919unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8916equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8917hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8918toStringimpl(int i) {
        if (m8916equalsimpl0(i, Left)) {
            return "Left";
        }
        if (m8916equalsimpl0(i, Right)) {
            return "Right";
        }
        if (m8916equalsimpl0(i, Center)) {
            return "Center";
        }
        if (m8916equalsimpl0(i, Justify)) {
            return "Justify";
        }
        if (m8916equalsimpl0(i, Start)) {
            return "Start";
        }
        if (m8916equalsimpl0(i, End)) {
            return "End";
        }
        return m8916equalsimpl0(i, Unspecified) ? "Unspecified" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m8915equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m8917hashCodeimpl(this.value);
    }

    public String toString() {
        return m8918toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8919unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCenter-e0LSkKk, reason: not valid java name */
        public final int m8920getCentere0LSkKk() {
            return TextAlign.Center;
        }

        /* JADX INFO: renamed from: getEnd-e0LSkKk, reason: not valid java name */
        public final int m8921getEnde0LSkKk() {
            return TextAlign.End;
        }

        /* JADX INFO: renamed from: getJustify-e0LSkKk, reason: not valid java name */
        public final int m8922getJustifye0LSkKk() {
            return TextAlign.Justify;
        }

        /* JADX INFO: renamed from: getLeft-e0LSkKk, reason: not valid java name */
        public final int m8923getLefte0LSkKk() {
            return TextAlign.Left;
        }

        /* JADX INFO: renamed from: getRight-e0LSkKk, reason: not valid java name */
        public final int m8924getRighte0LSkKk() {
            return TextAlign.Right;
        }

        /* JADX INFO: renamed from: getStart-e0LSkKk, reason: not valid java name */
        public final int m8925getStarte0LSkKk() {
            return TextAlign.Start;
        }

        /* JADX INFO: renamed from: getUnspecified-e0LSkKk, reason: not valid java name */
        public final int m8926getUnspecifiede0LSkKk() {
            return TextAlign.Unspecified;
        }

        /* JADX INFO: renamed from: valueOf-IgVj0fw, reason: not valid java name */
        public final int m8927valueOfIgVj0fw(int i) {
            boolean z = false;
            if (i >= 0 && i < 7) {
                z = true;
            }
            if (!z) {
                InlineClassHelperKt.throwIllegalArgumentException("The given value=" + i + " is not recognized by TextAlign.");
            }
            return TextAlign.m8914constructorimpl(i);
        }

        public final List<TextAlign> values() {
            return u96.i(TextAlign.m8913boximpl(m8923getLefte0LSkKk()), TextAlign.m8913boximpl(m8924getRighte0LSkKk()), TextAlign.m8913boximpl(m8920getCentere0LSkKk()), TextAlign.m8913boximpl(m8922getJustifye0LSkKk()), TextAlign.m8913boximpl(m8925getStarte0LSkKk()), TextAlign.m8913boximpl(m8921getEnde0LSkKk()));
        }

        private Companion() {
        }
    }
}
