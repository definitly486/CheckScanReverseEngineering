package androidx.compose.ui.input.nestedscroll;

import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedScrollSource {
    public static final Companion Companion = new Companion(null);
    private static final int Drag;
    private static final int Fling;
    private static final int Relocate;
    private static final int SideEffect;
    private static final int UserInput;
    private static final int Wheel;
    private final int value;

    static {
        int iM7424constructorimpl = m7424constructorimpl(1);
        UserInput = iM7424constructorimpl;
        int iM7424constructorimpl2 = m7424constructorimpl(2);
        SideEffect = iM7424constructorimpl2;
        Drag = iM7424constructorimpl;
        Fling = iM7424constructorimpl2;
        Relocate = m7424constructorimpl(3);
        Wheel = iM7424constructorimpl;
    }

    private /* synthetic */ NestedScrollSource(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ NestedScrollSource m7423boximpl(int i) {
        return new NestedScrollSource(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7424constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7425equalsimpl(int i, Object obj) {
        return (obj instanceof NestedScrollSource) && i == ((NestedScrollSource) obj).m7429unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7426equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7427hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7428toStringimpl(int i) {
        if (m7426equalsimpl0(i, UserInput)) {
            return "UserInput";
        }
        if (m7426equalsimpl0(i, SideEffect)) {
            return "SideEffect";
        }
        return m7426equalsimpl0(i, Relocate) ? "Relocate" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m7425equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m7427hashCodeimpl(this.value);
    }

    public String toString() {
        return m7428toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7429unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @ul2
        /* JADX INFO: renamed from: getDrag-WNlRxjI$annotations, reason: not valid java name */
        public static /* synthetic */ void m7430getDragWNlRxjI$annotations() {
        }

        @ul2
        /* JADX INFO: renamed from: getFling-WNlRxjI$annotations, reason: not valid java name */
        public static /* synthetic */ void m7431getFlingWNlRxjI$annotations() {
        }

        @ul2
        /* JADX INFO: renamed from: getRelocate-WNlRxjI$annotations, reason: not valid java name */
        public static /* synthetic */ void m7432getRelocateWNlRxjI$annotations() {
        }

        @ul2
        /* JADX INFO: renamed from: getWheel-WNlRxjI$annotations, reason: not valid java name */
        public static /* synthetic */ void m7433getWheelWNlRxjI$annotations() {
        }

        /* JADX INFO: renamed from: getDrag-WNlRxjI, reason: not valid java name */
        public final int m7434getDragWNlRxjI() {
            return NestedScrollSource.Drag;
        }

        /* JADX INFO: renamed from: getFling-WNlRxjI, reason: not valid java name */
        public final int m7435getFlingWNlRxjI() {
            return NestedScrollSource.Fling;
        }

        /* JADX INFO: renamed from: getRelocate-WNlRxjI, reason: not valid java name */
        public final int m7436getRelocateWNlRxjI() {
            return NestedScrollSource.Relocate;
        }

        /* JADX INFO: renamed from: getSideEffect-WNlRxjI, reason: not valid java name */
        public final int m7437getSideEffectWNlRxjI() {
            return NestedScrollSource.SideEffect;
        }

        /* JADX INFO: renamed from: getUserInput-WNlRxjI, reason: not valid java name */
        public final int m7438getUserInputWNlRxjI() {
            return NestedScrollSource.UserInput;
        }

        /* JADX INFO: renamed from: getWheel-WNlRxjI, reason: not valid java name */
        public final int m7439getWheelWNlRxjI() {
            return NestedScrollSource.Wheel;
        }

        private Companion() {
        }
    }
}
