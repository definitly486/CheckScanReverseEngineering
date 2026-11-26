package androidx.compose.ui.text.style;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextDirection {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Ltr = m8931constructorimpl(1);
    private static final int Rtl = m8931constructorimpl(2);
    private static final int Content = m8931constructorimpl(3);
    private static final int ContentOrLtr = m8931constructorimpl(4);
    private static final int ContentOrRtl = m8931constructorimpl(5);
    private static final int Unspecified = m8931constructorimpl(0);

    private /* synthetic */ TextDirection(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextDirection m8930boximpl(int i) {
        return new TextDirection(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8931constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8932equalsimpl(int i, Object obj) {
        return (obj instanceof TextDirection) && i == ((TextDirection) obj).m8936unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8933equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8934hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8935toStringimpl(int i) {
        if (m8933equalsimpl0(i, Ltr)) {
            return "Ltr";
        }
        if (m8933equalsimpl0(i, Rtl)) {
            return "Rtl";
        }
        if (m8933equalsimpl0(i, Content)) {
            return "Content";
        }
        if (m8933equalsimpl0(i, ContentOrLtr)) {
            return "ContentOrLtr";
        }
        if (m8933equalsimpl0(i, ContentOrRtl)) {
            return "ContentOrRtl";
        }
        return m8933equalsimpl0(i, Unspecified) ? "Unspecified" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m8932equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m8934hashCodeimpl(this.value);
    }

    public String toString() {
        return m8935toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8936unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getContent-s_7X-co, reason: not valid java name */
        public final int m8937getContents_7Xco() {
            return TextDirection.Content;
        }

        /* JADX INFO: renamed from: getContentOrLtr-s_7X-co, reason: not valid java name */
        public final int m8938getContentOrLtrs_7Xco() {
            return TextDirection.ContentOrLtr;
        }

        /* JADX INFO: renamed from: getContentOrRtl-s_7X-co, reason: not valid java name */
        public final int m8939getContentOrRtls_7Xco() {
            return TextDirection.ContentOrRtl;
        }

        /* JADX INFO: renamed from: getLtr-s_7X-co, reason: not valid java name */
        public final int m8940getLtrs_7Xco() {
            return TextDirection.Ltr;
        }

        /* JADX INFO: renamed from: getRtl-s_7X-co, reason: not valid java name */
        public final int m8941getRtls_7Xco() {
            return TextDirection.Rtl;
        }

        /* JADX INFO: renamed from: getUnspecified-s_7X-co, reason: not valid java name */
        public final int m8942getUnspecifieds_7Xco() {
            return TextDirection.Unspecified;
        }

        /* JADX INFO: renamed from: valueOf-E8nx0Ws, reason: not valid java name */
        public final int m8943valueOfE8nx0Ws(int i) {
            boolean z = false;
            if (i >= 0 && i < 6) {
                z = true;
            }
            if (!z) {
                InlineClassHelperKt.throwIllegalArgumentException("The given value=" + i + " is not recognized by TextDirection.");
            }
            return TextDirection.m8931constructorimpl(i);
        }

        private Companion() {
        }
    }
}
