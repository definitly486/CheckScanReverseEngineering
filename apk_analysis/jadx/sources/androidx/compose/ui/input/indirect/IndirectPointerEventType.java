package androidx.compose.ui.input.indirect;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class IndirectPointerEventType {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m7063constructorimpl(0);
    private static final int Press = m7063constructorimpl(1);
    private static final int Release = m7063constructorimpl(2);
    private static final int Move = m7063constructorimpl(3);

    private /* synthetic */ IndirectPointerEventType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IndirectPointerEventType m7062boximpl(int i) {
        return new IndirectPointerEventType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m7063constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7064equalsimpl(int i, Object obj) {
        return (obj instanceof IndirectPointerEventType) && i == ((IndirectPointerEventType) obj).m7068unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7065equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7066hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7067toStringimpl(int i) {
        if (m7065equalsimpl0(i, Press)) {
            return "Press";
        }
        if (m7065equalsimpl0(i, Release)) {
            return "Release";
        }
        return m7065equalsimpl0(i, Move) ? "Move" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m7064equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m7066hashCodeimpl(this.value);
    }

    public String toString() {
        return m7067toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7068unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getMove-4ZHQPSE, reason: not valid java name */
        public final int m7069getMove4ZHQPSE() {
            return IndirectPointerEventType.Move;
        }

        /* JADX INFO: renamed from: getPress-4ZHQPSE, reason: not valid java name */
        public final int m7070getPress4ZHQPSE() {
            return IndirectPointerEventType.Press;
        }

        /* JADX INFO: renamed from: getRelease-4ZHQPSE, reason: not valid java name */
        public final int m7071getRelease4ZHQPSE() {
            return IndirectPointerEventType.Release;
        }

        /* JADX INFO: renamed from: getUnknown-4ZHQPSE, reason: not valid java name */
        public final int m7072getUnknown4ZHQPSE() {
            return IndirectPointerEventType.Unknown;
        }

        private Companion() {
        }
    }
}
