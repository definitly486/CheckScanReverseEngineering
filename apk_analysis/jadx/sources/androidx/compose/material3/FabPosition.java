package androidx.compose.material3;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class FabPosition {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Start = m3459constructorimpl(0);
    private static final int Center = m3459constructorimpl(1);
    private static final int End = m3459constructorimpl(2);
    private static final int EndOverlay = m3459constructorimpl(3);

    private /* synthetic */ FabPosition(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FabPosition m3458boximpl(int i) {
        return new FabPosition(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m3459constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3460equalsimpl(int i, Object obj) {
        return (obj instanceof FabPosition) && i == ((FabPosition) obj).m3464unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3461equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3462hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3463toStringimpl(int i) {
        if (m3461equalsimpl0(i, Start)) {
            return "FabPosition.Start";
        }
        if (m3461equalsimpl0(i, Center)) {
            return "FabPosition.Center";
        }
        return m3461equalsimpl0(i, End) ? "FabPosition.End" : "FabPosition.EndOverlay";
    }

    public boolean equals(Object obj) {
        return m3460equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3462hashCodeimpl(this.value);
    }

    public String toString() {
        return m3463toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m3464unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCenter-ERTFSPs, reason: not valid java name */
        public final int m3465getCenterERTFSPs() {
            return FabPosition.Center;
        }

        /* JADX INFO: renamed from: getEnd-ERTFSPs, reason: not valid java name */
        public final int m3466getEndERTFSPs() {
            return FabPosition.End;
        }

        /* JADX INFO: renamed from: getEndOverlay-ERTFSPs, reason: not valid java name */
        public final int m3467getEndOverlayERTFSPs() {
            return FabPosition.EndOverlay;
        }

        /* JADX INFO: renamed from: getStart-ERTFSPs, reason: not valid java name */
        public final int m3468getStartERTFSPs() {
            return FabPosition.Start;
        }

        private Companion() {
        }
    }
}
