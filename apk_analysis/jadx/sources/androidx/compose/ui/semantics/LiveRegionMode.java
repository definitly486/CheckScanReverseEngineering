package androidx.compose.ui.semantics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class LiveRegionMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Polite = m8246constructorimpl(0);
    private static final int Assertive = m8246constructorimpl(1);

    private /* synthetic */ LiveRegionMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ LiveRegionMode m8245boximpl(int i) {
        return new LiveRegionMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m8246constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8247equalsimpl(int i, Object obj) {
        return (obj instanceof LiveRegionMode) && i == ((LiveRegionMode) obj).m8251unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8248equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8249hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8250toStringimpl(int i) {
        if (m8248equalsimpl0(i, Polite)) {
            return "Polite";
        }
        return m8248equalsimpl0(i, Assertive) ? "Assertive" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m8247equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m8249hashCodeimpl(this.value);
    }

    public String toString() {
        return m8250toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8251unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAssertive-0phEisY, reason: not valid java name */
        public final int m8252getAssertive0phEisY() {
            return LiveRegionMode.Assertive;
        }

        /* JADX INFO: renamed from: getPolite-0phEisY, reason: not valid java name */
        public final int m8253getPolite0phEisY() {
            return LiveRegionMode.Polite;
        }

        private Companion() {
        }
    }
}
