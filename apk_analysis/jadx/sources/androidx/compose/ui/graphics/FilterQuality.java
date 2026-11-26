package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class FilterQuality {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int None = m6325constructorimpl(0);
    private static final int Low = m6325constructorimpl(1);
    private static final int Medium = m6325constructorimpl(2);
    private static final int High = m6325constructorimpl(3);

    private /* synthetic */ FilterQuality(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FilterQuality m6324boximpl(int i) {
        return new FilterQuality(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m6325constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6326equalsimpl(int i, Object obj) {
        return (obj instanceof FilterQuality) && i == ((FilterQuality) obj).m6330unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6327equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6328hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6329toStringimpl(int i) {
        if (m6327equalsimpl0(i, None)) {
            return "None";
        }
        if (m6327equalsimpl0(i, Low)) {
            return "Low";
        }
        if (m6327equalsimpl0(i, Medium)) {
            return "Medium";
        }
        return m6327equalsimpl0(i, High) ? "High" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6326equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m6328hashCodeimpl(this.value);
    }

    public String toString() {
        return m6329toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m6330unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getHigh-f-v9h1I, reason: not valid java name */
        public final int m6331getHighfv9h1I() {
            return FilterQuality.High;
        }

        /* JADX INFO: renamed from: getLow-f-v9h1I, reason: not valid java name */
        public final int m6332getLowfv9h1I() {
            return FilterQuality.Low;
        }

        /* JADX INFO: renamed from: getMedium-f-v9h1I, reason: not valid java name */
        public final int m6333getMediumfv9h1I() {
            return FilterQuality.Medium;
        }

        /* JADX INFO: renamed from: getNone-f-v9h1I, reason: not valid java name */
        public final int m6334getNonefv9h1I() {
            return FilterQuality.None;
        }

        private Companion() {
        }
    }
}
