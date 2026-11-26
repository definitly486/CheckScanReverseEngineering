package androidx.compose.ui.unit;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextUnitType {
    private final long type;
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = m9262constructorimpl(0);
    private static final long Sp = m9262constructorimpl(4294967296L);
    private static final long Em = m9262constructorimpl(8589934592L);

    private /* synthetic */ TextUnitType(long j) {
        this.type = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextUnitType m9261boximpl(long j) {
        return new TextUnitType(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m9262constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9263equalsimpl(long j, Object obj) {
        return (obj instanceof TextUnitType) && j == ((TextUnitType) obj).m9267unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9264equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9265hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9266toStringimpl(long j) {
        if (m9264equalsimpl0(j, Unspecified)) {
            return "Unspecified";
        }
        if (m9264equalsimpl0(j, Sp)) {
            return "Sp";
        }
        return m9264equalsimpl0(j, Em) ? "Em" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m9263equalsimpl(this.type, obj);
    }

    public int hashCode() {
        return m9265hashCodeimpl(this.type);
    }

    public String toString() {
        return m9266toStringimpl(this.type);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m9267unboximpl() {
        return this.type;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getEm-UIouoOA, reason: not valid java name */
        public final long m9268getEmUIouoOA() {
            return TextUnitType.Em;
        }

        /* JADX INFO: renamed from: getSp-UIouoOA, reason: not valid java name */
        public final long m9269getSpUIouoOA() {
            return TextUnitType.Sp;
        }

        /* JADX INFO: renamed from: getUnspecified-UIouoOA, reason: not valid java name */
        public final long m9270getUnspecifiedUIouoOA() {
            return TextUnitType.Unspecified;
        }

        private Companion() {
        }
    }
}
