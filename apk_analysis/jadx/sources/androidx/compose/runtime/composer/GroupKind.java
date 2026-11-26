package androidx.compose.runtime.composer;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class GroupKind {
    public static final Companion Companion = new Companion(null);
    private static final int Group = m5416constructorimpl(0);
    private static final int Node = m5416constructorimpl(1);
    private static final int ReusableNode = m5416constructorimpl(2);
    private final int value;

    private /* synthetic */ GroupKind(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ GroupKind m5415boximpl(int i) {
        return new GroupKind(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m5416constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5417equalsimpl(int i, Object obj) {
        return (obj instanceof GroupKind) && i == ((GroupKind) obj).m5423unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5418equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5419hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isNode-impl, reason: not valid java name */
    public static final boolean m5420isNodeimpl(int i) {
        return i != Companion.m5424getGroup9udXigM();
    }

    /* JADX INFO: renamed from: isReusable-impl, reason: not valid java name */
    public static final boolean m5421isReusableimpl(int i) {
        return i != Companion.m5425getNode9udXigM();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5422toStringimpl(int i) {
        return qz0.d("GroupKind(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m5417equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m5419hashCodeimpl(this.value);
    }

    public String toString() {
        return m5422toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m5423unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getGroup-9udXigM, reason: not valid java name */
        public final int m5424getGroup9udXigM() {
            return GroupKind.Group;
        }

        /* JADX INFO: renamed from: getNode-9udXigM, reason: not valid java name */
        public final int m5425getNode9udXigM() {
            return GroupKind.Node;
        }

        /* JADX INFO: renamed from: getReusableNode-9udXigM, reason: not valid java name */
        public final int m5426getReusableNode9udXigM() {
            return GroupKind.ReusableNode;
        }

        private Companion() {
        }
    }
}
