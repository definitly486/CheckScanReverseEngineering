package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationItemIconPosition {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Top = m3676constructorimpl(0);
    private static final int Start = m3676constructorimpl(1);

    private /* synthetic */ NavigationItemIconPosition(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ NavigationItemIconPosition m3675boximpl(int i) {
        return new NavigationItemIconPosition(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m3676constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3677equalsimpl(int i, Object obj) {
        return (obj instanceof NavigationItemIconPosition) && i == ((NavigationItemIconPosition) obj).m3681unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3678equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3679hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3680toStringimpl(int i) {
        if (m3678equalsimpl0(i, Top)) {
            return "Top";
        }
        return m3678equalsimpl0(i, Start) ? "Start" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m3677equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3679hashCodeimpl(this.value);
    }

    public String toString() {
        return m3680toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m3681unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getStart--xw1Ddg, reason: not valid java name */
        public final int m3682getStartxw1Ddg() {
            return NavigationItemIconPosition.Start;
        }

        /* JADX INFO: renamed from: getTop--xw1Ddg, reason: not valid java name */
        public final int m3683getTopxw1Ddg() {
            return NavigationItemIconPosition.Top;
        }

        private Companion() {
        }
    }
}
