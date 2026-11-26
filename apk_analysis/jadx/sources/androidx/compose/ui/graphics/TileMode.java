package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TileMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Clamp = m6621constructorimpl(0);
    private static final int Repeated = m6621constructorimpl(1);
    private static final int Mirror = m6621constructorimpl(2);
    private static final int Decal = m6621constructorimpl(3);

    private /* synthetic */ TileMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TileMode m6620boximpl(int i) {
        return new TileMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6621constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6622equalsimpl(int i, Object obj) {
        return (obj instanceof TileMode) && i == ((TileMode) obj).m6626unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6623equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6624hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6625toStringimpl(int i) {
        if (m6623equalsimpl0(i, Clamp)) {
            return "Clamp";
        }
        if (m6623equalsimpl0(i, Repeated)) {
            return "Repeated";
        }
        if (m6623equalsimpl0(i, Mirror)) {
            return "Mirror";
        }
        return m6623equalsimpl0(i, Decal) ? "Decal" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6622equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6624hashCodeimpl(this.value);
    }

    public String toString() {
        return m6625toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6626unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getClamp-3opZhB0, reason: not valid java name */
        public final int m6627getClamp3opZhB0() {
            return TileMode.Clamp;
        }

        /* JADX INFO: renamed from: getDecal-3opZhB0, reason: not valid java name */
        public final int m6628getDecal3opZhB0() {
            return TileMode.Decal;
        }

        /* JADX INFO: renamed from: getMirror-3opZhB0, reason: not valid java name */
        public final int m6629getMirror3opZhB0() {
            return TileMode.Mirror;
        }

        /* JADX INFO: renamed from: getRepeated-3opZhB0, reason: not valid java name */
        public final int m6630getRepeated3opZhB0() {
            return TileMode.Repeated;
        }

        private Companion() {
        }
    }
}
