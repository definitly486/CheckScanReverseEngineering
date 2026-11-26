package androidx.compose.ui.text.style;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextOverflow {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Clip = m8966constructorimpl(1);
    private static final int Ellipsis = m8966constructorimpl(2);
    private static final int Visible = m8966constructorimpl(3);
    private static final int StartEllipsis = m8966constructorimpl(4);
    private static final int MiddleEllipsis = m8966constructorimpl(5);

    private /* synthetic */ TextOverflow(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextOverflow m8965boximpl(int i) {
        return new TextOverflow(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8966constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8967equalsimpl(int i, Object obj) {
        return (obj instanceof TextOverflow) && i == ((TextOverflow) obj).m8971unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8968equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8969hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8970toStringimpl(int i) {
        if (m8968equalsimpl0(i, Clip)) {
            return "Clip";
        }
        if (m8968equalsimpl0(i, Ellipsis)) {
            return "Ellipsis";
        }
        if (m8968equalsimpl0(i, MiddleEllipsis)) {
            return "MiddleEllipsis";
        }
        if (m8968equalsimpl0(i, Visible)) {
            return "Visible";
        }
        return m8968equalsimpl0(i, StartEllipsis) ? "StartEllipsis" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m8967equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m8969hashCodeimpl(this.value);
    }

    public String toString() {
        return m8970toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8971unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getClip-gIe3tQ8$annotations, reason: not valid java name */
        public static /* synthetic */ void m8972getClipgIe3tQ8$annotations() {
        }

        /* JADX INFO: renamed from: getEllipsis-gIe3tQ8$annotations, reason: not valid java name */
        public static /* synthetic */ void m8973getEllipsisgIe3tQ8$annotations() {
        }

        /* JADX INFO: renamed from: getMiddleEllipsis-gIe3tQ8$annotations, reason: not valid java name */
        public static /* synthetic */ void m8974getMiddleEllipsisgIe3tQ8$annotations() {
        }

        /* JADX INFO: renamed from: getStartEllipsis-gIe3tQ8$annotations, reason: not valid java name */
        public static /* synthetic */ void m8975getStartEllipsisgIe3tQ8$annotations() {
        }

        /* JADX INFO: renamed from: getVisible-gIe3tQ8$annotations, reason: not valid java name */
        public static /* synthetic */ void m8976getVisiblegIe3tQ8$annotations() {
        }

        /* JADX INFO: renamed from: getClip-gIe3tQ8, reason: not valid java name */
        public final int m8977getClipgIe3tQ8() {
            return TextOverflow.Clip;
        }

        /* JADX INFO: renamed from: getEllipsis-gIe3tQ8, reason: not valid java name */
        public final int m8978getEllipsisgIe3tQ8() {
            return TextOverflow.Ellipsis;
        }

        /* JADX INFO: renamed from: getMiddleEllipsis-gIe3tQ8, reason: not valid java name */
        public final int m8979getMiddleEllipsisgIe3tQ8() {
            return TextOverflow.MiddleEllipsis;
        }

        /* JADX INFO: renamed from: getStartEllipsis-gIe3tQ8, reason: not valid java name */
        public final int m8980getStartEllipsisgIe3tQ8() {
            return TextOverflow.StartEllipsis;
        }

        /* JADX INFO: renamed from: getVisible-gIe3tQ8, reason: not valid java name */
        public final int m8981getVisiblegIe3tQ8() {
            return TextOverflow.Visible;
        }

        private Companion() {
        }
    }
}
