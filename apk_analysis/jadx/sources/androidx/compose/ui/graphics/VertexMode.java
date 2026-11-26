package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class VertexMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Triangles = m6648constructorimpl(0);
    private static final int TriangleStrip = m6648constructorimpl(1);
    private static final int TriangleFan = m6648constructorimpl(2);

    private /* synthetic */ VertexMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ VertexMode m6647boximpl(int i) {
        return new VertexMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6648constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6649equalsimpl(int i, Object obj) {
        return (obj instanceof VertexMode) && i == ((VertexMode) obj).m6653unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6650equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6651hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6652toStringimpl(int i) {
        if (m6650equalsimpl0(i, Triangles)) {
            return "Triangles";
        }
        if (m6650equalsimpl0(i, TriangleStrip)) {
            return "TriangleStrip";
        }
        return m6650equalsimpl0(i, TriangleFan) ? "TriangleFan" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6649equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m6651hashCodeimpl(this.value);
    }

    public String toString() {
        return m6652toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6653unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getTriangleFan-c2xauaI, reason: not valid java name */
        public final int m6654getTriangleFanc2xauaI() {
            return VertexMode.TriangleFan;
        }

        /* JADX INFO: renamed from: getTriangleStrip-c2xauaI, reason: not valid java name */
        public final int m6655getTriangleStripc2xauaI() {
            return VertexMode.TriangleStrip;
        }

        /* JADX INFO: renamed from: getTriangles-c2xauaI, reason: not valid java name */
        public final int m6656getTrianglesc2xauaI() {
            return VertexMode.Triangles;
        }

        private Companion() {
        }
    }
}
