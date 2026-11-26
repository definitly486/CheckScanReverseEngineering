package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class PointMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Points = m6545constructorimpl(0);
    private static final int Lines = m6545constructorimpl(1);
    private static final int Polygon = m6545constructorimpl(2);

    private /* synthetic */ PointMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PointMode m6544boximpl(int i) {
        return new PointMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6545constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6546equalsimpl(int i, Object obj) {
        return (obj instanceof PointMode) && i == ((PointMode) obj).m6550unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6547equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6548hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6549toStringimpl(int i) {
        if (m6547equalsimpl0(i, Points)) {
            return "Points";
        }
        if (m6547equalsimpl0(i, Lines)) {
            return "Lines";
        }
        return m6547equalsimpl0(i, Polygon) ? "Polygon" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6546equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6548hashCodeimpl(this.value);
    }

    public String toString() {
        return m6549toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6550unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getLines-r_lszbg, reason: not valid java name */
        public final int m6551getLinesr_lszbg() {
            return PointMode.Lines;
        }

        /* JADX INFO: renamed from: getPoints-r_lszbg, reason: not valid java name */
        public final int m6552getPointsr_lszbg() {
            return PointMode.Points;
        }

        /* JADX INFO: renamed from: getPolygon-r_lszbg, reason: not valid java name */
        public final int m6553getPolygonr_lszbg() {
            return PointMode.Polygon;
        }

        private Companion() {
        }
    }
}
