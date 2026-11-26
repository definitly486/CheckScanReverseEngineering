package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class Lock3ABehavior {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int IMMEDIATE = m491constructorimpl(1);
    private static final int AFTER_CURRENT_SCAN = m491constructorimpl(2);
    private static final int AFTER_NEW_SCAN = m491constructorimpl(3);

    private /* synthetic */ Lock3ABehavior(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Lock3ABehavior m490boximpl(int i) {
        return new Lock3ABehavior(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m491constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m492equalsimpl(int i, Object obj) {
        return (obj instanceof Lock3ABehavior) && i == ((Lock3ABehavior) obj).m496unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m493equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m494hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m495toStringimpl(int i) {
        return qz0.d("Lock3ABehavior(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m492equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m494hashCodeimpl(this.value);
    }

    public String toString() {
        return m495toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m496unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAFTER_CURRENT_SCAN-hRqSH3k, reason: not valid java name */
        public final int m497getAFTER_CURRENT_SCANhRqSH3k() {
            return Lock3ABehavior.AFTER_CURRENT_SCAN;
        }

        /* JADX INFO: renamed from: getAFTER_NEW_SCAN-hRqSH3k, reason: not valid java name */
        public final int m498getAFTER_NEW_SCANhRqSH3k() {
            return Lock3ABehavior.AFTER_NEW_SCAN;
        }

        /* JADX INFO: renamed from: getIMMEDIATE-hRqSH3k, reason: not valid java name */
        public final int m499getIMMEDIATEhRqSH3k() {
            return Lock3ABehavior.IMMEDIATE;
        }

        private Companion() {
        }
    }
}
