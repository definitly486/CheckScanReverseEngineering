package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class OutputStatus {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int PENDING = m511constructorimpl(0);
    private static final int AVAILABLE = m511constructorimpl(1);
    private static final int UNAVAILABLE = m511constructorimpl(2);
    private static final int ERROR_OUTPUT_FAILED = m511constructorimpl(10);
    private static final int ERROR_OUTPUT_ABORTED = m511constructorimpl(11);
    private static final int ERROR_OUTPUT_MISSING = m511constructorimpl(12);
    private static final int ERROR_OUTPUT_DROPPED = m511constructorimpl(13);

    private /* synthetic */ OutputStatus(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OutputStatus m510boximpl(int i) {
        return new OutputStatus(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m511constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m512equalsimpl(int i, Object obj) {
        return (obj instanceof OutputStatus) && i == ((OutputStatus) obj).m516unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m513equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m514hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m515toStringimpl(int i) {
        if (i == 0) {
            return "PENDING";
        }
        if (i == 1) {
            return "AVAILABLE";
        }
        if (i == 2) {
            return "UNAVAILABLE";
        }
        switch (i) {
            case 10:
                return "ERROR_OUTPUT_FAILED";
            case 11:
                return "ERROR_OUTPUT_ABORTED";
            case 12:
                return "ERROR_OUTPUT_MISSING";
            case 13:
                return "ERROR_OUTPUT_DROPPED";
            default:
                return qz0.d("OutputStatus(value=", i, ')');
        }
    }

    public boolean equals(Object obj) {
        return m512equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m514hashCodeimpl(this.value);
    }

    public String toString() {
        return m515toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m516unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAVAILABLE-U7r42EA, reason: not valid java name */
        public final int m517getAVAILABLEU7r42EA() {
            return OutputStatus.AVAILABLE;
        }

        /* JADX INFO: renamed from: getERROR_OUTPUT_ABORTED-U7r42EA, reason: not valid java name */
        public final int m518getERROR_OUTPUT_ABORTEDU7r42EA() {
            return OutputStatus.ERROR_OUTPUT_ABORTED;
        }

        /* JADX INFO: renamed from: getERROR_OUTPUT_DROPPED-U7r42EA, reason: not valid java name */
        public final int m519getERROR_OUTPUT_DROPPEDU7r42EA() {
            return OutputStatus.ERROR_OUTPUT_DROPPED;
        }

        /* JADX INFO: renamed from: getERROR_OUTPUT_FAILED-U7r42EA, reason: not valid java name */
        public final int m520getERROR_OUTPUT_FAILEDU7r42EA() {
            return OutputStatus.ERROR_OUTPUT_FAILED;
        }

        /* JADX INFO: renamed from: getERROR_OUTPUT_MISSING-U7r42EA, reason: not valid java name */
        public final int m521getERROR_OUTPUT_MISSINGU7r42EA() {
            return OutputStatus.ERROR_OUTPUT_MISSING;
        }

        /* JADX INFO: renamed from: getPENDING-U7r42EA, reason: not valid java name */
        public final int m522getPENDINGU7r42EA() {
            return OutputStatus.PENDING;
        }

        /* JADX INFO: renamed from: getUNAVAILABLE-U7r42EA, reason: not valid java name */
        public final int m523getUNAVAILABLEU7r42EA() {
            return OutputStatus.UNAVAILABLE;
        }

        private Companion() {
        }
    }
}
